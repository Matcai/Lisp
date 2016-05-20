#|
Lisp 的多行注释
|#


(format t "Hello world ~%") 
;;输出hello  world

(print "What's your name?:")  
;;输出What's your name

(defvar *name* (read))		       
;;读取用户输入，并赋值name变量。

					
(defun hello-you(*name*)    
  (format t "Hello ~a! ~%" *name*)
  (format t "Hello quota ~s! ~%" *name*)
  (format t "Hello 10a ~10a! ~%" *name*)
  (format t "Hello 10@a ~10@a! ~%" *name*)
  )                            
;;定义函数hello-you ，
;; ~% : 回车换行
;; ~a : 显示值
;; ~s : Shows quotes around the value ，如果输入值带有引号，则包含引号也显示出来。
;; ~10a : 右边添加空格为占位符，直到填满10个字符为止。
;; ~10@a : 左边添加空格为占位符，直到填满10个字符为止。
;; ~:d : 数值数字每三位用逗号分隔。例如：100,000,000
;; ~5f : 显示5个字符，characters 包含小数点。
;; ~,4f :小数点后面显示4位
;; ~,,2f :使用百分比的方式显示，但是不包含% 百分号。
;; ~$ : doller ，美元方式显示，金钱显示方式。

(setq *print-case* :capitalize) 
;;upcase :downcase  ，设置输入的字符首字母大写。

(hello-you *name*)              
;;输出执行函数hello-you

(defvar *number* 0)
;;定义一个变量*number*
 
(setf *number* 3.1415926)
;;变量赋值为6

(format t "*number* 5f is ~5f ~%" *number*)
(format t "*number* ,4f is ~,4f ~%" *number*)
(format t "*number* ,,2f is ~,,2f ~%" *number*)
(format t "*number* $ is ~$ " *number*)
(format t "*number* % is ~%")
