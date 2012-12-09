#!/bin/sh
# Author: nakinor
# Created: 2011-12-15
# Revised: 2012-12-09

# 月齢を計算して求めるプログラム

# 「変数=値」に空白を入れない
a_array=(0 2 0 2 2 4 5 6 7 8 9 10)
a_year=`date +%Y`
a_month=`date +%m | sed -e "s/^0//"`
a_day=`date +%d | sed -e "s/^0//"`

# 計算は $(()) で括る
a=$(( (($a_year - 11) % 19) * 11 ))
b=${a_array[$a_month - 1]}
c=$a_day
getsurei=$(( ((a + b + c) % 30) ))

# 変数の参照には $ を付ける
printf '今日は%s年%s月%s日です。\n' $a_year $a_month $a_day
printf '月齢は約%d日です。\n' $getsurei
