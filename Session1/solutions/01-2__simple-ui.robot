*** Comments ***
Simple tests to demonstrate basics

*** Settings ***
Resource    ../resources/base.robot
Resource    ../resources/variables.robot
Force Tags    01

*** Test Cases ***

Verify Title
    Title Should Be    ${SITE_TITLE}
    
Navigate To Cameras CSS
    Click Element    css:#menu ul.navbar-nav li a[href*="path=33"]
    Title Should Be    Cameras

Navigate To Cameras XPATH
    Click Element    xpath://nav[@id = 'menu']/div/ul/li/a[contains(@href,"path=33")]
    Title Should Be    Cameras
