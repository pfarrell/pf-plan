# CMS - Simple Content Management System

### What is this?  
This is a static site to house notes

### Why not use one of a million apps that can already do this? 
Because we can.

### What are your goals?  
Use this as a personal repository to track notes and documents

### No SPA or JS Framework?
At some point, this may make sense, but I'm a old school believer in the open web. For a web site serving static content, single page apps and JavaScript fraeworks are overkill.  We're going to avoid them in this project.

### No database?
With every layer we add to our application, we increase it's complexity, maintenance, and dependencies.  Keeping these to a minimum will let us deliver more rapidly.  A database is one of the most incredible tools in our arsenal, but it constrains a few decisions and make some things really hard.  Versioned content, if we use git, itself, as our file system,  is something we'll get for free.  It remains to be seen how well this will work, but we'll cover that more in the next section, project layout.  Authentication and authorization will be our most challenging thing, so we might add Sqlite when the time comes.

### What technologies?
* Python 3
* Flask: for serving our content, and exposing some admin capabilities
* git: for storing and serving files themselves
* Solr: for implementing actual search of our content
