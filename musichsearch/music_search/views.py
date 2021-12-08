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
    # form = HomeForm()
    # if request.method == "POST":
    #     form = HomeForm(request.POST)
    #     if form.is_valid():
    #         data = request.POST.get("demo")
    #         # form.save()
    #         print(data)
    #         return render(request, 'music_search/result.html', context={'data': data})
    # else:
    #     form = HomeForm()
    # print(request)
    query_dict = request.GET
    query = query_dict.get("q")
    cursor = connection.cursor()
    cursor.execute(f"SELECT lesson_detail.Content FROM lesson_detail WHERE lesson_detail.Name LIKE '%{str(query)}%'")# OR lesson_detail.Content LIKE '%{str(query)}%'")
    cursor.execute(f"select c.Name, l.Name, ld.Name, ld.Content from chapter c, lesson l, lesson_detail ld where c.ID = l.ID_chapter and l.ID = ld.ID_lesson and ld.Content LIKE '%{str(query)}%'") #OR lesson_detail.Content LIKE '%{str(query)}%")
    result = cursor.fetchall()
    show_chap = showchap.objects.all()
    show_lesson = showlesson.objects.all()
    # final = result
    final = ''
    print(result)
    result = list(result[0])
    chap_name = result[0]
    lesson_name = result[1]
    lesson_d_name = result[2]
    lesson_d_content = result[3]
    # print(result)
    # print(result[0])
    # for res in lesson_d_content :
    #     res = ''.join(str(res))
    #     res = res[2:-4:].replace(r"\\", "\\").replace(r"\\n", "\n").replace(r'\r\n', '\n')
    #     final = final + '\n' + res
    print(len(result))
    # Do kết quả query sẽ bao gồm 1 tuple với độ dài nào đó chứa output nên chúng ta phải dùng 1 vòng lặp để rút trích từng output
    for res in result:
        res = ''.join(str(res))
        res = res[2:-4:].replace(r"\\", "\\").replace(r"\\n", "\n").replace(r'\r\n', '\n') #phần tử trong cục query ban đầu là 1 tuple
        final = final + '\n' + res #render trên html thì chỉ nhận 1 biến do đó ta phải cộng các cục res đã xử lý khoảng trắng ở trên để trả về output cuối cùng
    # result = ''.join(str(result))
    # print(len(result))
    # print(result[3:-5:].replace(r"\\", "\\"))
    print(lesson_d_content)
    return render(request, 'music_search/kbs.html', context={'test':lesson_d_content,
                                                            'showchap':show_chap,
                                                            'showlesson':show_lesson,
                                                            'chapter':chap_name,
                                                            'lesson': lesson_name,
                                                            'lesson_d': lesson_d_name})


