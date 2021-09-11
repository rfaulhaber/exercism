;;; leap.el --- Leap exercise (exercism)

;;; Commentary:

;;; Code:

(defun leap-year-p (year)
  "Returns t if YEAR is a leap year."
  (and 
   (divisible-by-p year 4) 
   (or 
    (not (divisible-by-p year 100)) 
    (divisible-by-p year 400))))

(defun divisible-by-p (n d)
  "Returns true if N % D == 0"
  (eq (mod n d) 0))

(provide 'leap-year-p)
;;; leap.el ends here
