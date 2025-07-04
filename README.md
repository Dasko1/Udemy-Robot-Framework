# Udemy-Robot-Framework
This is from the Udemy Robot Framework Tutorial

## IMPORTANT
Go to amazon-raw-steps and imitate the file structure: see the AmazonApp.robot Test Suite & its cases, the how the Keyword files call the Page Object (PO) files!

## Keywords
Use the keywords in a test case just like the steps in a manual test! Generally, you can use the SeleniumLibrary keywords, but sometimes you need to create your own keywords that will be in a Resource file that you call in the Settings section!


## Command Line Test Execution
robot -d results Tests/<<script name>>.robot
robot -d results --include smoke Tests/<<script name>>.robot
robot -d C:\Users\dadaskalopoulos\Udemy-Robot-Framework\crm\Tests -i smoke Tests/<<script name>>.robot

The lower two results are for running tests that specify tags!

### Run Multiple Test Suites
#### Write just the directory without declaring any specific test!
robot -d results Tests	

#### This will title the Report to "Full Regression"!
robot -d results -N "Full Regression" Tests			

### Run Single Tests
#### This is an example if test suite Crm.robot had more than one test
robot -d results -t "Should be able to add new customer" Tests/Crm.robot

#### This will run the test with the tag CurrentTestTag
robot -N "Single Test Case" -d results -i CurrentTestCase tests				
