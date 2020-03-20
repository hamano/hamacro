---
title: Markdownテンプレート
author: HAMANO Tsukasa
date: \today
toc: false
---

# 見出し1
## 見出し2
### 見出し3
#### 見出し4

# リスト
## 列挙リスト
 * one
 * two
 * three
    - four

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

# 文字修飾
 - 普通の文字(normal)
 - *強調(emph)*
 - **強い強調(textbf)**
 - ***もっと強い強調(emph+textbf)***
 - ~~打ち消し線~~(ulem.styが必要)
 - ^上付き^

# 絵文字

☀☁☂☃

# リンク

<http://example.com/>

This is an [example link](http://example.com/).

^を付けると脚注[^1]

[^1]: 脚注

\clearpage

# インラインコード

 * `echo "Hello World."`

 * `インラインコードでNon-ASCII文字を利用できないのでlistingsを使ってはいけない`

 * Windowsのパス
    - C:\\Windows\\
    - `C:\Windows\`
    - C:\textyen{}\textyen{}Windows\textyen{}
    - C:¥Windows¥

# コード

~~~ {.c}
/* コメント */
#include <stdio.h>

int main(int argc, char *argv[]){
    printf("こんにちは");
    return 0;
}
~~~

コンパイル:

~~~ {.bash}
$ gcc -o hello hello.c
~~~

~~~ {.python}
#!/usr/bin/env python
# -*- coding: utf-8 -*-

import sys

def main():
    print('こんにちは') # なぜかスペースが入る

if __name__ == '__main__':
    main()
~~~

80文字テスト(Shade)

~~~{.c}
12345678901234567890123456789012345678901234567890123456789012345678901234567890
********************************************************************************
~~~

80文字テスト(Plain)

~~~
12345678901234567890123456789012345678901234567890123456789012345678901234567890
********************************************************************************
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
![代替テキスト](latex.eps)

![50%縮小画像](latex.eps){width=50%}

# テーブル

| 果物    | 値段 | 個数 |
|:-------:|-----:|-----:|
|バナナ|134円|10本|
|オレンジ|210円|10個|

# 数式
$E=mc^2$

# 水平線

- - -
