# Example test file: tests/api_tests.robot
*** Settings ***
Library                 RequestsLibrary

*** Variables ***
${JSON_USERID_TEXT} =       1
${JSON_ID_TEXT} =           1
${JSON_TITLE_TEXT} =        sunt aut facere repellat provident occaecati excepturi optio reprehenderit
${JSON_BODY_TEXT} =         reprehenderit molestiae ut ut quas totam

*** Keywords ***
Example GET Request
    ${response} =    Get    https://jsonplaceholder.typicode.com/posts/1
    Should Be Equal As Numbers    ${response.status_code}       200

    # Check the response body!
    ${json} =   Set Variable        ${response.json()}
    Should Be Equal As Strings      ${json['userid']}            ${JSON_USERID_TEXT}
    Should Be Equal As Strings      ${json['id']}                ${JSON_ID_TEXT}
    Should Be Equal As Strings      ${json['title']}             ${JSON_TITLE_TEXT}
    Should Be Equal As Strings      ${json['body']}              ${JSON_BODY_TEXT}

    Log    ${json}
