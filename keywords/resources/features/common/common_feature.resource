*** Settings ***
Resource    ${CURDIR}/../../../library/import.resource

*** Keywords ***
Open Swag Labs
    Open Browser    https://www.saucedemo.com/    Chrome
    Maximize Browser Window
    home_page_feature.Verify elements on the homepage
    Capture Page Screenshot   

Close Swag Labs
    Close Browser
