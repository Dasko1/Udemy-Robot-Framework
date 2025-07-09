*** Settings ***
Documentation       This is some basic info about the whole suite!  Run Script: robot -d results tests/Front-Office.robot
Resource            ../Resources/Common.robot
Resource            ../Resources/Front-OfficeApp.robot
Test Setup          Begin Web Test
Test Teardown       End Web Test


*** Variables ***


*** Test Cases ***
Home Page Should Load
    [Documentation]             Verify initial navigation to Home page and that it is loaded.
    [Tags]                      Smoke   home    Test Case 01
    Front-OfficeApp.Go To Home Page And Click Team Link
    Front-OfficeApp.Team Link

Navigate To Team Page And Confirm Page Loaded
    [Documentation]             Click on the Team link in the TopNav, go to the page and verify it's loaded!
    [Tags]                      Smoke   team    Test Case 02
    Front-OfficeApp.Team Link