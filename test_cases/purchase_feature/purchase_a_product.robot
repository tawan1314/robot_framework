*** Settings ***
Resource         ${CURDIR}/../../keywords/library/import.resource
Test Setup       common_feature.Open Swag Labs
Test Teardown    common_feature.Close Swag Labs

*** Test Cases ***
Purchase a product
    home_page_feature.Login user    ${STD_USER.username}    ${STD_USER.password}
    