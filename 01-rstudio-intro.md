---
layout: page
title: R for RNAseq analysis
subtitle: Project management with RStudio
minutes: 20
---



> ## Learning Objectives {.objectives}
>
> * To gain familiarity with the various panes in the RStudio IDE
> * To gain familiarity with the buttons, short cuts and options in the RStudio IDE
> * To be able to manage your workspace in an interactive R session
> * To be able to create self-contained projects in RStudio
> * To manage and preserve data
>

## Introduction to RStudio

Throughout this lesson, we're going to teach you some of the fundamentals of
the R language as well as some best practices for organising code for
scientific projects that will make your life easier.

We'll be using RStudio: a free, open source R integrated development
environment. It provides a built in editor, works on all platforms (including
on servers) and provides many advantages such as integration with version
control and project management.

**Basic layout**

When you first open RStudio, you will be greeted by three panels:

  * The interactive R console (entire left)
  * Environment/History (tabbed in upper right)
  * Files/Plots/Packages/Help/Viewer (tabbed in lower right)

Once you open files, such as R scripts, an editor panel will also open
in the top left.

## Work flow within RStudio
There are two main ways one can work within RStudio.

1. Test and play within the interactive R console then copy code into
a .R file to run later.
   *  This works well when doing small tests and initially starting off.
   *  It quickly becomes laborious
2. Start writing in an .R file and use RStudio's command / short cut
to push current line, selected lines or modified lines to the
interactive R console.
   * This is a great way to start; all your code is saved for later
   * You will be able to run the file you create from within RStudio
   or using R's `source()`  function.

> ## Tip: Running segments of your code {.callout}
>
> RStudio offers you great flexibility in running code from within the editor
> window. There are buttons, menu choices, and keyboard shortcuts. To run the
> current line, you can 1. click on the `Run` button just above the editor panel,
> or 2. select "Run Lines" from the "Code" menu, or 3. hit Ctrl-Enter in Windows
> or Linux or Command-Enter on OS X. (This shortcut can also be seen by hovering
> the mouse over the button). To run a block of code, select it and then `Run`.
> If you have modified a line of code within a block of code you have just run,
> there is no need to reselct the section and `Run`, you can use the next button
> along, `Re-run the previous region`. This will run the previous code block
> inculding the modifications you have made.

## Your RStudio environment

Much of your time in R will be spent in the R interactive
console. This is where you will run all of your code, and can be a
useful environment to try out ideas before adding them to an R script
file. This console in RStudio is the same as the one you would get if
you just typed in `R` in your commandline environment.

The first thing you will see in the R interactive session is a bunch
of information, followed by a ">" and a blinking cursor. In many ways
this is similar to the shell environment you learned about during the
shell lessons: it operates on the same idea of a "Read, evaluate,
print loop": you type in commands, R tries to execute them, and then
returns a result.

## Using R as a calculator

The simplest thing you could do with R is do arithmetic:


~~~{.r}
1 + 100
~~~



~~~{.output}
[1] 101

~~~

And R will print out the answer, with a preceding "[1]". Don't worry about this
for now, we'll explain that later. For now think of it as indicating ouput.

Just like bash, if you type in an incomplete command, R will wait for you to
complete it:

~~~ {.r}
> 1 +
~~~

~~~ {.output}
+
~~~

Any time you hit return and the R session shows a "+" instead of a ">", it
means it's waiting for you to complete the command. If you want to cancel
a command you can simply hit "Esc" and RStudio will give you back the ">"
prompt.

> ## Tip: Cancelling commands {.callout}
>
> If you're using R from the commandline instead of from within RStudio,
> you need to use `Ctrl+C` instead of `Esc` to cancel the command. This
> applies to Mac users as well!
>
> Cancelling a command isn't just useful for killing incomplete commands:
> you can also use it to tell R to stop running code (for example if its
> taking much longer than you expect), or to get rid of the code you're
> currently writing.
>

> ## Tip: Warnings vs. Errors {.callout}
>
> Pay attention when R does something unexpected! Errors, like above,
> are thrown when R cannot proceed with a calculation. Warnings on the
> other hand usually mean that the function has run, but it probably
> hasn't worked as expected.
>
> In both cases, the message that R prints out usually give you clues
> how to fix a problem.
>


## R Packages

It is possible to add functions to R by writing a package, or by
obtaining a package written by someone else. As of this writing, there
are over 7,000 packages available on CRAN (the comprehensive R archive
network). R and RStudio have functionality for managing packages:

* You can see what packages are installed by typing
  `installed.packages()`
* You can install packages by typing `install.packages("packagename")`,
  where `packagename` is the package name, in quotes.
* You can update installed packages by typing `update.packages()`
* You can remove a package with `remove.packages("packagename")`
* You can make a package available for use with `library(packagename)`

For this workshop we will also be using packages from
These can all be obtained from Bioconductor, except for Glimma (see below).

Open RStudio and run the following commands to install packages from [Bioconductor](https://www.bioconductor.org/). These are installed slightly differently. For example, to install the package `limma`:


~~~{.r}
source("http://bioconductor.org/biocLite.R")
biocLite("limma")
~~~

## RStudio project management

The scientific process is naturally incremental, and many projects
start life as random notes, some code, then a manuscript, and
eventually everything is a bit mixed together.

<blockquote class="twitter-tweet"><p>Managing your projects in a reproducible fashion doesn't just make your science reproducible, it makes your life easier.</p>&mdash; Vince Buffalo (@vsbuffalo) <a href="https://twitter.com/vsbuffalo/status/323638476153167872">April 15, 2013</a></blockquote>
<script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>

Most people tend to organize their projects like this:

![](fig/bad_layout.png)

There are many reasons why we should *ALWAYS* avoid this:

1. It is really hard to tell which version of your data is
the original and which is the modified;
2. It gets really messy because it mixes files with various
extensions together;
3. It probably takes you a lot of time to actually find
things, and relate the correct figures to the exact code
that has been used to generate it;

A good project layout will ultimately make your life easier:

* It will help ensure the integrity of your data;
* It makes it simpler to share your code with someone else
(a lab-mate, collaborator, or supervisor);
* It allows you to easily upload your code with your manuscript submission;
* It makes it easier to pick the project back up after a break.

## A possible solution

Fortunately, there are tools and packages which can help you manage your work effectively.

One of the most powerful and useful aspects of RStudio is its project management
functionality. We'll be using this today to create a self-contained, reproducible
project.


> ## Challenge: Creating a self-contained project {.challenge}
>
> We're going to create a new project in RStudio:
>
> 1. Click the "File" menu button, then "New Project".
> 2. Click "New Directory".
> 3. Click "Empty Project".
> 4. Type in the name of the directory to store your project, e.g. "my_project".
> 5. Click the "Create Project" button.
>

Now when we start R in this project directory, or open this project with RStudio,
all of our work on this project will be entirely self-contained in this directory.

## Best practices for project organisation

Although there is no "best" way to lay out a project, there are some general
principles to adhere to that will make project management easier:

## Treat data as read only

This is probably the most important goal of setting up a project. Data is
typically time consuming and/or expensive to collect. Working with them
interactively (e.g., in Excel) where they can be modified means you are never
sure of where the data came from, or how it has been modified since collection.
It is therefore a good idea to treat your data as "read-only".

## Data Cleaning

In many cases your data will be "dirty": it will need significant preprocessing
to get into a format R (or any other programming language) will find useful. This
task is sometimes called "data munging". I find it useful to store these scripts
in a separate folder, and create a second "read-only" data folder to hold the
"cleaned" data sets.

## Treat generated output as disposable

Anything generated by your scripts should be treated as disposable: it should
all be able to be regenerated from your scripts.

There are lots of different was to manage this output. I find it useful to
have an output folder with different sub-directories for each separate
analysis. This makes it easier later, as many of my analyses are exploratory
and don't end up being used in the final project, and some of the analyses
get shared between projects.

> ## Tip: ProjectTemplate - a possible solution {.callout}
>
> One way to automate the management of projects is to install the third-party package, `ProjectTemplate`.
> This package will set up an ideal directory structure for project management.
> This is very useful as it enables you to have your analysis pipeline/workflow organised and structured.
> Together with the default RStudio project functionality and Git you will be able to keep track of your
> work as well as be able to share your work with collaborators.
>
> 1. Install `ProjectTemplate`.
> 2. Load the library
> 3. Initialise the project:
>
> 
> ~~~{.r}
> install.packages("ProjectTemplate")
> library(ProjectTemplate)
> create.project("../my_project", merge.strategy = "allow.non.conflict")
> ~~~
>
> For more information on ProjectTemplate and its functionality visit the
> home page [ProjectTemplate](http://projecttemplate.net/index.html)
>

## Separate function definition and application

The most effective way I find to work in R, is to play around in the interactive
session, then copy commands across to a script file when I'm sure they work and
do what I want. You can also save all the commands you've entered using the
`history` command, but I don't find it useful because when I'm typing its 90%
trial and error.

When your project is new and shiny, the script file usually contains many lines
of directly executed code. As it matures, reusable chunks get pulled into their
own functions. It's a good idea to separate these into separate folders; one
to store useful functions that you'll reuse across analyses and projects, and
one to store the analysis scripts.

> ## Tip: avoiding duplication {.callout}
>
> You may find yourself using data or analysis scripts across several projects.
> Typically you want to avoid duplication to save space and avoid having to
> make updates to code in multiple places.
>
> In this case I find it useful to make "symbolic links", which are essentially
> shortcuts to files somewhere else on a filesystem. On Linux and OS X you can
> use the `ln -s` command, and on windows you can either create a shortcut or
> use the `mklink` command from the windows terminal.
>

## Save the data in the data directory

Now we have a good directory structure we will now place/save the data file in the `data/` directory.

Download the RNAseq data for this workshop.

- Day 1: [https://figshare.com/s/1d788fd384d33e913a2a](https://figshare.com/s/1d788fd384d33e913a2a)
- Day 2: [https://figshare.com/s/f5d63d8c265a05618137](https://figshare.com/s/f5d63d8c265a05618137)

> ## Challenge {.challenge}
>
> 1. Create a `/data` directory. In the bottom right panel select the "Files" tab,
then "New Folder", then type "data" and click "OK".
> 2. Download the RNAseq data using the links above (if you find the internet is slow, you can just download Day 1 for now).
> 3. Click "Download all" (this will download a zip file).
> 4. Unzip the file (usually double clicking on it will do the trick).
> 5. Move all the files inside into the `data/` folder within your project.
>
> We will load and inspect these data later.
>
