*** Comments ***
Test cases demonstrating the Data-driven style

*** Settings ***
# Disable the test setup added in __init__ as we need to reset the browser between the tests cases
Test Setup    No Operation
Resource    ../resources/base.robot
Resource    ../resources/variables.robot
Force Tags    04

*** Keywords ***
Verify Frontpage
    Open Browser    ${BASEURL}    browser=${BROWSER}
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
    # Need to close the browser to reset the test
    Close Browser

*** Test Cases ***

Search And Verify Products
    [Template]    Search For ${searchPhrase} And Add ${productName} Cart And Verify Total Price ${totalPrice}
    touch      HTC Touch HD    122.00
    macbook    MacBook Air     1,202.00
    nikon      Nikon D300      98.00