*** Settings ***
Resource    ../resources/base.robot
Resource    ../resources/variables.robot
# This will add "taa-demo" tag to all tests in this suite
Force Tags    rfs
# Add default test setup and teardown
Test Setup       Setup Browser
#Test Teardown    Close All Browsers

*** Variables ***

# This is not visible in tests
${SOMEVARIABLE}    hello
