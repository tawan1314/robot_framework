*** Settings ***
Resource    C:\\Users\\LENOVO\\Desktop\\Python\\keyword\\import.resource
Test Setup       home_page_feature.Open Swag Labs
Test Teardown    SeleniumLibrary.Close Browser

*** Test Cases ***
Log out from Swag Labs
    [Tags]    Swag_Labs    website    logout_feature    products_page_element    STD_USER    SL004
    home_page_feature.Login user    ${STD_USER.username}    ${STD_USER.password}
    products_page_feature.Log out