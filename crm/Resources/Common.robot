*** Settings ***
Library     SeleniumLibrary


*** Variables ***


*** Keywords ***
Begin Web Test
    # Initialize Selenium
    Set Selenium Speed          .2s
    Set Selenium Timeout        10s
    Log                         Starting the test case!

    # Open the browser to the target web page!
    Open Browser                about:blank   ${BROWSER}
    Maximize Browser Window


End Web Test
    Close All Browsers