import django_filters
from django_filters import FilterSet, DateTimeFilter, CharFilter, ChoiceFilter
from .models import Post
from django import forms


class PostFilter(FilterSet):
    title = CharFilter(lookup_expr='icontains', label='Название поста')
    time_in_Post = DateTimeFilter(field_name='time_in_Post', lookup_expr='gte', widget=forms.DateTimeInput(attrs={'type': 'datetime-local'}), label='Позже указываемой даты')
    categoryType = ChoiceFilter(choices = Post.PUBLICATION, label='Категория')

    class Meta:
        model = Post
        fields = ['title', 'categoryType', 'time_in_Post']
