*** Comments ***
Test cases demonstrating the plain test case

*** Settings ***
Resource    ../resources/base.robot
Resource    ../resources/variables.robot
Force Tags    02

*** Test Cases ***

Search For Product And Add It To Cart
    Title Should Be    ${SITE_TITLE}
    Input Text    css:#search input    Touch
    Click Element    css:#search button
    Wait Until Page Contains    HTC Touch HD        
    Click Element    xpath://a[text()='HTC Touch HD']
    Click Element    button-cart
    Click Element    css:div#cart button    
    Wait Until Element Is Visible    xpath://a[contains(@href,"checkout/cart")]
    Click Element    xpath://a[contains(@href,"checkout/cart")]
    Element Should Contain    //td/strong[text()="Total:"]/../following-sibling::td    122.00
    Click Element    xpath://div/a[contains(text(),"Checkout")]
    Title Should Be    Checkout