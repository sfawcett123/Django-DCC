from django import template

register = template.Library()

@register.simple_tag
def project_name():
    return "Internet of DCC"