*** Settings ***
Resource    C:\\Users\\LENOVO\\Desktop\\Python\\keyword\\import.resource
Test Setup       home_page_feature.Open Swag Labs
Test Teardown    SeleniumLibrary.Close Browser

*** Test Cases ***
Login with an empty username
    [Tags]    Swag_Labs    website    login_feature    TEST_WRONG_INPUT_USER_001    SL003
    home_page_feature.Login user    ${TEST_WRONG_INPUT_USER_001.username}    ${TEST_WRONG_INPUT_USER_001.password}
    home_page_feature.Verify error when login with empty username    ${TEST_WRONG_INPUT_USER_001.username}    ${TEST_WRONG_INPUT_USER_001.password}

Login with an empty password
    [Tags]    Swag_Labs    website    login_feature    TEST_WRONG_INPUT_USER_002    SL003
    home_page_feature.Login user    ${TEST_WRONG_INPUT_USER_002.username}    ${TEST_WRONG_INPUT_USER_002.password}
    home_page_feature.Verify error when login with empty password    ${TEST_WRONG_INPUT_USER_001.username}    ${TEST_WRONG_INPUT_USER_001.password}

Login with an invalid account
    [Tags]    Swag_Labs    website    login_feature    TEST_WRONG_INPUT_USER_003    SL003
    home_page_feature.Login user    ${TEST_WRONG_INPUT_USER_003.username}    ${TEST_WRONG_INPUT_USER_003.password}
    home_page_feature.Verify error when login with invalid account    ${TEST_WRONG_INPUT_USER_001.username}    ${TEST_WRONG_INPUT_USER_001.password}
