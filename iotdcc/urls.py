from django.contrib import admin
from django.urls import path, include

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', include ('main.urls')),

    path("accounts/", include( "accounts.urls")),
    path("accounts/", include("allauth.urls")), # new
    path("o/", include('oauth2_provider.urls', namespace='oauth2_provider')),
]
