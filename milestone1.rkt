#lang racket/base

;;;;;; Muhammed Khalid Creating the Blog ;;;;;;;;;

; A blog is a (blog posts)
; where posts is a (listof post)
(struct blog (posts) #:mutable)
 
; and post is a (post title body comments)
; where title is a string, body is a string, 
; and comments is a (listof string)
(struct post (title body comments) #:mutable)
 
; Some starter code to start of our blog
; These blogs are complete meaningless but created
; just to set us up
(define BLOG
  (blog
   (list (post "Batman V. Superman"
               "This film was just terrible and it could have been better if Zack Synder knew how to direct a
                 better movie. Morever he should use more practical effects"
               (list))
         (post "Captain America: Civil War"
               "This film is going to be awesome. I look forward to watching this movie right after I finish my OPL Final Exam!"
               (list "First!")))))
 
; Creates a blog that allows a user to add a definition
; Then add info to the blog
; To do this it takes a blog object and builds upon based of
; what the user wants to do

(define (blog-insert-post! a-blog a-post)
  (set-blog-posts!
   a-blog
   (cons a-post (blog-posts a-blog))))
 
; Consumes a post and a comment string.  As a side-efect, 
; adds the comment to the bottom of the post's list of comments.
; Users can add comments to the blog. However, as I was programming I decided that
; to remove comments is redundant, and keeping them would be just fine

(define (post-insert-comment! a-post a-comment)
  (set-post-comments!
   a-post
   (append (post-comments a-post) (list a-comment))))
 
(provide (all-defined-out))

;;;;;; Chhun Kim Graphical User Interface ;;;;;;;;;

(define (render-blog-page request)
  (define (response-generator embed/url)
    (response/xexpr
     `(html (head (title "MC Crew Blog"))
            (body
             (h1 "OPL Interactive Blog Page")
             ,(render-posts embed/url)
             (form ((action
                     ,(embed/url insert-post-handler)))
                   (input ((name "title")))
                   (input ((name "body")))
                   (input ((type "submit"))))))))


  (define (render-post-detail-page a-post request)
  (define (response-generator embed/url)
    (response/xexpr
     `(html (head (title "Blog Info"))
            (body
             (h1 "Blog Info: ")
             (h2 ,(post-title a-post))
             (p ,(post-body a-post))
             ,(render-as-itemized-list
               (post-comments a-post))
             (form ((action
                     ,(embed/url insert-comment-handler)))
                   (input ((name "comment")))
                   (input ((type "submit"))))
             (a ((href ,(embed/url back-handler)))
                "RETURN")))))

  