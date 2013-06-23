; (product '(a b c) '(x y))
; ((a x) (a y) (b x) (b y) (c x) (c y))
(define product-aux
  (lambda (x slist)
    (cond
      ((null? slist) '())
      (else
        (cons (list x (car slist))
              (product-aux x (cdr slist)))))))
(define product
  (lambda (sos1 sos2)
    (cond
      ((null? sos1) '())
      (else
        (append 
          (product-aux (car sos1) sos2)
          (product (cdr sos1) sos2))))))
