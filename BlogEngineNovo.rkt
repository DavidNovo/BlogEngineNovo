#lang web-server/insta
(provide render-post)

;; by default these struct are immutable
(struct post (title body))

(define firstPost (post "First Title" "body of first post"))
(define secondPost (post "Second Post" "this is the body of the second poost"))
;(post-title firstPost)

(define BLOG (list (post "First Post"
                         "Body of first post")))

(define (start request)
  (response/xexpr
   `(html
     (head (title "My Blog"))
     (body (h1 "Under construction")))))


;; render a greeting
;; consumes a name and produces a dynamic response
(define (render-greeting a-name)
  (response/xexpr
   `(html (head (title "Welcome"))
          (body (p, (string-append "Hello " a-name))))))

;; render a post
(define (render-post post)
  (response/xexpr
   '(html
     (head (title "render post"))
     (body (h1 "Under construction")))))
     
;;   '(div ((class "post")) (post-title post) (p (post-body post)))))
;;(writeln " A test")
;;(render-post firstPost)
;;(writeln "end test")

;; Consumes a list of items and produces
;; a rendering as an unordered list
;;(define (render-as-itemized-list fragments)
;;  `(ul ,@(map render-as-item fragments)))

;; Consumes an xexpr and produces a rendering as a list item

