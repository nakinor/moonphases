﻿/* Author: nakinor
 * Created: 2012-03-13
 * Revised: 2016-03-19
 */

// Visual C# による月齢表示プログラム(コンソール)

using System;

namespace getsurei
{
    class Program
    {
        static void Main(string[] args)
        {

            int[] a_array = {0, 2, 0, 2, 2, 4, 5, 6, 7, 8, 9, 10};
            int a = 0, b = 0, c = 0;
            int getsurei = 0;
            DateTime dt= DateTime.Now;
            // dt に入れた日時は明示的に int 型設定しなくてもいいのかな？

            a = ((dt.Year - 11) % 19) * 11;
            b = a_array[dt.Month - 1]; // Month は 1 から 12 を返す。
            c = dt.Day;
            getsurei = (a + b + c) % 30;

            Console.Write("今日は{0}年{1}月{2}日です。",
                           dt.Year, dt.Month, dt.Day);

            Console.Write("月齢は約{0}日です。\n", getsurei);

        }
    }
}
