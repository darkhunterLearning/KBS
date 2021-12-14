from django.shortcuts import render
# from .utils import load_object
from .forms import AudioForm, HomeForm
import librosa
from .utils import *
import pickle
from django.core.files.storage import default_storage
from django.db import connection
from .models import *
from django.template.defaultfilters import linebreaks

def home(request):
    return render(request, 'music_search/home.html')


# def music(request):
#     return render(request, 'music_search/music.html')

def Audio_store(request):
    form = AudioForm()
    if request.method == 'POST':
        form = AudioForm(request.POST, request.FILES)
        if form.is_valid():
            audio = request.FILES['record']
            name = request.FILES['record'].name
            file_name = default_storage.save('songs/' + audio.name, audio)
            data = "media/songs/{}".format(name)
            my_nazash = load_object()
            # D:\Data-Mining\musichsearch\music_search\Nazash_24_48_1000.pkl
            test_sample, test_sr = librosa.load(data)

            results = my_nazash.query(test_sample, test_sr)
            sorted_song_by_results = sorted(results, key=results.get, reverse=True)
            searched_song = []
            idx = 1
            for r in sorted_song_by_results:
                searched_song.append("{} | {}".format(idx, r.replace("songs/train\\",'').replace(".m4a", '')))
                idx += 1
                if idx == 6:
                    break

            link_song = "D:/audio1.wav"

            form.save()
            return render(request, 'music_search/demo.html', context={'searched_song':searched_song, 'audio':audio, 'link_song':link_song})
        else:
            form = AudioForm()
    return render(request, 'music_search/music.html', {'form' : form})

def demo(request):
    return render(request, 'music_search/kbs.html')
#     cursor = connection.cursor()
#     cursor.execute("select name from lesson")
#     result = cursor.fetchall()
#     return render(request, 'music_search/result.html', context={'data':result})

def kbs(request):
    query_dict = request.GET
    test_dict = request.POST.get("chap")
    demo_dict = request.POST.get("les")
    name_dict = request.POST.get("les_detail")
    query = preprocess_input(query_dict.get("q"))
    cursor = connection.cursor()

    print(query_dict.get(""))
    print(test_dict) #debug
    print(demo_dict) #debug
    print(name_dict) #debug
    print(query)

    flag = -1
    if test_dict != None:
        query_code = f"select l.Name\
                       from chapter c, lesson l\
                       where c.ID = l.ID_chapter and\
                             c.ID =  '{str(test_dict)}'"
        flag = 1
        if demo_dict != None:
            flag = 2
            query_code = f"select ld.Name\
                       from chapter c, lesson l, lesson_detail ld\
                       where c.ID = l.ID_chapter and ld.ID_lesson = l.ID and\
                             c.ID =  '{str(test_dict)}' and\
                             l.ID_chapter = '{str(demo_dict)}'"

            if name_dict != None:
                flag=3
                query_code = f"select c.Name, l.Name, ld.Name, ld.Content\
                       from chapter c, lesson l, lesson_detail ld\
                       where c.ID = l.ID_chapter and\
                             l.ID = ld.ID_lesson and\
                             l.ID_chapter = '{str(demo_dict)}' and\
                             c.ID =  '{str(test_dict)}' and\
                             ld.Name = '{str(name_dict)}'"

    else:
        flag=0
        query_code = f"select c.Name, l.Name, ld.Name, ld.Content\
                       from chapter c, lesson l, lesson_detail ld\
                       where c.ID = l.ID_chapter and\
                       l.ID = ld.ID_lesson and\
                       ld.Content LIKE '%{str(query)}%'"

    # query_code = f"select c.Name, l.Name, ld.Name, ld.Content from chapter c, lesson l, lesson_detail ld where c.ID = l.ID_chapter and l.ID = ld.ID_lesson and l.ID_chapter = '{str(demo_dict)}' and c.ID =  '{str(test_dict)}' and ld.Name = '{str(name_dict)}'"
    # query_code = f"select c.Name, l.Name, ld.Name, ld.Content from chapter c, lesson l, lesson_detail ld where c.ID = l.ID_chapter and l.ID = ld.ID_lesson and ld.Content LIKE '%{str(query)}%'"
    # print(query_code) #debug

    cursor.execute(query_code)
    result = cursor.fetchall()
    show_chap = showchap.objects.all()
    show_lesson = showlesson.objects.all()
    show_lesson_detail = showlessondetail.objects.all()

    # final = result

    # Query có kết quả
    if len(result) != 0:
        # return render(request, 'music_search/kbs.html', context={'test':result})

        chap_name = ""
        lesson_name = ""
        lesson_d_name = ""
        lesson_d_content = ""

        print(f"exit flag:{flag}") #debug

        # Trả về kết quả của nút search
        if flag==0:
            result = list(result[0])
            chap_name = result[0]
            lesson_name = result[1]
            lesson_d_name = result[2]
            lesson_d_content = result[3]
            return render(request, 'music_search/kbs.html', context={'flag': flag,
                                                                'test':lesson_d_content,
                                                                'showchap':show_chap,
                                                                'showlesson':show_lesson,
                                                                'showlessondetail': show_lesson_detail,
                                                                'chapter':chap_name,
                                                                'lesson': lesson_name,
                                                                'lesson_d': lesson_d_name})
        # Trả về kết quả của nút Filter
        # Chỉ chọn chapter
        if flag==1:
            result = list(x[0] for x in result)
            return render(request, 'music_search/kbs.html', context={'flag': flag,
                                                                     'test':result,
                                                                     'showchap':show_chap,
                                                                     'showlesson':show_lesson,
                                                                     'showlessondetail':show_lesson_detail})
        # Chỉ chọn Chapter + Lesson
        if flag==2:
            print(result)
            result = [' '.join([str(elem) for elem in list(x)]) for x in result]
            return render(request, 'music_search/kbs.html', context={'flag': flag,
                                                                     'test':result,
                                                                     'showchap':show_chap,
                                                                     'showlesson':show_lesson,
                                                                     'showlessondetail':show_lesson_detail})
        # Chỉ chọn Chapter + Lesson + Lesson Detail
        if flag==3:
            result = list(result[0])
            chap_name = result[0]
            lesson_name = result[1]
            lesson_d_name = result[2]
            lesson_d_content = result[3]

            return render(request, 'music_search/kbs.html', context={'flag': flag,
                                                                'test':lesson_d_content,
                                                                'showchap':show_chap,
                                                                'showlesson':show_lesson,
                                                                'showlessondetail': show_lesson_detail,
                                                                'chapter':chap_name,
                                                                'lesson': lesson_name,
                                                                'lesson_d': lesson_d_name})
    # Trả về trống nếu query không có kết quả
    return render(request, 'music_search/kbs.html', context={'flag': flag,
                                                            'showchap':show_chap,
                                                            'showlesson':show_lesson,
                                                            'showlessondetail':show_lesson_detail})


    # print(result)
    # print(result[0])
    # for res in lesson_d_content :
    #     res = ''.join(str(res))
    #     res = res[2:-4:].replace(r"\\", "\\").replace(r"\\n", "\n").replace(r'\r\n', '\n')
    #     final = final + '\n' + res
    # Do kết quả query sẽ bao gồm 1 tuple với độ dài nào đó chứa output nên chúng ta phải dùng 1 vòng lặp để rút trích từng output
    # for res in lesson_d_content:
    #     res = ''.join(str(res))
    #     res = res[2:-4:].replace(r"\\", "\\").replace(r"\\n", "\n").replace(r'\r\n', '\n') #phần tử trong cục query ban đầu là 1 tuple
    #     final = final + '\n' + res #render trên html thì chỉ nhận 1 biến do đó ta phải cộng các cục res đã xử lý khoảng trắng ở trên để trả về output cuối cùng
    # result = ''.join(str(result))
    # print(len(result))
    # print(result[3:-5:].replace(r"\\", "\\"))
    # print(lesson_d_content)
