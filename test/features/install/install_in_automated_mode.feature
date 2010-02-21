Feature: Install Glassfish V3 in silent mode
  As a Power user
  I want to provide an installation script for the installer
  In order to create faster installations across many servers
  
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
      | glassfish.Administration.ADMIN_PASSWORD=         | fill_in_this_in |
      | JDKSelection.directory.JDK_FROM_LIST_CHOICE      | fill_in_this_in |
      | RegistrationOptions.regoptions.SKIP_REGISTRATION | fill_in_this_in |
      | updatetool.Configuration.PROXY_HOST              | fill_in_this_in |
      | SOAccountCreation.accountinfo.COUNTRY            | fill_in_this_in |
      | InstallHome.directory.INSTALL_HOME               | fill_in_this_in |
      | RegistrationOptions.regoptions.USE_EXISTINGACCT  | fill_in_this_in |
      | SOAccountCreation.accountinfo.FIRSTNAME          | fill_in_this_in |
      | updatetool.Configuration.ALLOW_UPDATE_CHECK      | fill_in_this_in |
      | glassfish.Administration.ADMIN_USER              | fill_in_this_in |
      | SOAccountCreation.accountinfo.PASSWORD           | fill_in_this_in |
      | SOAccountCreation.accountinfo.COMPANYNAME        | fill_in_this_in |
      | JDKSelection.directory.HIDDEN_JDK                | fill_in_this_in |
      | SOAccountCreation.accountinfo.COUNTRY_DROP_DOWN  | fill_in_this_in |
      | SOAccountCreation.accountinfo.REENTERPASSWORD    | fill_in_this_in |
      | License.license.ACCEPT_LICENSE                   | fill_in_this_in |
      | RegistrationOptions.regoptions.USERNAME          | fill_in_this_in |
      | updatetool.Configuration.BOOTSTRAP_UPDATETOOL    | fill_in_this_in |
      | SOAccountCreation.accountinfo.LASTNAME           | fill_in_this_in |
      | glassfish.Administration.ADMIN_PORT              | fill_in_this_in |
      | RegistrationOptions.regoptions.USERPASSWORD      | fill_in_this_in |
      | JDKSelection.directory.JDK_TYPED_IN_CHOICE       | fill_in_this_in |
      | SOAccountCreation.accountinfo.EMAIL              | fill_in_this_in |
      | JDKSelection.directory.JDK_TYPE_IN               | fill_in_this_in |
      | RegistrationOptions.regoptions.DUMMY_PROP        | fill_in_this_in |

      
    
  Scenario Outline: Bad answers in answer file
    Given I set "<option>" to "<answer>" in the answer file
    When I save my answer file
    Then I run the Glassfish installer
    Then the installer should not finish
    
    # fill in with bad values like wrong path names, stuff like that
    Examples: 
    | RegistrationOptions.regoptions.CREATE_NEWACCT    | fill_in_this_in |
    | glassfish.Administration.HTTP_PORT               | fill_in_this_in |
    | updatetool.Configuration.PROXY_PORT              | fill_in_this_in |
    | glassfish.Administration.ADMIN_PASSWORD=         | fill_in_this_in |
    | JDKSelection.directory.JDK_FROM_LIST_CHOICE      | fill_in_this_in |
    | RegistrationOptions.regoptions.SKIP_REGISTRATION | fill_in_this_in |
    | updatetool.Configuration.PROXY_HOST              | fill_in_this_in |
    | SOAccountCreation.accountinfo.COUNTRY            | fill_in_this_in |
    | InstallHome.directory.INSTALL_HOME               | fill_in_this_in |
    | RegistrationOptions.regoptions.USE_EXISTINGACCT  | fill_in_this_in |
    | SOAccountCreation.accountinfo.FIRSTNAME          | fill_in_this_in |
    | updatetool.Configuration.ALLOW_UPDATE_CHECK      | fill_in_this_in |
    | glassfish.Administration.ADMIN_USER              | fill_in_this_in |
    | SOAccountCreation.accountinfo.PASSWORD           | fill_in_this_in |
    | SOAccountCreation.accountinfo.COMPANYNAME        | fill_in_this_in |
    | JDKSelection.directory.HIDDEN_JDK                | fill_in_this_in |
    | SOAccountCreation.accountinfo.COUNTRY_DROP_DOWN  | fill_in_this_in |
    | SOAccountCreation.accountinfo.REENTERPASSWORD    | fill_in_this_in |
    | License.license.ACCEPT_LICENSE                   | fill_in_this_in |
    | RegistrationOptions.regoptions.USERNAME          | fill_in_this_in |
    | updatetool.Configuration.BOOTSTRAP_UPDATETOOL    | fill_in_this_in |
    | SOAccountCreation.accountinfo.LASTNAME           | fill_in_this_in |
    | glassfish.Administration.ADMIN_PORT              | fill_in_this_in |
    | RegistrationOptions.regoptions.USERPASSWORD      | fill_in_this_in |
    | JDKSelection.directory.JDK_TYPED_IN_CHOICE       | fill_in_this_in |
    | SOAccountCreation.accountinfo.EMAIL              | fill_in_this_in |
    | JDKSelection.directory.JDK_TYPE_IN               | fill_in_this_in |
    | RegistrationOptions.regoptions.DUMMY_PROP        | fill_in_this_in |
    
  Scenario Outline: Answer file is missing required information
    Given I remove "<option>" from answer file
    When I save my answer file
    Then I run the Glassfish installer
    Then the installer should not finish
    
     # each row should be a required confirmation option
      Examples: 
      | RegistrationOptions.regoptions.CREATE_NEWACCT    | 
      | glassfish.Administration.HTTP_PORT               |
      | updatetool.Configuration.PROXY_PORT              |
      | glassfish.Administration.ADMIN_PASSWORD=         |
      | JDKSelection.directory.JDK_FROM_LIST_CHOICE      |
      | RegistrationOptions.regoptions.SKIP_REGISTRATION |
      | updatetool.Configuration.PROXY_HOST              |
      | SOAccountCreation.accountinfo.COUNTRY            |
      | InstallHome.directory.INSTALL_HOME               |
      | RegistrationOptions.regoptions.USE_EXISTINGACCT  |
      | SOAccountCreation.accountinfo.FIRSTNAME          |
      | updatetool.Configuration.ALLOW_UPDATE_CHECK      |
      | glassfish.Administration.ADMIN_USER              |
      | SOAccountCreation.accountinfo.PASSWORD           |
      | SOAccountCreation.accountinfo.COMPANYNAME        |
      | JDKSelection.directory.HIDDEN_JDK                |
      | SOAccountCreation.accountinfo.COUNTRY_DROP_DOWN  |
      | SOAccountCreation.accountinfo.REENTERPASSWORD    |
      | License.license.ACCEPT_LICENSE                   |
      | RegistrationOptions.regoptions.USERNAME          |
      | updatetool.Configuration.BOOTSTRAP_UPDATETOOL    |
      | SOAccountCreation.accountinfo.LASTNAME           |
      | glassfish.Administration.ADMIN_PORT              |
      | RegistrationOptions.regoptions.USERPASSWORD      |
      | JDKSelection.directory.JDK_TYPED_IN_CHOICE       |
      | SOAccountCreation.accountinfo.EMAIL              |
      | JDKSelection.directory.JDK_TYPE_IN               |
      | RegistrationOptions.regoptions.DUMMY_PROP        |