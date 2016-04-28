# OPL Webpage

##Authors
### Muhammed Khalid
### @mkhalid578

Person Two
#### Chhun Kim 
#### @chhunkim

##Overview
A webpage that allows users to look at blog posts and create their own blog posts. Moreover, the users also 
have the ability to comment on other blog posts on the website and the blogs are posted in real-time.

##Screenshot
(insert a screenshot here. You may opt to get rid of the title for it. You need at least one screenshot. Make it actually appear here, don't just add a link.)

Here's a demonstration of how to display an image that's uploaded to this repo:
![screenshot showing env diagram](withdraw.png)

##Concepts Demonstrated
Identify the OPL concepts demonstrated in your project. Be brief. A simple list and example is sufficient. 
* **Message Dispatch** is used when blogs and posts are sent from one function to another. 
* **Set Modification** had a small application in creating the "blog" object for storing blog title and post
* **Cons and Lists* are used when creating "html" tags. (i.e '(html (head (body (section))))). 

##External Technology and Libraries
Briefly describe the existing technology you utilized, and how you used it. Provide a link to that technology(ies).
## #lang racket/base
* This was probably the most important library. It emulated a HTML parser which allowed me to input HTML code and it would 
output how to input that same HTML code in Racket/Scheme/Clojure.

## #lang web-server/insta
* This lang and library was just as important as this allowed me to create the web server which was hosted from my local machine. 

## (require xml)
* With the help of those libraries, it almost felt as if I was programming in pure HTML through a Racket Interface. This was suggested by Dr. Jay McCarthy as this is a useful tool for parsing throught HTML code and create similar code in racket. 


##Favorite Scheme Expressions
#### Muhammed (@mkhalid578)
Each team member should identify a favorite expression or procedure, written by them, and explain what it does. Why is it your favorite? What OPL philosophy does it embody?
Remember code looks something like this:
```scheme
(html (head (title "A Blog..."))
                    (link ([rel "stylesheet"] [href "css/stylesheet.css"] [type "text/css"]))
                    (body ((id "body"))
                     ;;(h2 ((id "header"))(a ((href "webpages/index.html")) "My Blog"))
                     ;;(h2 ((id "gallery")) (a ((href "webpages/gallery.html")) "Our Gallery"))
                     (div ((id "navbar")) (ul ((id "ul_navbar")) (li () (a ((href "standalone.rkt")) "Home"))
                                              (li () (a ((href "webpages/gallery.html")) "OPL Gallery"))
                                              (li () (a ((href "contact.html")) "Contact"))
                                              (li () (a ((href "webpages/about.html")) "About Us"))))
```
This is more of an list of lists, but I find this to be my favorite peace of code. It also shows how creating HTML 
code in Racket slightly more convenient as I do not have to include closing tags, rather I can just close it with parentheses thanks to Dr. Jay McCarthy. 
####Lillian (another team member)
This expression reads in a regular expression and elegantly matches it against a pre-existing hashmap....
```scheme
(let* ((expr (convert-to-regexp (read-line my-in-port)))
             (matches (flatten
                       (hash-map *words*
                                 (lambda (key value)
                                   (if (regexp-match expr key) key '()))))))
  matches)
```

##Additional Remarks
There are 45 operators in the C Language, and 13 of those operators have a side-effect. 

#How to Download and Run
To download this lovely piece of code: 
1. Go on our github repository (www.github.com/oplS16projects/Muhammed-Chhun-Blog/)
2. 

Include what file to run, what to do with that file, how to interact with the app when its running, etc. 
