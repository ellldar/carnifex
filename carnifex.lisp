;; *****************************************************************************
;; *                                                                           *
;; *                                                        :::      ::::::::  *
;; *   carnifex.lsp                                       :+:      :+:    :+:  *
;; *                                                    +:+ +:+         +:+    *
;; *   By: esupatae <marvin@42.fr>                    +#+  +:+       +#+       *
;; *                                                +#+#+#+#+#+   +#+          *
;; *   Created: 2020/01/18 20:27:04 by esupatae          #+#    #+#            *
;; *   Updated: 2020/01/18 20:27:04 by esupatae         ###   ########.fr      *
;; *                                                                           *
;; *****************************************************************************

(ql:quickload '(:lispbuilder-sdl) :silent t)

(load "params.lisp")

(defun main()
    (sdl:with-init ()
        (sdl:window *window-width* *window-height* :title-caption "Game of Life")
        (setf (sdl:frame-rate) 60)
        (sdl:update-display)
        (sdl:with-events ()
            ;; (:quit-event () t)
            ;; (:key-down-event ()
            ;;     (sdl:push-quit-event))
            ;; (:video-expose-event ()
	        ;;     (sdl:update-display))
            ;; (:idle ()
            ;;     (when (sdl:mouse-left-p)
            ;;         (setf *random-color* (sdl:color :r (random 255) :g (random 255) :b (random 255))))
            ;;     (sdl:clear-display sdl:*black*)
            ;;     (sdl:draw-box (sdl:rectangle-from-midpoint-* (sdl:mouse-x) (sdl:mouse-y) 20 20)
            ;;         :color *random-color*)
            ;;     (sdl:update-display)
            ;;     )
            )
        )
    )

(sb-int:with-float-traps-masked (:invalid :inexact :overflow) (main))