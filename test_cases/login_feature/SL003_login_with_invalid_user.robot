*** Settings ***
Resource         ${CURDIR}/../../keywords/library/import.resource
Test Setup       common_feature.Open Swag Labs
Test Teardown    common_feature.Close Swag Labs

*** Test Cases ***
SL003 Login with invalid users
    [Tags]    Swag_Labs    website    login_feature    TEST_WRONG_INPUT_USER_001    TEST_WRONG_INPUT_USER_002    TEST_WRONG_INPUT_USER_003    TEST_WRONG_INPUT_USER_004    TEST_WRONG_INPUT_USER_005    TEST_WRONG_INPUT_USER_006    SL003
    # Login with a empty username
    home_page_feature.Login user         ${TEST_WRONG_INPUT_USER_001.username}    ${TEST_WRONG_INPUT_USER_001.password}
    home_page_feature.Verify error when login with empty username
    Clear username and password field    ${username_input}                        ${password_input}

    # Login with a empty password
    home_page_feature.Login user         ${TEST_WRONG_INPUT_USER_002.username}    ${TEST_WRONG_INPUT_USER_002.password}
    home_page_feature.Verify error when login with empty password
    Clear username and password field    ${username_input}                        ${password_input}

    # Login with an invalid username and an invalid password
    home_page_feature.Login user         ${TEST_WRONG_INPUT_USER_003.username}    ${TEST_WRONG_INPUT_USER_003.password}
    home_page_feature.Verify error when login with invalid account
    Clear username and password field    ${username_input}                        ${password_input}

    # Login with switch input fields a valid username and a valid password
    home_page_feature.Login user         ${TEST_WRONG_INPUT_USER_004.username}    ${TEST_WRONG_INPUT_USER_004.password}
    home_page_feature.Verify error when login with invalid account
    Clear username and password field    ${username_input}                        ${password_input}

    # Login with a valid username and an invalid password
    home_page_feature.Login user         ${TEST_WRONG_INPUT_USER_005.username}    ${TEST_WRONG_INPUT_USER_005.password}
    home_page_feature.Verify error when login with invalid account
    Clear username and password field    ${username_input}                        ${password_input}

    # Login with an invalid username and a valid password
    home_page_feature.Login user         ${TEST_WRONG_INPUT_USER_006.username}    ${TEST_WRONG_INPUT_USER_006.password}
    home_page_feature.Verify error when login with invalid account
    Clear username and password field    ${username_input}                        ${password_input}