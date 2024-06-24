*** Settings ***
Resource         ${CURDIR}/../../keywords/library/import.resource
Test Setup       common_feature.Open Swag Labs
Test Teardown    common_feature.Close Swag Labs

*** Test Cases ***
SL002 Login with standard user
    [Tags]    Swag_Labs    website    login_feature    STD_USER    SL002
    home_page_feature.Login user                                    ${STD_USER.username}    ${STD_USER.password}
    SeleniumLibrary.Wait Until Element Is Visible                   ${products_header}      timeout=2s
    products_page_feature.Verify elements on the products page

SL002 Login with lock user
    [Tags]    Swag_Labs    website    login_feature    LOCK_OUT_USER    SL002
    home_page_feature.Login user                                    ${LOCK_OUT_USER.username}       ${LOCK_OUT_USER.password}
    home_page_feature.Verify popup when login with lock out user

SL002 Login with problem user
    [Tags]    Swag_Labs    website    login_feature    PROBLEM_USER    SL002
    home_page_feature.Login user                                    ${PROBLEM_USER.username}        ${PROBLEM_USER.password}
    SeleniumLibrary.Wait Until Element Is Visible                   ${products_header}              timeout=2s
    products_page_feature.Verify elements on the products page

SL002 Login with performance glitch user
    [Tags]    Swag_Labs    website    login_feature    PERF_GLITCH_USER    SL002
    home_page_feature.Login user                                    ${PERF_GLITCH_USER.username}    ${PERF_GLITCH_USER.password}
    SeleniumLibrary.Wait Until Element Is Visible                   ${products_header}              timeout=2s
    products_page_feature.Verify elements on the products page

SL002 Login with error user
    [Tags]    Swag_Labs    website    login_feature    ERROR_USER    SL002
    home_page_feature.Login user                                    ${ERROR_USER.username}          ${ERROR_USER.password}
    SeleniumLibrary.Wait Until Element Is Visible                   ${products_header}              timeout=2s
    products_page_feature.Verify elements on the products page

SL002 Login with visual user
    [Tags]    Swag_Labs    website    login_feature    VISUAL_USER    SL002
    home_page_feature.Login user                                    ${VISUAL_USER.username}         ${VISUAL_USER.password}
    SeleniumLibrary.Wait Until Element Is Visible                   ${products_header}              timeout=2s
    products_page_feature.Verify elements on the products page