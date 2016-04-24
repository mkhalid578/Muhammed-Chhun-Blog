#lang web-server/insta
(require web-server/servlet-env)

(define (start request)
  (response/xexpr
   '(html
     (head (title "Hello World"))
     (body (h1 "This is awesome")
      (p "This is a story about how my life go turned upside down..")
       (a ((href "about.html")) "link.html")))))

(serve/servlet start #:servlet-path "/about.html"
               #:extra-files-paths (list "/public_html"))
