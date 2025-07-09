*** Settings ***
Resource                        PO/Home.robot
Resource                        PO/TopNav.robot

*** Variables ***
${URL}                          https://automationplayground.com/front-office/

*** Keywords ***
Go To Home Page And Click Team Link
    Home.Navigate To
    Home.Verify Page Loaded
    # TopNav.Click "Team" Link

Team Link
    Home.Navigate To
    TopNav.Click "Team" Link
