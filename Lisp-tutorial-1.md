## Lisp 的表达式的使用

> Lisp 的表达式称之为符号表达式或S-表达式  
> S 表达式是三个有效对象，原子、列表、和字符串。  
> Lisp 表达式总是由`()` 符号包含表示一条语句的结束。

> Lisp 的表达式不区分大小写。函数的调用如f(x) 被书写成(f x)

> Lisp 尝试计算一切，包含函数的参数。只有三种类型的元素是常数，总是返回自己的值：  
> 1. 数字  
> 2. 字母t， 表示逻辑真，true  
> 3. 值nil, 表示逻辑假，false；空列表也表示为逻辑假。


- 前缀表示法

> a * (b + c) / d  
> 将被写成：  
> (/ (* a (+ b c)) d)

- 执行Lisp 的命令

> Emacs 自带 Lisp 解析，通过Ctrl+c e 实时显示结果。


- Hello World

> (write-line "Hello World")  
> 文件后缀为name.lisp

## Lisp 的基本语法

> Lisp 程序由三个基本构建块：  
> atom, list, string  

- Atom 原子

> atom 原子，是一个由数字连续字符或字符串，它包含数字和特殊字符。  
> 例如： `hello-from-tutorials-yiibai`  `hello123`  

- List 列表

> 列表是包含在括号中的原子（atom） 和/ 或其它列表的序列。  
> ( i am a list )  
> (a ( a b c ) d e fgh )  
> ( )

- String 字符串

> 字符串是一组双引号内的字符  
> " I am a string "  
> "Hello World !"

## Lisp 的注释

> Lisp 的注释用分号符号`;` 表示一个注释。  
> (write-line "Hello World") ; say hello World  
> ; who am i ?  
> (write-line "I am Wenyiqn")


## Lisp 的命令约定

> 名称或者符号可以包含任意数量的空白  
> 右括号，双引号和单引号，反斜杠，逗号，冒号，分号，竖线其他字母数字字符，若要在名称中使用  
> 则需要使用转义字符（）

> 一个名字可以包含数字，但是不能全部是数字，否则会被当成数字来看待 。

- 单引号 `'`

> Lisp 计算一切，包含函数的参数 和 列表的成员  
> 所以在给函数传递列表时，它会对列表进行计算。  
> 有时我们需要传递的是列表或原子的内容，而不是他们计算后得到的结果。  
> 通过原子或列表前带有`'` 单引号可以避免Lisp 对其运算。

> (write-line '(* 2 3 )) ;返回的结果是字符串"(* 2 3 )"  
> (write-line (* 2 3 ))  ;返回的结果是数值 6

