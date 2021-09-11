;;; anagram.el --- Anagram (exercism)

;;; Commentary:

;;; Code:

(require 'cl-lib)
(require 'subr-x)

(defun anagrams-for (word word-list)
  (cl-remove-if-not
   (lambda (w)
     (is-anagram word w))
   word-list))

(defun is-anagram (word other)
  (and
   (not (string= word other))
   (string=
    (get-word-hash word) (get-word-hash other))))

(defun word-to-list (word)
  (mapcar 'downcase (split-string word "" t)))

(defun get-word-hash (word)
  (string-join (sort (word-to-list word) 'string<) ""))

(provide 'anagram)
;;; anagram.el ends here
