*** Settings ***
Resource         ${CURDIR}/../../keyword/import.resource
Test Setup       home_page_feature.Open Swag Labs
Test Teardown    SeleniumLibrary.Close Browser

*** Test Cases ***
Login with standard user
    [Tags]    Swag_Labs    website    login_feature    STD_USER    SL002
    home_page_feature.Login user    ${STD_USER.username}    ${STD_USER.password}

Login with lock user
    [Tags]    Swag_Labs    website    login_feature    LOCK_OUT_USER    SL002
    home_page_feature.Login user    ${LOCK_OUT_USER.username}    ${LOCK_OUT_USER.password}

Login with problem user
    [Tags]    Swag_Labs    website    login_feature    PROBLEM_USER    SL002
    home_page_feature.Login user    ${PROBLEM_USER.username}    ${PROBLEM_USER.password}

Login with performance glitch user
    [Tags]    Swag_Labs    website    login_feature    PERF_GLITCH_USER    SL002
    home_page_feature.Login user    ${PERF_GLITCH_USER.username}    ${PERF_GLITCH_USER.password}

Login with error user
    [Tags]    Swag_Labs    website    login_feature    ERROR_USER    SL002
    home_page_feature.Login user    ${ERROR_USER.username}    ${ERROR_USER.password}

Login with visual user
    [Tags]    Swag_Labs    website    login_feature    VISUAL_USER    SL002
    home_page_feature.Login user    ${VISUAL_USER.username}    ${VISUAL_USER.password}
