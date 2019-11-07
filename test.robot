*** Settings ***
Suite Teardown    Delete All Sessions
Library           Collections
Library           String
Library           RequestsLibrary
Library           OperatingSystem
 
*** Test Cases ***
Get Request with Url Parameters
    [Tags]    get
    Create Session    httpbin    http://httpbin.org
    ${params}=    Create Dictionary    key    value    key2    value2
    ${resp}=    Get Request    httpbin    /get    params=${params}
    Should Be Equal As Strings    ${resp.status_code}    200
    ${jsondata}=    To Json    ${resp.content}
    Should be Equal    ${jsondata['args']}    ${params}
