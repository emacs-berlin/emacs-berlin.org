;;; -*- lexical-binding: t -*-

(defun insert-colored (str fg bg)
  (insert
   (propertize
    str
    'face `(:background ,bg :foreground fg))))

(defun goto-x-y (x y)
  (goto-line y)
  (move-to-column x t))

(setq xmas-timer nil)

(defun cancel-xmas-timer ()
  (interactive)
  (cancel-timer xmas-timer))

(defun xmas ()
  (interactive)

  ;; (when-let ((buffer (get-buffer "*xmas*")))                    .
  ;;   (kill-buffer (get-buffer "*xmas*")))

  (set-buffer (get-buffer-create "*xmas*"))
  (switch-to-buffer (current-buffer))

  (let* ((win-height (window-total-height))
         (win-width (window-total-width))
         (tree-size (round (* win-height 0.7))))
    (dotimes (_ (- win-height tree-size 2))
      (newline))
    (dotimes (i tree-size)
      (newline)
      (insert-colored (make-string (- (round (/ win-width 2)) i) ? ) nil nil)
      (insert-colored (make-string i ?🎄) "red" "green")
      (insert-colored " " nil nil)
      )

    (setq xmas-timer
          (run-at-time
           "0.1 sec" 0.3
           (lambda ()
             (let ((x (random (- win-width 2)))
                   (y (random (- win-height 1))))
               (goto-x-y x y)
               (if (= (char-after (point)) ?🎄)
                   (progn
                     (insert-colored "🌟" "black" "red")
                     (delete-char 1))
                 (progn
                   (insert-colored "*" "white" nil)
                   (if (= (char-after (point)) ? )
                       (delete-char 1))))))))

    (run-at-time "60 sec" nil 'cancel-xmas-timer)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun weihnachtstraum (&optional arg)
  (interactive "*p")
  (let ((arg (if (eq 1 arg) 9 arg)))
    (set-buffer (get-buffer-create "Weihnachtstraum"))
    (switch-to-buffer (current-buffer))
    (dotimes (i arg)
      (newline)
      (indent-to (- arg i))
      (dotimes (_ (* 2 i)) (insert 8710))
      (insert 8710))))


(define-key prog-mode-map (kbd "C-C C-c") 'weihnachtstraum)
