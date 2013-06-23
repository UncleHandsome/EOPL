(define count-occurrences
  (lambda (s slist)
    (cond
      ((null? slist) 0)
      ((eqv? s (car slist))
       (+ 1 (count-occurrences s (cdr slist))))
      ((symbol? (car slist)) 0)
      (else
        (+
          (count-occurrences s (car slist))
          (count-occurrences s (cdr slist)))))))
