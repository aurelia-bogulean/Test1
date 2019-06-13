*** Comments ***
Test cases demonstrating the Data-driven style with suite level Test Template

*** Settings ***
Resource    ../resources/base.robot
Resource    ../resources/variables.robot
Force Tags    04-2
# Setting the test template for all the tests in this suite
Test Template    Search For ${searchPhrase} And Add ${productName} Cart And Verify Total Price ${totalPrice}

*** Keywords ***
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

Search For ${searchPhrase} And Add ${productName} Cart And Verify Total Price ${totalPrice}
    Verify Frontpage
    Search For Product           ${searchPhrase}
    Add Product Into Cart        ${productName}
    Open Cart
    Verify Total And Checkout    ${totalPrice}

# You can add column names like below to help understanding what those values are
*** Test Cases ***               PHRASE    PRODUCT NAME     PRICE

Search And Verify TouchPad       touch      HTC Touch HD    122.00
Search And Verify BakBook        macbook    MacBook Air     1,202.00
Search And Verify Mamoth Cam     nikon      Nikon D300      98.00