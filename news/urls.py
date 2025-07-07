from django.urls import path
from .views import PostList, PostDetail, NewsCreateView, ArticlesCreateView,UpdateNews, UpdateArticles, DeleteNews, DeleteArticles


urlpatterns = [
    path('', PostList.as_view(), name='news_list'),
    path('<int:pk>', PostDetail.as_view(), name='post_detail'),
    path('news/create/', NewsCreateView.as_view(), name='news_create'),
    path('articles/create/', ArticlesCreateView.as_view(), name='articles_create'),
    path('news/<int:pk>/edit/', UpdateNews.as_view(), name='news_edit'),
    path('articles/<int:pk>/edit/', UpdateArticles.as_view(), name='articles_edit'),
    path('news/<int:pk>/delete/', DeleteNews.as_view(), name='news_delete'),
    path('articles/<int:pk>/delete/', DeleteArticles.as_view(), name='articles_delete'),
]
