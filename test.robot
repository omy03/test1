*** Settings ***
Suite Teardown    Delete All Sessions
Library           Collections
Library           String
Library           RequestsLibrary
Library           OperatingSystem
 
*** Test Cases ***
Get Request gnb force
    [Tags]	get
    Create Session	assist	http://assist-api-stg.wemakeprice.com/gnb/forceUpdateGnbCacheData
    ${resp}=	Get Request	assist	/
    Should Be Equal As Strings	${resp.status_code}	200

Get Request gnb pc
    [Tags]      get
    Create Session      assist  http://assist-api-stg.wemakeprice.com/gnb/pc
    ${resp}=    Get Request     assist  /
    Should Be Equal As Strings  ${resp.status_code}     200

Get Request app
    [Tags]      get
    Create Session      assist  http://assist-api-stg.wemakeprice.com/app/getAppExamination
    ${resp}=    Get Request     assist  /
    Should Be Equal As Strings  ${resp.status_code}     200

Get Request common lite
    [Tags]      get
    Create Session      assist  http://assist-api-stg.wemakeprice.com/common/lite
    ${resp}=    Get Request     assist  /
    Should Be Equal As Strings  ${resp.status_code}     200

Get Request common unite
    [Tags]      get
    Create Session      assist  http://assist-api-stg.wemakeprice.com/common/unite
    ${resp}=    Get Request     assist  /
    Should Be Equal As Strings  ${resp.status_code}     200

Get Request app setA
    [Tags]      get
    Create Session      app  http://app-api-stg.wemakeprice.com/config/v2/cache/setAssociateAppVersion
    ${resp}=    Get Request     app  /
    Should Be Equal As Strings  ${resp.status_code}     200
