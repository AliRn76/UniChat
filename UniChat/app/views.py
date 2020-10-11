
from django.shortcuts import render
from django.shortcuts import HttpResponse
from robohash import Robohash


def api_view(request):
    return render(request, "api.html", {})


def robo_hash(request, slug):
    set = request.GET.get('set', None)
    rh = Robohash(slug)
    rh.assemble(roboset="set" + set)
    try:
        print("TRY")
        image_data = open("icons/" + slug + ".png", "rb").read()
    except:
        print("except")
        with open("icons/"+slug+".png", "wb") as f:
            rh.img.save(f, format="png")
        image_data = open("icons/"+slug+".png", "rb").read()
    return HttpResponse(image_data, content_type="image/png")
