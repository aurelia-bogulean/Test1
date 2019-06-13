*** Comments ***
Test cases demonstrating the Behavior-driven style

*** Settings ***
Resource    ../resources/base.robot
Resource    ../resources/variables.robot
Force Tags    05

*** Keywords ***
Frontpage Is Open
    Title Should Be    ${SITE_TITLE}

User Search For Product ${searchPhrase}
    Input Text    css:#search input    ${searchPhrase}
    Click Element    css:#search button

User Add Product ${productTitle} Into Cart
    Wait Until Page Contains    ${productTitle}        
    Click Element    xpath://a[text()='${productTitle}']
    Click Element    button-cart

Open Cart
    Click Element    css:div#cart button
    Wait Until Element Is Visible    xpath://a[contains(@href,"checkout/cart")]    
    Click Element    xpath://a[contains(@href,"checkout/cart")]

Cart Total Should Be ${totalPrice}
    Open Cart
    Element Should Contain    //td/strong[text()="Total:"]/../following-sibling::td    ${totalPrice}
    Click Element    xpath://div/a[contains(text(),"Checkout")]
    Title Should Be    Checkout

*** Test Cases ***

Search For Product And Add It To Cart
    Given Frontpage Is Open
    When User Search For Product touch
    and User Add Product HTC Touch HD Into Cart
    Then Cart Total Should Be 122.00