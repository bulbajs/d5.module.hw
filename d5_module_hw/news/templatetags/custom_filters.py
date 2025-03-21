from django import template

register = template.Library()


@register.filter()
def censor(text):
    bad_words = ('теннисист', 'ракетка', 'чемпионата', 'usd', 'российский')
    if type(text) == str:
        for word in text.split():
            if word.lower() in bad_words:
                text = text.replace(word, f"{word[0]}{'*' * (len(word) - 1)}")
    else:
        raise ValueError('Данные не являются строкой')
    return text

@register.simple_tag(takes_context=True)
def url_replace(context, **kwargs):
   d = context['request'].GET.copy()
   for k, v in kwargs.items():
       d[k] = v
   return d.urlencode()
