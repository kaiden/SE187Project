# Project Test Plan
***
## Introduction

This document sets forth a testing plan for testing aspects of Oracle's Glassfish V3 Java application server. Our team will test installation, configuration, deployment, administration GUI functionaly, and monitoring component peformance. 

## Scope
The overall scope of the project focuses on the testing of Glassfish V3 in the following areas:
* Installation and deployment of the Glassfish V3 product.
* Functionality of the Admin GUI.
* Diverse configurations of the Admin GUI.
* Performance validation of Glassfish V3.
## Document's Purpose

Our team has created this test plan as a roadmap for evaluating Glassfish V3 according to its documenation. 
The usage of this document permits the team to ensure that major project-milestones are acheived in a timely manner.
## Test Criteria

### Installation and deployment

* Testing silent install using generated configuration file
* Deploying Applications and modules
* Modifying the configuration of web applications or modules
* web module deployment guidelines
* ejb module deploymnet guidelines
* deploying a connector module
* assembling and deploying an application client module

### Checking Admin GUI
  
* Test default settings
* Configuring domains
* Change JVM
* Configure Logging
* Configure monitoring service
* asaadmin
  
### Peform adequate testing for diverse configurations
* Silent installation mode with variation in the required fields of the answers file 
* Various configurations within the admin gui
  
### Performance Validation 

* [monitoring?](http://docs.sun.com/app/docs/doc/820-4495/ablur?a=view)

## Evaluation Criteria

Test results will be compared expected expected results pulled from the Glassfish V3 documentation. A Test passes if the test results matches the expected results. Tests can be grouped into logical groups. A Test group will pass if all tests pass.

# Project Organization
***

## Team Roles

* Adam Hawkins: Test Manager
* Charles Henry: Test Engineer
* Carrisa Wang: Test Automation Engineer
* David Deng: Test Engineer

## Deliverables

* Test Plan: 3/4/2010
* Test design specification: 3/25/2010
* Manual Test Report: 4/22/2010
* Test automation report: 5/13/2010
* All Reports on CD: 5:13/2010

## Component Testing Process

## Repository

All test and documentation files are stored in a Git repository. The repo is hosted on Github. It can be found [here](http://github.com/Adman65/SE187Project).

# System Resources
***
## Hardware

x86 Computers

## Software

* Ubuntu Desktop 9.10 x86
* Ruby 1.8
* Cucumber
* Webrat
* Selnium
* Glassfish V3
* JRE 1.6
* Git

# Test Strategy & Approach
***

## Test Approach

This test plan defines the overall approach for testing the Glassfish V3 software component. 

* Installation Testing
  * Run silent installer with different configurations, and verify the installation
* Web Admin GUI
  *
* Software Configuration
* Performance

## Testing Tools & Techniques
Using Ubuntu, either natively or running on a Virtual Machine, we will
partition the product into mutliple domains of testable artifacts.
We will also be using automation tools such as cucumber to ultimately
automate the tests performed via manual testing. 
## Testing Environment
We will be testing in a UNIX environment
## Unit Testing Plan

## System Testing Plan

## Reports

# Appendix
***
## Schedule
Adam, are you planning on using the spreadsheet format and attaching here?
## Test Case Template
Charlie is sending this to the team...since I cannot push from my windows environment.  Please examine and modify if needbe
## Test Results Template


# Revisions
  
* 2010-02-23, Adam Hawkins
* 2010-02-25, Charles Henry
