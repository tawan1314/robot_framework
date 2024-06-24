*** Settings ***
Library        OperatingSystem
Library        Collections
Library        String
Library        DateTime
Library        Process
Library        yaml
Library        RequestsLibrary
Library        SeleniumLibrary

# PAGE LABEL
Variables      ${CURDIR}/../../../swag_labs_project/keywords/resources/labels/home_page/home_page_label.yaml
Variables      ${CURDIR}/../../../swag_labs_project/keywords/resources/labels/products_page/products_page_label.yaml

# TEST DATA
Variables      ${CURDIR}/../../../swag_labs_project/test_data/users/test_data.yaml

# COMMON FEATURE
Resource       ${CURDIR}/../../../swag_labs_project/keywords/resources/features/common/common_feature.resource

# PAGES LOCATOR
Resource       ${CURDIR}/../../../swag_labs_project/keywords/resources/locators/home_page/home_page_locator.resource
Resource       ${CURDIR}/../../../swag_labs_project/keywords/resources/locators/products_page/products_page_locator.resource

# PAGE FEATURE
Resource       ${CURDIR}/../../../swag_labs_project/keywords/resources/features/home_page/home_page_feature.resource
Resource       ${CURDIR}/../../../swag_labs_project/keywords/resources/features/products_page/products_page_feature.resource
Resource       ${CURDIR}/../../../swag_labs_project/keywords/resources/features/products_page/products_detail.resource
Resource       ${CURDIR}/../../../swag_labs_project/keywords/resources/features/products_page/burgur_menu/burger_menu_btn_detail.resource