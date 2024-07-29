*** Settings ***
Library        OperatingSystem
Library        Collections
Library        String
Library        DateTime
Library        Process
Library        yaml
Library        RequestsLibrary
Library        SeleniumLibrary
Library        RPA.PDF
Library        pypdf
Library        pdfminer
Library        ImageLibrary    # robotcode: ignore

# CONFIGS
Variables      ${CURDIR}/../../../robot_framework/keywords/resources/configs.yaml

# PAGE LABEL
Variables      ${CURDIR}/../../../robot_framework/keywords/resources/labels/home_page/home_page_label.yaml
Variables      ${CURDIR}/../../../robot_framework/keywords/resources/labels/products_page/products_page_label.yaml
Variables      ${CURDIR}/../../../robot_framework/keywords/resources/labels/your_cart_page/your_cart_label.yaml

# TEST DATA
Variables      ${CURDIR}/../../../robot_framework/test_data/users/test_data.yaml

# COMMON FEATURE
Resource       ${CURDIR}/../../../robot_framework/keywords/resources/features/common/common_feature.resource

# PAGES LOCATOR
Resource       ${CURDIR}/../../../robot_framework/keywords/resources/locators/home_page/home_page_locator.resource
Resource       ${CURDIR}/../../../robot_framework/keywords/resources/locators/products_page/products_page_locator.resource
Resource       ${CURDIR}/../../../robot_framework/keywords/resources/locators/your_cart_page/your_cart_locator.resource

# PAGE FEATURE
Resource       ${CURDIR}/../../../robot_framework/keywords/resources/features/home_page/home_page_feature.resource
Resource       ${CURDIR}/../../../robot_framework/keywords/resources/features/products_page/products_page_feature.resource
Resource       ${CURDIR}/../../../robot_framework/keywords/resources/features/your_cart_page/your_cart_page_feature.resource

# PRODUCTS IMAGES PNG


# PRODUCTS IMAGES JSON
# Resource        ${CURDIR}/../../test_data/products_images/products_image.json