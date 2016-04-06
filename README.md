# Muhammed-Chhun-Blog
# Project Title: Interactive OPL Blog Page

### Statement

This project allows users to post thier daily blog which allows other users to make comments and share thier thoughts on the blog. Users can upload thier photos as well as share vidoes they like from youtube or any other sites by copying URL of the site. All blogs, photos, and videos posted will be stored on a database provided if we have enough time. Personally, we think that this project is interesting because we could post daily activities as a dairy, and we think that a social media is not supposed to be just personal information and having friends added each other like Facebook or Instragram. However, a post could be from an anonymous person about a story as a general knowlegde or some activities that we barely see on the daily news, so others can hear about it. We hope from this project we could learn more not only just learning scheme, but also how to use different libraries already within the scheme language. Morever, we hope to create something for public uses as well. 

### Analysis
Explain what approaches from class you will bring to bear on the project. Be explicit: e.g., will you use recursion? How? Will you use map/filter/reduce? How? Will you use data abstraction? Will you use object-orientation? Will you use functional approaches to processing your data? Will you use state-modification approaches? A combination?

The approaches that we will bring from class is a little bit of recursion. Although recursion has been the main point
in this class, our use of recursion is very limited. There will be some data abstraction as we will be working with potential data that will be uploaded to the webpage (i.e pictures, videos, blog posts). In terms of object oriented programming, we did create a BLOG object which represents a blog post. So in a sense, you can consider this object-oriented programming. A huge part of this project will rely heavily on state modification approaches. We want to give people the ability to "modify" posts. About 60-70% of our project, again, is going to be influenced by state modifications. 

### Data set or other source materials
If you will be working with existing data, where will you get those data from? (Dowload it from a website? access it in a database? create it in a simulation you will build....)

We plan to create a local database that will be saved on our machine. Chhun and I hope to have a local database stored 
on machines and play around with that IF God wills. This fictional database will hopefully store any posts and comments made to the website. Currently, we have it such that when upload a blog, a post, and a comment it will only store it as long as the website is running. As soon as we kill it, it does not save anything. 

Do your homework here: if you are pulling data from somewhere, actually go download it and look at it. Explain in some detail what your plan is for accomplishing the necessary processing.

A lot of what we have so far is code. We have been heavily influenced by the racket libraries and the documentation. I cannot stress how helpful the documentation is. It has played a vital role in helping us with creating the website. And Jay McCarthy is so helpful whenever I had any questions. 

### Deliverable and Demonstration
Explain exactly what you'll have at the end. What will it be able to do at the live demo?

We want to be able to show at least that we have localhosted website, that will allow posts to be uploaded, comments can be made to the uploaded posts, and users to upload pictures within their blog posts. 

What exactly will you produce at the end of the project? A piece of software, yes, but what will it do? Here are some questions to think about (and answer depending on your application).

Well a piece of software. It will be a web page that will behave as a blogspot. It will allow random people to upload 
random posts. Then people should be able to comment on those posts. Also include some error checking to make sure if a user wanted to add or not add the comment he or she wishes to add. 

Will it run on some data, like batch mode? Will you present some analytical results of the processing? How can it be re-run on different source data?

We are hoping to have the data that is uploaded to the site to be store into a database. This is something we are still trying to wrap our minds around and are hoping is possible to accomplish in the time that we have. 

Will it be interactive? Can you show it working? This project involves a live demo, so interactivity is good.

At the end of the project, we expect to successfully implement all encoded functions in racket. Firstly, we have to make sure the creating blog function works accurately then be sure to store it into the database, then the updating posted blog function. Adding/Updating/Removing comment funciton will be afterward. Secondly, we will implement the upload photos/videos and share videos by URL function and be sure it is implemented correctly. Lastly and the most important part of this software, will be the implementation of the database. It is so important because all posted blogs will be stored in the database. Interactively, we think this software should be successfully executed for all operating system as long as it is capatible with the Dr.racket program, and we will test that part at the end of the project before the final presentation if we have time.

### Evaluation of Results
How will you know if you are successful? 
If you include some kind of _quantitative analysis,_ that would be good.

This project will be completely successful when we implement all required functoins correctly, and it passes testing processes.

## Architecture Diagram
Upload the architecture diagram you made for your slide presentation to your repository, and include it in-line here.

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
Our first milestone will be User Interface, Creating/Updating a blog, and Adding/Updating/Removing comments. 

### Second Milestone (Fri Apr 22)
Our second milestone will be Uploading Photos/Videos, and Sharing videos by URL

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
Function responsible for allowing users to upload pictures
Function responsible for allowing users to share links
Construct a graphical user interface
Work on a database

### Chhun Kim @chhunkim
will work on...
Function to allow users to update a blog which they have alread posted
Function that will allow users to upload and/or embed videos to the blog
Construct a graphical user interface
Work on a database

