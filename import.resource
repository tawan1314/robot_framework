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
Variables      C:\\Users\\LENOVO\\Desktop\\Python\\test_data\\home_page_label.yaml
Variables      C:\\Users\\LENOVO\\Desktop\\Python\\test_data\\test_data.yaml
Variables      C:\\Users\\LENOVO\\Desktop\\Python\\test_data\\products_page_label.yaml

# PAGES
Resource       C:\\Users\\LENOVO\\Desktop\\Python\\keyword\\pages\\locators\\home_page_locator.resource
Resource       C:\\Users\\LENOVO\\Desktop\\Python\\keyword\\pages\\elements\\home_page_feature.resource
Resource       C:\\Users\\LENOVO\\Desktop\\Python\\keyword\\pages\\locators\\products_page_locator.resource
Resource       C:\\Users\\LENOVO\\Desktop\\Python\\keyword\\pages\\elements\\products_page_feature.resource
Resource       C:\\Users\\LENOVO\\Desktop\\Python\\keyword\\pages\\elements\\products_detail.resource
Resource       C:\\Users\\LENOVO\\Desktop\\Python\\keyword\\pages\\elements\\burger_menu_btn_detail.resource