# Udemy-Robot-Framework
This is from the Udemy Robot Framework Tutorial

## Keywords
Use the keywords in a test case just like the steps in a manual test! Generally, you can use the SeleniumLibrary keywords, but sometimes you need to create your own keywords that will be in a Resource file that you call in the Settings section!


## Command Line Test Execution
robot -d results Tests/<<script name>>.robot
robot -d results --include smoke Tests/<<script name>>.robot
robot -d C:\Users\dadaskalopoulos\Udemy-Robot-Framework\crm\Tests -i smoke Tests/<<script name>>.robot

The lower two results are for running tests that specify tags!

### Run Multiple Test Suites
robot -d results Tests								Write just the directory without declaring any specific test!
robot -d results -N "Full Regression" Tests			This will title the Report to "Full Regression"!

### Run Single Tests
robot -d results -t "Should be able to add new customer" Tests/Crm.robot	This is an example if Crm.robot had more than one test 
robot -N "Single Test Case" -d results -i CurrentTestCase tests				This will run the test with the tag CurrentTestTag
