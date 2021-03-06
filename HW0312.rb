# SSS
符號 symbol 作業 0312
長相為前面有冒號「:」，例如 :ABC 。
特性一、不是變數而是一個值，或說物件，可以指定給變數，本身不須指向任何東西。
例如 X = :aaa 成立。
特性二、不能再指定其他值給他，無法放在等號左手邊，不能拿來當變數。
例如 :aaa= "qwq" 會出現錯誤。
特性三、無法更改其內容。
例如 x = :aaa
x[0] = "b" 會出現錯誤， :aaa 無法用任何方式更動內容。
*但若是字串則OK，"aaa" 可用以上方式帶入 "b" ："bBC"。
特性四、可理解為與數字同概念，同為值、不能再指定成其他值、無法更改內容、本身不須指向任何東西 (但符號並不等於數字)。
例如 y = 4
x = :aaa
若使用 object_id 查詢 ： :aaa. object_id
4. object_id
無論查詢幾次，可得出 :aaa 及數字 4 查出來的值每次皆相同，但若是 "aaa" 則每次查詢都會出現不同的值(除非使用冷凍字串)。
特性五、符號處理速度較字串稍快。
符號直接比較一顆東西，字串是需一個一個字母比對，若是量大時則可感受到速度有差。
特性六、符號及字串可以互相轉換
符號可使用 .to_s 轉為字串 ： :aaa.to_s => "aaa"
字串可使用 .to_sym 轉為符號 ： "aaa". to_sym => :aaa
判斷何時該使用符號、字串？
1. Hash 裡的 Key 時適用符號
原因：不可更動特性，以及查找、比較的速度較字串快。
2. 單純印出內容 適用字串
原因 ： 符號輸出時，仍會先轉型成字串，若本來就是字串就比較省時。
3. 不可變時，可使用符號或冷凍字串；若需變動、組合則適用字串。有些方 法只有字串能用，那就只能選擇字串///。
參考資料：為你自己學 Ruby on Rails
