# SE 187 Testing Project: Glass Fish V3 README

Here is the landing page for our 187 testing project. In this repo you'll find everything needed to get work done! 

## Our Goal

Our goal is to test the installation and administration capabilities of the Glassfish V3 webserver. Then automate our tests using some automation tool. 

## Our Strategy

We will test the automated installation script and the administration web interface. How will we do this? Using the power of Cucumber. Cucumber is a highly testing tool that expresses tests in plain text. You can read more about it [http://wiki.github.com/aslakhellesoy/cucumber/](here). Each sentence can be tied to a block of code to run that part of the test. If each block passes, the test passes. By looking at these test files, known as 'features' it should be very clear what exactly is happening. The beauty comes from integration cucumber with other tools like selenium or webrat. In a nut shell, we can accomplish all parts of this project from cucumber. Cucumber can interface with websites and execute commands on them like fill in form fields and click buttons, see if text is present, and that sort of thing. 

## This Repo

This repo is structured as such:

    \
    |- doc (contains all documentation we right or guides for other team members)
    |- test (contains all cucumber test files and code)
    |- readme.md (this file)

## Next Step

**Read the installation guide: in doc/setup\_ruby\_and\_cucumber.md**

* Install Git and setup a GitHub account
* Ask Adam questions
* Think about things that should be tested in the admin section
* Read the feature files I've already written
* Download the glassfish installer linked in the documentation section
* Don't be scared of Ruby! It will make this project easy as pie. Ruby is much better suited for this tasks because it has much richer shell interaction features.


## Links

* [Installation Guide](http://docs.sun.com/app/docs/doc/820-7690)
* [Quick Start Guide](http://docs.sun.com/app/docs/doc/820-7689)
* [Glassfish V3 Documentation](http://docs.sun.com/app/docs/coll/1343.9)
* [Slient Mode Installation Instructions](http://docs.sun.com/app/docs/doc/820-7690/ghmva?a=view)