from django.views.generic import ListView, DetailView, CreateView, UpdateView, DeleteView
from .models import Post
from django.core.paginator import Paginator
from .filters import PostFilter
from django.shortcuts import render
from .forms import PostForm
from django.urls import reverse_lazy


class PostList(ListView):
    model = Post
    ordering = 'time_in_Post'
    template_name = 'flatpages/news.html'
    context_object_name = 'news'
    paginate_by = 3

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        # context['time_now'] = datetime.utcnow()
        # context['next_sale'] = 'Убрал строку None'
        context['filterset'] = self.filterset
        return context

    def get_queryset(self):
        queryset = super().get_queryset()
        self.filterset = PostFilter(self.request.GET, queryset)
        return self.filterset.qs.order_by('id')


class PostDetail(DetailView):
    model = Post
    template_name = 'flatpages/post.html'
    context_object_name = 'post'


class NewsCreateView(CreateView):
    model = Post
    form_class = PostForm
    template_name = 'flatpages/news_form.html'
    success_url = reverse_lazy('news_list')

    def form_valid(self, form):
        post = form.save(commit=False)
        post.categoryType = 'news'
        return super().form_valid(form)


class ArticlesCreateView(CreateView):
    model = Post
    form_class = PostForm
    template_name = 'flatpages/articles_form.html'
    success_url = reverse_lazy('news_list')

    def form_valid(self, form):
        post = form.save(commit=False)
        post.categoryType = 'art'
        return super().form_valid(form)

    # def get_success_url(self):
    #     return reverse_lazy('news_list')


class UpdateNews(UpdateView):
    model = Post
    form_class = PostForm
    template_name = 'flatpages/news_form.html'
    success_url = reverse_lazy('news_list')


class UpdateArticles(UpdateView):
    model = Post
    form_class = PostForm
    template_name = 'flatpages/articles_form.html'
    success_url = reverse_lazy('news_list')


class DeleteNews(DeleteView):
    model = Post
    template_name = 'flatpages/delete_news.html'
    success_url = reverse_lazy('news_list')


class DeleteArticles(DeleteView):
    model = Post
    template_name = 'flatpages/delete_articles.html'
    success_url = reverse_lazy('news_list')
