*** Settings ***
Library        OperatingSystem
Library        Collections
Library        String
Library        DateTime
Library        Process
Library        yaml
Library        RequestsLibrary
Library        SeleniumLibrary

# SETTINGS
Variables      ${CURDIR}/../test_data/home_page_label.yaml
Variables      ${CURDIR}/../test_data/test_data.yaml
Variables      ${CURDIR}/../test_data/products_page_label.yaml

# PAGES
Resource       ${CURDIR}/../keyword/pages/locators/home_page_locator.resource
Resource       ${CURDIR}/../keyword/pages/elements/home_page_feature.resource
Resource       ${CURDIR}/../keyword/pages/locators/products_page_locator.resource
Resource       ${CURDIR}/../keyword/pages/elements/products_page_feature.resource
Resource       ${CURDIR}/../keyword/pages/elements/products_detail.resource
Resource       ${CURDIR}/../keyword/pages/elements/burger_menu_btn_detail.resource
