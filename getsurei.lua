-- Author: nakinor
-- Created: 2011-12-14
-- Revised: 2016-03-19

-- 月齢を計算して求めるプログラム

-- 数字をキーに出来ない？
a_table = {Jan = 0, Feb = 2, Mar = 0, Apr = 2, May = 2, Jun = 4,
           Jul = 5, Aug = 6, Sep = 7, Oct = 8, Nov = 9, Dec = 10}

a = ((os.date("%Y") - 11) % 19) * 11
b = a_table[os.date("%b")]
c = os.date("%d")
getsurei = math.floor((a + b + c) % 30)

-- Vim script に似てる？
print ("今日は" .. os.date("%Y") .. "年"
    .. assert(tonumber(os.date("%m"))) .. "月"
    .. assert(tonumber(os.date("%d"))) .. "日です。"
    .. "月齢は約" .. getsurei .. "日です。")
