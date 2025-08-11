*** Settings ***
Documentation       These are some API tests
Resource            ../Resources/API/SampleAPIApp.robot


*** Variables ***


*** Test Cases ***
Make Simple REST API Calls
    [Tags]  API
    Example GET Request

# Many ways to run:
# robot -d Results Tests/API_Tests.robot
# robot -d Results  -i API Tests
# robot -d Results Tests