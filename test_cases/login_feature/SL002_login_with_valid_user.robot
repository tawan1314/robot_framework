*** Settings ***
Resource         ${CURDIR}/../../keywords/library/import.resource
Test Setup       Run Keywords    common_feature.Open Swag Labs
Test Teardown    Run Keywords    common_feature.Close Swag Labs


*** Test Cases ***
SL002 Login with standard user
    [Documentation]                                                                 USERNAME                      PASSWORD
    [Tags]    Swag_Labs    website    login_feature    STD_USER    SL002
    Login and verify usernames and password                                    ${STD_USER.username}            ${STD_USER.password}

SL002 Login with lock out user
    [Tags]    Swag_Labs    website    login_feature    LOCK_OUT_USER    SL002
    Login and verify locked out username and password                          ${LOCK_OUT_USER.username}       ${LOCK_OUT_USER.password}

SL002 Login with problem user
    [Tags]    Swag_Labs    website    login_feature    PROBLEM_USER    SL002
    Login and verify usernames and password                                    ${PROBLEM_USER.username}        ${PROBLEM_USER.password}

SL002 Login with performance glitch user
    [Tags]    Swag_Labs    website    login_feature    PERF_GLITCH_USER    SL002
    Login and verify usernames and password                                    ${PERF_GLITCH_USER.username}    ${PERF_GLITCH_USER.password}

SL002 Login with error user
    [Tags]    Swag_Labs    website    login_feature    ERROR_USER    SL002
    Login and verify usernames and password                                    ${ERROR_USER.username}          ${ERROR_USER.password}

SL002 Login with visual user
    [Tags]    Swag_Labs    website    login_feature    VISUAL_USER    SL002
    Login and verify usernames and password                                    ${VISUAL_USER.username}         ${VISUAL_USER.password}


*** Keywords ***
Login and verify usernames and password
    [Arguments]    ${test_data.username}    ${test_data.password}
    home_page_feature.Login user                    ${test_data.username}          ${test_data.password}
    common_feature.Verify header on the page        ${products_page.header_lbl}    ${products_page_element.products_page_header_lbl}

Login and verify locked out username and password
    [Arguments]    ${test_data.username}    ${test_data.password}
    home_page_feature.Login user                    ${test_data.username}          ${test_data.password}
    common_feature.Verify error message popup       ${home_page.popup_msg}         ${login_lock_out_user}
    common_feature.Close button when ready          ${home_page.close_popup_btn}
