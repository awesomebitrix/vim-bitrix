#!/usr/bin/python
# -*- coding: utf-8 -*-
def vim_bitrix_example():
    return "Happy Hacking!"

def vim_component_param_create():
    result = '"{PARAM_NAME}" => array()'
    return result

def format_component_param (param_name, param_type, values, default_value, category):
    """ Функция форматирования параметра компонента """
    result = '"{0}" => array('.format(param_name)
    result = result + '\n),'
    return result

# print (format_component_param ('COMP_PARAM_NAME', '2', '3', '4', '5'))
