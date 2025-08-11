*** Settings ***
Library             RequestsLibrary
Library             SeleniumLibrary     # Used only to display something returned from API test!

*** Variables ***

*** Keywords ***
Check Github Username
    # Create the session
    Create Session          my_github_session    https://docs.github.com/en/rest

    # Make the call & capture the result in a variable!
    ${response} =   GET On Session     my_github_session       /api

    # Check the response status
    Should Be Equal As Strings    ${response.status_code}    200

    # Check the response body!
    ${json} =   Set Variable    ${response.json()}
    Should Be Equal As Strings    ${json['login']}    api
    Log    ${json}
