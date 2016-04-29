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
* **Cons and Lists** are used when creating "html" tags. (i.e '(html (head (body (section))))). 

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

####Chhun Kim (@chhunkim)
```scheme
(define (save-blog! a-blog)
  (local [(define (write-to-blog)
            (write a-blog))]
    (with-output-to-file (blog-home a-blog)
      write-to-blog
      #:exists 'replace)))
 
```
This acts as one of the main parts for creating a local database on the machine. It is also my 
favorite because it took forever to write but it is so worth it. Without this chunks of code, I believe
the blog or comments will not be stored on the webpage. It is powerful, but short and elegant.

##Additional Remarks
There are 45 operators in the C Language, and 13 of those operators have a side-effect. 


# How to Download and Run
## To download this lovely piece of code: 
* Go on our github repository (www.github.com/oplS16projects/Muhammed-Chhun-Blog/)
* Download all the files within the repository to your local machine
* on a Mac, on Finder go to "Go To Folder"
* Type this is in: /Applications/Racket v6.4/share/pkgs/web-server-lib/web-server/default-web-root/htdocs/
* Go into the servlet folder
* Copy the css, dist, images, src, and webpages folders into that directory
* Copy the test.rkt, model.rkt, and Gruntfile.js also into the same directory. 
* Now that we have the necessary files, we can open up the test.rkt file 
* Hit Run at the top right, and HTML webpage should pop up into a browser 
* You will not be created wit the website and blog as freely as you would like. 


Include what file to run, what to do with that file, how to interact with the app when its running, etc. 
