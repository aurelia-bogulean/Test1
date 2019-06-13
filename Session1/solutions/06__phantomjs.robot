*** Comments ***
Test cases demonstrating the Keyword-driven style

*** Settings ***
Library     Process
Resource    ../resources/base.robot
Resource    ../resources/variables.robot
Force Tags    06
Test Setup    Start PhantomJS

*** Variables ***
${BROWSER}       phantomjs
${PHANTOMCMD}    C:/phantomjs/bin/phantomjs 

*** Keywords ***
Start PhantomJS
    Start Process   ${PHANTOMCMD}
    Open Browser    ${BASEURL}    ${BROWSER}    MainBrowser    http://localhost:4444        
    
Verify Frontpage
    Title Should Be    ${SITE_TITLE}

Search For Product
    [Arguments]    ${search}
    Input Text    css:#search input    ${search}
    Click Element    css:#search button

Add Product Into Cart
    [Arguments]    ${productTitle}
    Wait Until Page Contains    ${productTitle}        
    Click Element    xpath://a[text()='${productTitle}']
    Click Element    button-cart

Open Cart
    Click Element    css:div#cart button
    Wait Until Element Is Visible    xpath://a[contains(@href,"checkout/cart")]
    Click Element    xpath://a[contains(@href,"checkout/cart")]

Verify Total And Checkout
    [Arguments]    ${totalPrice}
    Element Should Contain    //td/strong[text()="Total:"]/../following-sibling::td    ${totalPrice}
    Click Element    xpath://div/a[contains(text(),"Checkout")]
    Title Should Be    Checkout

*** Test Cases ***

Search For Product And Add It To Cart
    Verify Frontpage
    Search For Product           touch
    Add Product Into Cart        HTC Touch HD
    Open Cart
    Verify Total And Checkout    122.00