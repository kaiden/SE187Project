# Project Test Plan

## Introduction

This document sets forth a testing plan for testing aspects of Oracle's Glassfish V3 Java application server. Our team will test installation, configuration, deployment, administration GUI, and monitoring component performance. Our goal is to verify that Glassfish performs as described in the documentation. We will use a variety of tools to test the component. We will test installation and configuration using Ruby and cucumber and test the administration interface using Selenium and Webrat. Testing a software component requires a wide variety of tools. Our will use all these tools to ensure the component is testable properly.

## Scope

The overall scope of the project focuses on the testing of Glassfish V3 in the following areas:

* Installation and deployment of the Glassfish V3 product.
* Functionality of the Admin GUI.
* Diverse configurations of the Admin GUI.
* Performance validation of Glassfish V3.

## Document's Purpose

Our team has created this test plan as a roadmap for evaluating Glassfish V3 according to its documentation. This document describes the functionality that we will test and give an overview of how. When the test report is turned in, use this document to verify them. Creating this document organizes the team and permits the team to ensure that major project-milestones are achieved in a timely manner.

## Test Criteria

The functional and non functional requirements will be tested. These functions were pulled from the Glassfish documentation describing it's intended uses.

### Component Installation

* Testing silent install using an answers file
  * Test that the installer fails if any required information is missing
  * Test that the installer fails if any required information is incorrect
  * Test that the installer completes successfully when all required information is present and correct
  * Test that the installer stores optional configurations variables correctly
  * Test that the server can be started after a valid installation
  * Test that the server creates a directory structure in the intended location
  
### Application Deployement

* Deploying Applications and modules
  * Test that WAR modules can be deployed
  * Test that EJB modules can be deployed
  * Test that Web Services can be deployed

### Checking Admin GUI
  
* Basic Administration Tasks
  * Test that an admin can change their username and password
  * Test that an admin can change server connection information (host/port)
* Domain Management
  * Test that an admin can create new domains
  * Test that an admin can edit domains
  * Test that an admin can delete domains
* User Management
  * Test that an admin can create new users
  * Test that an admin can update existing users
  * Test that an admin can delete existing users
* Application Management
  * Test that an admin can create new applications
  * Test that an admin can update existing applications
  * Test that an admin can delete existing applications
  
### Performance Validation 

* Test admin has access to monitoring information such as:
  * HTTP statistics
  * JVM statistics
  * Web module statistics
* Testing concurrent connections
* Testing maximum number of running applications

## Evaluation Criteria

Test results will be compared expected expected results pulled from the Glassfish V3 documentation. A Test passes if the test results matches the expected results. Tests can be grouped into logical groups. A Test group will pass if all it's sub tests pass.

A note on component configuration: It is impossible to test all possible configuration permutations. Our team will achieve adequate configuration cover through testing many different installation configurations and administrative configurations. The most common configurations will be covered. Achieved automated coverage of many different configurations may be difficult, so our team will rely on manual testing for more interesting configurations.

# Project Organization

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

This section described a general overview of how we intend to make each deliverable.

After the completion of this document we will gather together to discuss test specifications. The test manager (Adam) will work with test engineer (David, Charles, and Carissa) to create tests that meet our specifications. Once test specifications are complete, the test engineers will code the tests. The manager will supervise the test code and make it is acceptable. The test manager will create the test environment and code to interact with Glassfish for testing installation and other aspects. 

After the test engineers have completed coding their tests, they run them using the supplied test framework. If all tests pass they can push to the master repo for the test manager to review. If they tests are not adequate then the manager will work with the test engineers to ensure adequate testing.  After the test engineers have coded all tests, they will complete the manual test reports for that deliverable.

The test manager will work with the automation engineer to create an automated system for running the test suite. The test automation engineer will implement a system to programatically generate the reports found manual test report. Along with providing reports, the test automation engineer will also automate the test suite.

## Repository

All test and documentation files are stored in a Git repository. The repo is hosted on Github. It can be found [here](http://github.com/Adman65/SE187Project). There are two branches: dev and master. Team members can only push to the master branch if all tests are passing. Team members will push to the dev branch in order to share code, or save their changes. Team members can clone the repository to get a full copy of the test suite to run on their computer, given their computer has the test harness setup.

# System Resources

## Hardware

x86 Computers

## Software

* Ubuntu Desktop 9.10 x86
* Ruby 1.8
* Cucumber
* Webrat
* Selenium
* Glassfish V3
* JRE 1.6
* Git

# Test Strategy & Approach

This sections give an overview of the tools we will use to complete our tests.

## Test Approach

* Installation Testing: Equivalence partitioning, black-box testing
* Deployment Testing: Branch based testing
* Admin GUI: Integration style testing
* Performance: Black-box testing


## Testing Tools & Techniques

Testing software components requires many different tools. This section describes our testing stack and how it will work with each section we plan to test. Our primary testing tool is Cucumber. Cucumber is a high level testing framework written Ruby. Here is a quote from the project's description:

  Cucumber is a tool that can execute plain-text functional descriptions as automated tests.
  
Cucumber tests are written as plain text files parsed to execute against code. Here is an example designed to test the automated Glassfish installer:

  Background:
    Given I've downloaded the Glassfish installer
    And I haven't installed Glassfish
    And I haven't created an answer file yet

  Scenario Outline: Install from the answer file
    Given I set "<option>" to "<answer>" in the answer file
    When I save my answer file
    Then I run the Glassfish installer
    And the Glassfish installer should finish
    And I should be able to start the administration interface
    And the "<option>" option should be set to "<answer>" in the glassfish configuration file

    Examples: 
      | option                                           | answer          |
      | RegistrationOptions.regoptions.CREATE_NEWACCT    | fill_in_this_in |
      | glassfish.Administration.HTTP_PORT               | fill_in_this_in |
      | updatetool.Configuration.PROXY_PORT              | fill_in_this_in |
      | glassfish.Administration.ADMIN_PASSWORD          | fill_in_this_in |
      | JDKSelection.directory.JDK_FROM_LIST_CHOICE      | fill_in_this_in |
      
Features are composed into scenarios (which can further relate to equivalence classes). After writing the test description, the test engineer writes the code to complete each step. Test engineers can run all tests at once, or organize them into different categories and run then. Our test will be written in Ruby, but Cucumber allows code to be written in any language. Cucumber also integrates will with other tools such as Selenium or Webrat.

Our team will use Selenium and Webrat to test the Administration GUI. Selenium is a tool to automate testing inside browsers. It can test JavaScript and complete functionality of a website. Webrat is a tool for interacting with static websites. Each tool can fill in forms, click buttons or links, and navigate through pages. This should make testing things such as application deployment from the web interface straight forward.

Cucumber also provides report generation procedures. The test automation engineer can use this functionality to create report according to an agreed upon format.

## Testing Environment

We will be testing on Ubuntu Desktop 9.10 x86 using Virtual Box. The web admin GUI will be tested in FireFox.

## Handing Test Failures or Other Issues

Test issues will arise during the project. If some test is not adequate, an issue will be created on Github's issue tracker and be assigned to an test engineer. The issue will stay unresolved until the test engineer completes it, or the test manager closes it. Github also has a built in bug tracker which we will use to report an bugs we find in GlassFish


# Test Strategy and Approach

## Unit Testing Plan

Since our team does not have access to the component's source code we will have to do black box testing to verify the component's correctness.

## System Testing Plan (rewrite)

System Testing verifies that the system meets the previously agreed upon requirements.  To ensure that the correction of defects found during testing is done efficiently therefore maximizing the iteration of test cycles, a clearly defined set of objectives is established.
  
* Verify that the system satisfies the functional requirements (as described in the documentation)
* Verify that the system satisfies the nonfunctional requirements (as described in the performance section)

## Reports and Documentation

Reports will be published for each deliverable. When a test engineer adds more tests or completes tests, they will log their actions in the commit message. Further documentation can be placed inside the /doc folder inside the repository. Each commit message should have the results of the test suite run in order to track progress. Any other documentation, such as tutorials or setup information will be placed in the /doc folder as well.

# Appendix

## Schedule

See /doc/schedule.xls

## Test Template & Test Results Template

I'm not sure if these are required. Some group's didn't include them.

# Revisions

* 2010-02-28, Adam Hawkins
* 2010-02-25, Charles Henry  
* 2010-02-23, Adam Hawkins

