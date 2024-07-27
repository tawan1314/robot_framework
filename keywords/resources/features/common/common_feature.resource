*** Settings ***
Resource    ${CURDIR}/../../../library/import.resource

*** Keywords ***
Open Swag Labs
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    home_page_feature.Verify header on homepage
    home_page_feature.Verify elements on homepage
    Capture Page

Close Swag Labs
    Capture Page
    Close Browser

Verify header on the page
    [Arguments]    ${header_locator}    ${replace_header_text}
    ${locator}    Replace String     ${header_locator}    ***string***    ${replace_header_text}
    Wait Until Element Is Visible    ${locator}    timeout=${GLOBAL_TIMEOUT}

Verify element on the page
    [Arguments]    ${element_locator}    ${replace_element_text}
    ${locator}    Replace String     ${element_locator}    ***string***    ${replace_element_text}
    Run Keyword And Ignore Error    Element Text Should Be    ${locator}    ${replace_element_text}
    Wait Until Element Is Visible    ${locator}    timeout=${GLOBAL_TIMEOUT}

Verify error message popup
    [Arguments]    ${popup_msg_locator}    ${replace_popup_msg}
    ${locator}    Replace String     ${popup_msg_locator}    ***string***    ${replace_popup_msg}
    Wait Until Element Is Visible    ${locator}    timeout=${GLOBAL_TIMEOUT}
    Capture Page

Click element when ready
    [Arguments]    ${element_locator}    ${replace_element_text}
    ${locator}    Replace String     ${element_locator}    ***string***    ${replace_element_text}
    Wait Until Element Is Visible    ${locator}    timeout=${GLOBAL_TIMEOUT}
    Click Element    ${locator}

Click button when ready
    [Arguments]    ${btn_locator}    ${replace_btn_text}
    ${locator}    Replace String     ${btn_locator}    ***string***    ${replace_btn_text}
    Wait Until Element Is Visible    ${locator}    timeout=${GLOBAL_TIMEOUT}
    Click Element    ${locator}

Click close button when ready
    [Arguments]    ${btn_locator}
    Wait Until Element Is Visible    ${btn_locator}    timeout=${GLOBAL_TIMEOUT}
    Click Element    ${btn_locator}

Input text
    [Arguments]    ${text_locator}    ${replace_text}    ${text}
    ${locator}    Replace String     ${text_locator}    ***string***    ${replace_text}
    SeleniumLibrary.Input Text    ${locator}    ${text}

Clear text on field
    [Arguments]    ${text_input_locator}    ${replace_text_input}
    ${locator}    Replace String    ${text_input_locator}    ***string***    ${replace_text_input}
    Press Keys   ${locator}   CTRL+a   BACKSPACE

Capture Page
    SeleniumLibrary.Set Screenshot Directory    path=${PICTURE_LOCATION}
    SeleniumLibrary.Capture Page Screenshot    swag_labs_{index}.png
