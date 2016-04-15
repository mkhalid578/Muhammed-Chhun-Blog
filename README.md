# Muhammed-Chhun-Blog
# Project Title: Interactive OPL Blog Page

### Statement

This project allows users to post thier daily blog which allows other users to make comments and share thier thoughts on the blog. Users can upload thier photos as well as share vidoes they like from youtube or any other sites by copying URL of the site. All blogs, photos, and videos posted will be stored on a database provided if we have enough time. Personally, we think that this project is interesting because we could post daily activities as a dairy, and we think that a social media is not supposed to be just personal information and having friends added each other like Facebook or Instragram. However, a post could be from an anonymous person about a story as a general knowlegde or some activities that we barely see on the daily news, so others can hear about it. We hope from this project we could learn more not only just learning scheme, but also how to use different libraries already within the scheme language. Morever, we hope to create something for public uses as well. 

### Milestone 1

# What Have We Done So Far? 

# @mkhalid578
* I created the blog object which is also mutable: 
```racket
(struct blog (posts) #:mutable)
(struct post (title body comments) #:mutable)
``` 
* I also created two saved fictictious blogs which have no meaning but these are the blog posts that will appear at startup

```racket 
(define BLOG
  (blog
   (list (post "Batman V. Superman"
               "This film was just terrible and it could have been better if Zack Synder knew how to direct a
                 better movie. Morever he should use more practical effects"
               (list))
         (post "Captain America: Civil War"
               "This film is going to be awesome. I look forward to watching this movie right after I finish my OPL Final Exam!"
               (list "First!")))))
```
Professor Martin suggest that we start with the hardest thing first and that is what Chhun has started 
Chhun is currently working on the GUI individually for the project. As we move forward, the responsbilities have 
slightly changed. I have essentially created a blog which can now have a title, a body, and the ability to add comments 
to these blogs. Moreover, I also am going to include a comment counter which display the number of comments on a 
particular blog. 

# @chhunkim 


* The diagram is: 
![alt tag](https://github.com/oplS16projects/Muhammed-Chhun-Blog/blob/master/fp_diagram.png)

* We have a web server which we will accomplish using #lang web-server/insta 
* User Interface will be implemented by both Chhun and I (RacketUI)
* Then create a blog Chhun Kim
* Share the links using the (net/url) library Muhammed Khalid
* Upload and include pictures using (2htdp/image) library Muhammed Khalid
* Upload videos Chhun Kim
* A Database for storing blog posts (Muhammed Khalid & Chhun Kim)

Create several paragraphs of narrative to explain the pieces and how they interoperate.

## Schedule
Explain how you will go from proposal to finished product. 

There are three deliverable milestones to explicitly define, below.

The nature of deliverables depend on your project, but may include things like processed data ready for import, core algorithms implemented, interface design prototyped, etc. 

You will be expected to turn in code, documentation, and data (as appropriate) at each of these stages.

Write concrete steps for your schedule to move from concept to working system. 

### First Milestone (Fri Apr 15)
Our first milestone will be User Interface, Creating/Updating a blog, and Adding comments. 

### Second Milestone (Fri Apr 22)
Our second milestone will be creating a RacketUI (Chhun Kim), Uploading Photos/Videos (Muhammed Khalid, and Sharing videos by URL (Muhammed Khalid)

### Final Presentation (last week of semester)
Before final presentation, Implementing the database, testing the project if we can accomplish it. 

## Group Responsibilities
Here each group member gets a section where they, as an individual, detail what they are responsible for in this project. Each group member writes their own Responsibility section. Include the milestones and final deliverable.

**Additional instructions for teams of three:** 
* Remember that you must have prior written permission to work in groups of three (specifically, an approved `FP3` team declaration submission).
* The team must nominate a lead. This person is primarily responsible for code integration. This work may be shared, but the team lead has default responsibility.
* The team lead has full partner implementation responsibilities also.
* Identify who is team lead.

In the headings below, replace the silly names and GitHub handles with your actual ones.

### Muhammed Khalid @mkhalid578 (Team Lead) 
will write the....
* Function responsible for allowing users to upload pictures
* Function responsible for adding blogs
* Adding comments to blogs


### Chhun Kim @chhunkim
will work on...
* Function to allow users to update a blog which they have alread posted
* Function that will allow users to upload and/or embed videos to the blog
* Construct a graphical user interface

### Together 

will work on...
* Database if time allows. 



