*** Settings ***
Resource         ${CURDIR}/../../keywords/library/import.resource
Test Setup       Run Keywords    common_feature.Open Swag Labs
Test Teardown    Run Keywords    common_feature.Close Swag Labs


*** Test Cases ***
SL003 Login with a empty username
    [Tags]    Swag_Labs    website    login_feature    TEST_WRONG_INPUT_USER_001    SL003
    Login with an invalid username or password and verify popup error
    ...    ${TEST_WRONG_INPUT_USER_001.username}
    ...    ${TEST_WRONG_INPUT_USER_001.password}
    ...    ${login_error_lbl.empty_username_lbl}

SL003 Login with a empty password
    [Tags]    Swag_Labs    website    login_feature    TEST_WRONG_INPUT_USER_002    SL003
    Login with an invalid username or password and verify popup error
    ...    ${TEST_WRONG_INPUT_USER_002.username}
    ...    ${TEST_WRONG_INPUT_USER_002.password}
    ...    ${login_error_lbl.empty_password_lbl}

SL003 Login with an invalid username and an invalid password
    [Tags]    Swag_Labs    website    login_feature    TEST_WRONG_INPUT_USER_003    SL003
    Login with an invalid username or password and verify popup error
    ...    ${TEST_WRONG_INPUT_USER_003.username}
    ...    ${TEST_WRONG_INPUT_USER_003.password}
    ...    ${login_error_lbl.invalid_account_lbl}

SL003 Login with switch input fields a valid username and a valid password
    [Tags]    Swag_Labs    website    login_feature    TEST_WRONG_INPUT_USER_004    SL003
    Login with an invalid username or password and verify popup error
    ...    ${TEST_WRONG_INPUT_USER_004.username}
    ...    ${TEST_WRONG_INPUT_USER_004.password}
    ...    ${login_error_lbl.invalid_account_lbl}

SL003 Login with a valid username and an invalid password
    [Tags]    Swag_Labs    website    login_feature    TEST_WRONG_INPUT_USER_005    SL003
    Login with an invalid username or password and verify popup error
    ...    ${TEST_WRONG_INPUT_USER_005.username}
    ...    ${TEST_WRONG_INPUT_USER_005.password}
    ...    ${login_error_lbl.invalid_account_lbl}

SL003 Login with an invalid username and a valid password
    [Tags]    Swag_Labs    website    login_feature    TEST_WRONG_INPUT_USER_006    SL003
    Login with an invalid username or password and verify popup error
    ...    ${TEST_WRONG_INPUT_USER_006.username}
    ...    ${TEST_WRONG_INPUT_USER_006.password}
    ...    ${login_error_lbl.invalid_account_lbl}


*** Keywords ***
Login with an invalid username or password and verify popup error
    [Arguments]    ${test_data.username}    ${test_data.password}    ${error_msg}
    home_page_feature.Login user                        ${test_data.username}        ${test_data.password}
    common_feature.Verify error message popup           ${home_page.popup_msg}       ${error_msg}
    # common_feature.Click close button                 ${home_page.close_popup_btn}
    # home_page_feature.Clear username and password