*** Settings ***
Resource    ${CURDIR}/../../../library/import.resource

*** Keywords ***
Open Swag Labs
    Open Browser    https://www.saucedemo.com/    Chrome
    Maximize Browser Window

Close Swag Labs
    Close Browser