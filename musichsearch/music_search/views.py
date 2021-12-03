from django.shortcuts import render
# from .utils import load_object
from .forms import AudioForm, HomeForm
import librosa
from .utils import *
import pickle
from django.core.files.storage import default_storage
from django.db import connection
from .models import displaydata

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
    cursor.execute("select Content from lesson_detail where Content like" + "'%" + str(query) + "%'")
    result = cursor.fetchall()
    result = str(result).replace("(", "").replace("'", "").replace(")", "").replace(",", "")
    return render(request, 'music_search/kbs.html', context={'test':result})
