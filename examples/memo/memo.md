% Markdownテンプレート
% HAMANO Tsukasa
% \today

# 見出し1
## 見出し2
### 見出し3

# リスト
## 列挙リスト
 * one
 * two
 * three

## 順序リスト
 1. 睦月
 2. 如月
 3. 弥生

## 定義リスト

Monday
:   月曜日
Tuesday
:   火曜日
Wednesday
:   水曜日

\clearpage

# 文字修飾
 - 普通の文字(normal)
 - *強調(emph)*
 - **強い強調(textbf)**
 - ***もっと強い強調(emph+textbf)***
 - ~~打ち消し線~~(ulem.styが必要)
 - ^上付き^

# リンク

<http://example.com/>

This is an [example link](http://example.com/).

^を付けると脚注[^1]

[^1]: 脚注

\clearpage

# コード

`echo "Hello World."`

`@先頭が日本語だとlistingsでエラー(未解決)`

`C:\\Windows\`

`C:¥¥Windows¥`(未解決)

~~~ {caption="hello.c"}
/* コメント */
#include <stdio.h>

int main(int argc, char *argv[]){
    printf("Hello World!");
    return 0;
}
~~~

コンパイル:

    $ gcc -o hello hello.c

日本語:

    あいうえお

79文字入ればOK

~~~
1234567890123456789012345678901234567890123456789012345678901234567890123456789
*******************************************************************************
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * 
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
~~~

ASCIIコード

~~~
 !"#$%&'()*+,-./
0123456789?>=<;:
@ABCDEFGHIJKLMNO
PQRSTUVWXYZ[\]^_
`abcdefghijklmno
pqrstuvwxyz{|}~
~~~

# 引用

> 吾輩は猫である。名前はまだ無い。
> どこで生れたかとんと見当がつかぬ。

# 画像
![代替テキスト](latex.png)

# テーブル

| 果物    | 値段 | 個数 |
|:-------:|-----:|-----:|
|バナナ|134円|10本|
|オレンジ|210円|10個|

# 数式
$E=mc^2$

# 水平線

- - -
