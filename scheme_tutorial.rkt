#lang racket

;;; CH1

;; Exercise 1

; 1. (1+39) * (53-45)
(quote 1.1.1)
(* (+ 1 39) (- 53 45))

; 2. (1020 / 39) + (45 * 2)
(quote 1.1.2)
(+ (/ 1020 39) (* 45 2))

; 3. Sum of 39, 48, 72, 23, and 91
(quote 1.1.3)
(+ 39 48 72 23 91)

; 4. Average of 39, 48, 72, 23, and 91 as a floating point.
(quote 1.1.4)
(/ (+ 39 48 72 23 91) 5)

(newline)

;; Exercise 2

; 1. circle ratio, π
(quote 1.2.1)
(* 4 (atan 1.0))

; 2. exp(2/3)
(quote 1.2.2)
(exp 2/3)

; 3. 3 to the power of 4
(quote 1.2.3)
(expt 3 4)

; 4. logarithm of 1000
(quote 1.2.4)
(log 1000)

(newline)
(newline)

;;; CH2

;; Exercise 1

; 1. ("hi" . "everybody")
(quote 2.1.1)
(cons "hi" "everybody")

; 2. (0)
(quote 2.1.2)
(cons 0 '())

; 3. (1 10 . 100)
(quote 2.1.3)
(cons 1 (cons 10 100))

; 4. (1 10 100)
(quote 2.1.4)
(cons 1 (cons 10 (cons 100 '())))

; 5. (#\I "saw" 3 "girls")
(quote 2.1.5)
(cons #\I (cons "saw" (cons 3 (cons "girls" '()))))

; 6. ("Sum of" (1 2 3 4) "is" 10)
(quote 2.1.6)
(cons "Sum of" (cons '(1 2 3 4) (cons "is" (cons 10 '()))))

(newline)

;; Exercises 2

(quote 2.2.*)
(car '(0))
(cdr '(0))
(car '((1 2 3) (4 5 6)))
(cdr '(1 2 3 . 4))
(cdr (cons 3 (cons 2 (cons 1 '()))))

(newline)
(newline)

;;; CH3

;; Exercise 1

; 1. A function that add 1 to the argument.
(quote 3.1.1)
(define (add1 x) (+ 1 x))
; or (define add1 (lambda (x) (+ 1 x)))

; 2. A function that subtract 1 from the argument.
(quote 3.1.2)
(define (sub1 x) (- x 1))

(newline)

;; Exercise 2

; 1. Write a function that convert the unit of angles from degree to radian.
;    180 degree is π radian. π is defined by
(quote 3.2.1)
(define pi (* 4 (atan 1.0)))
(define (dgr2rdn dgr) (* dgr (/ pi 180)) )

; 2. Write a function that calculates a distance of moving at a constant
;    velocity (vx) in t seconds.
(quote 3.2.2)
(define (dist vx t) (* vx t))

; 3. Write a function that calculates a duration till the object
;    reach the ground that is launched with vertical velocity of vy.
(quote 3.2.3)
(define (fft vy) (/ (* 2 vy) 9.8))

(newline)
(newline)

;;; CH4

;; Exercise 1

; 1. A function to return the absolute value of a real number.
(quote 4.1.1)
(define (abs x)
  (if (< x 0)
      (* -1 x)
      x
   )
  )
; or (define (abs x) (* x (if (positive? x) 1 -1)))

; 2. A function to return the reciprocal of a real number.
;    Make it return #f if the argument is 0.
(quote 4.1.2)
(define (rcp x)
  (if (= x 0)
      #f
      (expt x -1)
      )
  )
; or (define (rcp x) (if (not (zero? x) (/ n))))

; 3. A function to convert a integer toa graphical character of ASCII characters.
;    The integers that can be converted to graphical characters are 33 – 126.
(quote 4.1.3)
(define (int2char i)
  (if (integer? i)
      (if (and (>= i 33) (<= i 126))
          (integer->char i)
          #f
       )
      #f
   )
  )
; or (define (int2char i) (if (<= 33 i 126) (integer->char i) #f())

(newline)

;; Exercise 2

; 1. A function that takes three real numbers as arguments.
;    It returns the product of these three numbers if all them is positive.
(quote 4.2.1)
(define (posprod a b c)
  (if (and (positive? a) (positive? b) (positive? c))
      (* a b c)
      #f
   )
  )

; 2. A function that takes three real numbers as arguments.
;    It returns the product of these three numbers if at least one of them is negative.
(quote 4.2.2)
(define (neg1prod a b c)
  (if (or (negative? a) (negative? b) (negative? c))
      (* a b c)
      #f
   )
  )

(newline)

;; Exercise 3

; The grade (A – D) of exam is determined by the score (score). Write a function that takes a score as an argument and returns a grade.
; A if score ≥ 80
; B if 60 ≤ score ≤ 79
; C if 40 ≤ score ≤ 59
; D if score < 40
(quote 3.*.*)
(define (score s)
  (cond
    ((>= s 80) 'A)
    ((<= 60 s 79) 'B)
    ((<= 40 s 59) 'C)
    ((< s 40) 'D)
    (else #f)
    )
  )

(newline)
(newline)

;;; CH5

; eq?, eqv?, equal?
;   eq?: compares addresses.
;   eqv?: compares types & values (except for list and string).
;   equal?: compares types & values (for list and string also).

; pair?
;   It returns #t if the object consists of cons cells (or a cons cell).
; list?
;   It returns #t if the object is a list. Be careful in that '() is a list but not a pair.
; null?
;   It returns #t if the object is '().
; symbol?
;   It returns #t if the object is a symbol.
; char?
;   It returns #t if the object is a character.
; string?
;   It returns #t if the object is a string.
; number?
;   It returns #t if the object is a number.
; complex?
;   It returns #t if the object is a complex number.
; real?
;   It returns #t if the object is a real number
; rational?
;   It returns #t if the object is a rational number.
; integer?
;   It returns #t if the object is an integral
; exact?
;   It returns #t if the object is not a floating point number.
; inexact?
;   It returns #t if the object is a floating point number.

; let
;   (let binds body), minimal local binding.
; let*
;   same as let, with body scope binding.

(newline)
(newline)

;;; CH6

;; Exercise 1

; 1. A function that counts the number of list items, my-length. (Function length is pre-defined.)
(quote 6.1.1)
(define (my-length l)
  (if (null? l)
      0
      (+ 1 (my-length (cdr l)))
   )
  )

; 2. A function that summarizes numbers in a list.
(quote 6.1.2)
(define (sum l)
  (if (null? l)
      0
      (+ (car l) (sum (cdr l)))
   )
  )

; 3. A function that takes a list (ls) and an object (x) as arguments
;    and returns a list removing x from ls.
(quote 6.1.3)
(define (rm l x)
  (cond
    ((null? l) '())
    ((equal? (car l) x) (rm (cdr l) x))
    (else (cons (car l) (rm (cdr l) x))) 
   )
  )

; 4. A function that takes a list (ls) and and an object (x) and returns
;    the first position of x in ls. The position is counted from 0.
;    If x is not found in ls, the function returns #f.
(quote 6.1.4)
(define (idx l x i)
  (cond
    ((null? l) #f)
    ((eqv? x (car l)) i)
    (else (idx (cdr l) x (+ 1 i)))
   )
  )

(newline)

;; Exercise 2

; 1. my-reverse that reverse the order of list items. (Function reverse is pre-defined.)
(quote 6.2.1)
(define (my-reverse l) (my-reverse1 l '()))
(define (my-reverse1 l l0)
  (if (null? l)
      l0
      (my-reverse1 (cdr l) (cons (car l) l0))
   )
  )

; 2. Summarizing items of a list consisting of numbers (tail recursion).
(quote 6.2.2)
(define (sum-tail l) (sum-tail1 l 0))
(define (sum-tail1 l n)
  (if (null? l)
      n
      (sum-tail1 (cdr l) (+ (car l) n))
   )
  )

; 3. Converting a string that represents a positive integer to the corresponding integer,
;    i.e. "1232" → 1232. Input error check is not required.
(quote 6.2.3)
(define (string->integer str) (str->int (string->list str) 0))
(define (str->int chl n)
  (if (null? chl)
      n
      (str->int (cdr chl) (+ n (* (expt 10 (1- (len chl))) (- (char->integer (car chl)) 48))))
   )
  )

(newline)

;; Exercise 3

; Syntax: Tail Recursion with loop
; (define (func arg*)
;   (let loop((binds body) (binds body)
;     if/cond/...
;   )
;  )

; 1.
;    a. A function that takes a list (ls) and an object (x) as arguments and returns
;       a list removing x from ls (named let).
;    b. A function that takes a list (ls) and and an object (x) and returns
;       the first position of x in ls. The position is counted from 0.
;       If x is not found in ls, the function returns #f (named let).
(quote 6.3.1)
(define (rm-let l x)
  (let loop((l0 l) (x0 x))
    (cond
      ((null? l0) '())
      ((eqv? (car l0) x0) (loop (cdr l0) x0))
      (else (cons (car l0) (loop (cdr l0) x0)))
     )
    )
  )
(define (idx-let l x)
  (let loop((l0 l) (i 0))
    (cond
      ((null? l0) #f)
      ((eqv? x (car l0)) i)
      (else (loop (cdr l0) (1+ i)))
     )
    )
  )

; 2.
;    a. my-reverse that reverse the order of list items. (Function reverse is pre-defined.)
;    b. Summarizing items of a list consisting of numbers (tail recursion).
;    c. Converting a string that represents a positive integer to the corresponding integer,
;       i.e. "1232" → 1232. Input error check is not required.
(quote 6.3.2)
(define (rev-let l)
  (let loop((l0 l) (l1 '()))
    (if (null? l0)
        l1
        (loop (cdr l0) (cons (car l0) l1))
     )
   )
  )
(define (sum-let l)
  (let loop((l0 l) (n 0))
    (if (null? l0)
        n
        (loop (cdr l0) (+ n (car l0)))
     )
   )
  )
(define (s2i-let str)
  (let loop((chl (string->list str)) (n 0))
    (if (null? chl)
        n
        (loop (cdr chl) (+ (- (char->integer (car chl)) 48)
                           (* n 10)))
     )
   )
  )

; 3. The function range that returns a list of numbers from 0 to n (not including n).
(quote 6.3.3)
(define (range n)
  (let loop((l '()) (i n))
    (if (= i 0)
        l
        (loop (cons (1- i) l) (1- i))
     )
   )
  )

(newline)

;; Exercise 4

; Syntax: Tail Recursion with letrec
; (define (func arg*)
;   (letrec ((iter (lambda (arg*)
;                   if/cond/...
;                   )))
;           (iter arg*)
;    )  
;  )

;  a. my-reverse that reverse the order of list items. (Function reverse is pre-defined.)
;  b. Summarizing items of a list consisting of numbers (letrec).
;  c. Converting a string that represents a positive integer to the corresponding integer,
;     i.e. "1232" → 1232. Input error check is not required.
(quote 6.4.*)
(define (rev-letrec l)
  (letrec ((iter (lambda (l0 l1)
                   (if (null? l0)
                       l1
                       (iter (cdr l0) (cons (car l0) l1))
                    )
                   )))
           (iter l '())
   )
  )
(define (sum-letrec l)
  (letrec ((iter (lambda (l0 n)
                   (if (null? l0)
                       n
                       (iter (cdr l0) (+ n (car l0)))
                    )
                  )))
          (iter l 0)
   )
  )
(define (s2i-letrec str)
  (letrec ((iter (lambda (chl n)
                   (if (null? chl)
                       n
                       (iter (cdr chl) (+ (- (char->integer (car chl)) 48)
                                          (* n 10)))
                    )
                  )))
          (iter (string->list str) 0)
   )
  )

(newline)

; Syntax: Do Recursion
; (define (func arg*)
;   (do ((binds body update) (binds body update) ...)
;       ((pred) ret)
;     )
;  )
;  if pred=#t, return ret.

;; Exercise 5

;  a. my-reverse that reverse the order of list items. (Function reverse is pre-defined.)
;  b. Summarizing items of a list consisting of numbers (do).
;  c. Converting a string that represents a positive integer to the corresponding integer,
;     i.e. "1232" → 1232. Input error check is not required.
(quote 6.5.*)
(define (rev-do l)
  (do ((l0 l (cdr l0)) (l1 '() (cons (car l0) l1)))
      ((null? l0) l1)
    )
  )
(define (sum-do l)
  (do ((l0 l (cdr l0)) (n 0 (+ n (car l0))))
      ((null? l0) n)
    )
  )
(define (s2i-do str)
  (do ((chl (string->list str) (cdr chl)) (n 0 (+ (- (char->integer (car chl)) 48)
                                                  (* n 10))))
      ((null? chl) n)
    )
  )

(newline)
(newline)

;;; CH7

;; Exercise 1

; Syntax: map
; (map procedure list1 ... listn)

; 1. A function that makes it twice that each item of a list of numbers.
(quote 7.1.1)
(define (twice l)
  (map (lambda (x) (* 2 x)) l)
  )

; 2. A function that subtracts items of two lists.
(quote 7.1.2)
(define (subtract-lists l1 l2)
  (map (lambda (x y) (- x y)) l1 l2)
  )

(newline)

;; Exercise 2

; Syntax: positive/negative filtering
; positive: (keep-matching-items list filter)
; negative: (delete-matching-items list filter)

; 1. filtering out even numbers in a list.
(quote 7.2.1)
(define (filter-even l)
  (keep-matching-items l odd?)
  )

; 2. filtering out numbers (x) that are not 10 ≤ x ≤ 100.
(quote 7.2.2)
(define (filter-range l min max)
  (keep-matching-items l (lambda (x) (<= min x max)))
  )

(newline)

;; Exercise 3

; Syntax: reduce
; (reduce proc list) <= function defined by me.

; Write a function that squares each item of a list,
; then sums them and then makes square root of it.
(quote 7.3.*)
(define (sum-of-square l)
  (sqrt (reduce + (map (lambda (x) (* x x)) l)))
  )

(newline)

;; Exercise 4

; Syntax: sort
; (sort list comp)
; e.g. (sort '(3 5 1 4 -1) <)

; 1. Sort by magnitude of sin(x) in ascending order.
(quote 7.4.1)
(define (sort-by-sin l)
  (sort (map (lambda (x) (sin x)) l) <)
  )

; 2. Sort by length of lists in descending order.
(quote 7.4.2)
(define (sort-by-len ls)
  (sort (map len ls) >)
  )

(newline)

;; Exercise 5

; Syntax: apply
; (apply proc arg1 ... argn)
; arg = {nonlist, list}

; Write a function that squares each item of a list,
; then sums them and then makes square root of it. (using apply)
(define (sum-of-square-apply l)
  (sqrt (apply + (map (lambda (x) (* x x)) l)))
  )

(newline)

;; Exercise 6

; Define map by yourself.
; It may be some how difficult to accept more than one list as arguments.

; skipping this one

(newline)
(newline)

;;; CH8

; read file and print
(define (read-print path filename)
  (begin
    (current-directory path)
    (display (read-file filename))
   )
  )

; Comments: non-essential for now, suspended.

(newline)
(newline)

;;; CH9

; Notes
; set! : set value to variable.
; set-car! / set-cdr! : set S-expression to variable.

;; Exercise 1

; Modify make-bank-account so that withdrawing more than balance causes error.
(define (make-bank-account balance)
  (lambda (n)
    (if (negative? (+ balance n))
        #f
        (begin (set! balance (+ balance n))
               balance
          )
     )
    )
  )

(newline)







; HELPERS

; len
(define (len l)
  (if (eqv? (cdr l) '())
      1
      (+ (len (cdr l)) 1)
      )
  )

; increment by 1 or n
(define-syntax 1+
  (syntax-rules ()
    ((_ x)   (+ x 1))
    ((_ x n) (+ x n))))

; decrement by 1 or n
(define-syntax 1-
  (syntax-rules ()
    ((_ x)   (- x 1))
    ((_ x n) (- x n))))

; factorial
(define (fac n) (fac1 n 1))
(define (fac1 n p)
  (if (= n 1)
      p
      (fac1 (1- n) (* n p))
   )
  )

; keep-matching-items
(define (keep-matching-items l filter)
  (let loop((l0 l) (l1 '()))
    (cond
      ((null? l0) l1)
      ((filter (car l0)) (loop (cdr l0) (append l1 (list (car l0)))))
      (else (loop (cdr l0) l1))
     )
   )
  )

; delete-matching-items
(define (delete-matching-items l filter)
  (let loop((l0 l) (l1 '()))
    (cond
      ((null? l0) l1)
      ((filter (car l0)) (loop (cdr l0) l1))
      (else (loop (cdr l0) (append l1 (list (car l0)))))
     )
   )
  )

; reduce
(define (reduce proc l)
  (let loop((x (car l)) (l0 (cdr l)))
    (if (null? l0)
        x
        (loop (proc x (car l0)) (cdr l0))
     )
   )
  )

; read file return string
(define (read-file file-name)
  (let ((p (open-input-file file-name)))
    (let loop((ls1 '()) (c (read-char p)))
      (if (eof-object? c)
	  (begin
	    (close-input-port p)
	    (list->string (reverse ls1)))
	  (loop (cons c ls1) (read-char p))))))

