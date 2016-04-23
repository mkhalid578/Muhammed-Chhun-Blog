# Muhammed-Chhun-Blog
# Project Title: Interactive OPL Web Page

### Statement

Our original plans were to create a blog page with a GUI and backend database if time would allow. After speaking with 
Jay McCarthy, a Professor at UMass Lowell, he simply told us that it is not yet possible to use the GUI Library alongisde
the HTML compiler. So we had to scrap the GUI Library off of our bucket list and try to come up with something that would
still allow us to accomplish our goals. As a result of this unexpected news, there has been a switch in command. I will 
now focus entirely on the front end while Chhun will be focusing on creating a database to help store our blog data. 
In addition to that, Chhun will also be creating some other webpages to give the website more life. I have currently 
created a CSS file that is being utilized from the CS server through my public website, courtesy of the school. 

### Milestone 2

# What Have We Done So Far? 

# @mkhalid578
* I created the blog object which is also mutable: 
```racket
(struct blog (posts) #:mutable)
(struct post (title body comments) #:mutable)
``` 
* I've created HTML webpages that will be visible to students 

```racket 
(define (render-blog-page a-blog request)
  (local [(define (response-generator make-url)
            (response/xexpr
             `(html (head (title "A Blog..."))
                    (link ([rel "stylesheet"] [href "http://www.cs.uml.edu/~mkhalid/stylesheet.css"] [type "text/css"]))
                    (body
                     (img ([src "lambda_man.jpg"]))
                     (h2 "My Blog")
                     ,(render-posts a-blog make-url)
                     (form ((action
                             ,(make-url insert-post-handler)))
                           (input ((name "title")))
                           (input ((name "body")))
                           (input ((type "submit"))))))))
 
```
This a webpage overlay within Racket. A typical HTML website consists of: 
```html
<html>
  <head>
    <link rel = "stylesheet" href = "www.whatever.domain" type = "text/css"> </link>
  </head>
    <body>
      <h1> Stuff </h1>
      <h2> More Stuff </h2>
    </body>
</html>
```
Racket emulates this by using a huge list with cells which represent the individual parts. Since, we do not eat to 
access the data there we do not to use cell accessors such car or cdr. 

The similarities between actual HTML and Racket are as follows: 

In HTML if want to delineate a tag we would simply do as it is illusrated below: 

```html 
<h1> This is a header tag </h1>
<a href = "www.cs.uml.edu/~fredm"> Fred Martin </a>
```
Similarly in Racket we would do as follows: 

```racket
(h1 "This is a header tag")
(a ((href "www.cs.uml.edu/~fredm")) Fred Martin)
```
I also spent a some time with Dr. Jay McCarthy so he could help me understand what I was doing exactly. During 
his office hours I learned that you can also link a CSS file within racket which would do the styling to your HTML 
for you by doing as follows: 

```racket 
(link ([rel "stylesheet"][href "/stylesheet.css"][type "text/css"]))
```
This allowed to me link a CSS file to style my HTML code which I did as mentioned below: 

```css
#p_about {
  padding-top: 40px;
  padding-left: 15px;
  padding-right: 15px;
  font-family: Courier;
  font-size: 16px;
}
p {
  font-family: Courier;
  font-size: 16px;
}
h2 {
	font-family: Verdana;
	font-weight: bold;
	text-align: center;
	padding-top: 25px;
	padding-bottom: 25px;
	color: #acd1b2;
}
span {
  color: #cc0000;
  font-size: 24px;
}
#navbar {
  position:fixed;
  top:10px;
  left:50%;
  margin-left: -254px;
}
#header {
  position: relative;
  top: 40px;
  background-color: #3c4543;
  border-top-left-radius: 15px;
  border-top-right-radius: 15px;
}
li {
	display: inline;
	border: 2px solid #000000;
	font-family: Futura, Tahoma, sans-serif;
	color: #ffffff;
	padding: 5px;
	border-radius: 5px 5px;
	background-color: #cc9323
}
```
# @chhunkim 

So I am working on the GUI of the project or the Graphical User Interface. Me and Muhammed, if we have time at the end, plan to work on the database which will store all of our blogs and their information. 

I first created a HTML page which will create the interface for the website. This is what will be seen by the user when we first run the application. 
```racket
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
  ```
  The code above will pretty much create a HTML website. The tab will be named MC Crew Blog and the head of the website will say "OPL Interactive Blog Page." 
  
  I also added a handler which I got from reading the provided documentation: 
  
  ```racket
   ,(embed/url insert-post-handler)))
                   (input ((name "title")))
                   (input ((name "body")))
                   (input ((type "submit"))))))))
  ```
  This is where the user will add the title of the blog, then the body of the blog, and then hit submit to enter into the 
  data strucutre. 
  
  Muhammed and I met up in the lab today and combined what we have done seperately into one file. 


* The diagram is: 
![alt tag](https://github.com/oplS16projects/Muhammed-Chhun-Blog/blob/master/fp_diagram.png)


### Muhammed Khalid @mkhalid578 (Team Lead) 
will write the....
* Create HTML Overlay in addition to GUI

### Chhun Kim @chhunkim
will work on...





