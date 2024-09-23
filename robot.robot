*** Settings ***
Library    RequestsLibrary

*** Variables ***
${API_URL}    http://localhost:5000

*** Test Cases ***
Test Getcode API
    [Documentation]    ทดสอบการเรียก /getcode API
    Create Session    api_session    ${API_URL}
    ${response}    Get Request    api_session    /getcode
    Should Be Equal As Strings    ${response.status_code}    200
    Should Be Equal As Strings    ${response.content}    12345

Test Plus API
    [Documentation]    ทดสอบการเรียก /plus/1/2 API
    Create Session    api_session    ${API_URL}
    ${response}    Get Request    api_session    /plus/1/2
    Should Be Equal As Strings    ${response.status_code}    200
    Should Be Equal As Strings    ${response.content}    3
