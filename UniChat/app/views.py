
from django.shortcuts import render

def api_view(request):
    return render(request, "api.html", {})
