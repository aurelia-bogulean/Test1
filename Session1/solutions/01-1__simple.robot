*** Comments ***
Simple tests to demonstrate basics

*** Keywords ***


*** Settings ***
# Disabling the test setup and teardown, we'll later see why
Test Setup       No Operation
Test Teardown    No Operation
# Need to do the above as the RED does not understand NONE. It would then be like this
#Test Setup       NONE
#Test Teardown    NONE
Force Tags    01

*** Variables ***

${MY_VALUE}    10


*** Test Cases ***

My First Test
    Should Be Equal    1    1

My Second Test
    Should Be True    ${MY_VALUE} > 5    
    
My Third Test
    Should Contain    Hello World    World