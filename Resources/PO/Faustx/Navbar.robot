*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${DROPDOWN_SECTION} =    xpath=//*[@id="navbarSupportedContent"]/ul/li
${DROPDOWN_CONTENT} =    css=#navbarSupportedContent > ul > li.nav-item.dropdown.show > div > a:nth-child

*** Keywords ***
click homepage section
    Element Text Should Be          ${DROPDOWN_SECTION}\[1]/a    Homepage
    Click Element                   ${DROPDOWN_SECTION}\[1]/a

Click about us section
    Element Text Should Be          ${DROPDOWN_SECTION}\[2]/a    About Us
    Click Element                   ${DROPDOWN_SECTION}\[2]/a
    Wait Until Element Is Visible   ${DROPDOWN_CONTENT}\(1)
Click "Our Vision" Dropdown
    Click Element                   ${DROPDOWN_CONTENT}\(1)


Click what we do section
    Element Text Should Be          ${DROPDOWN_SECTION}\[3]/a    What We Do
    Click Element                   ${DROPDOWN_SECTION}\[3]/a
    Wait Until Element Is Visible   ${DROPDOWN_CONTENT}\(1)
Click "FX-1 Common Release Tests" Dropdown
    Click Element                   ${DROPDOWN_CONTENT}\(6)


Click our future section
    Element Text Should Be          ${DROPDOWN_SECTION}\[4]/a    Our Future
    Click Element                   ${DROPDOWN_SECTION}\[4]/a
    Wait Until Element Is Visible   ${DROPDOWN_CONTENT}\(1)

Click contact section
    Element Text Should Be          ${DROPDOWN_SECTION}\[5]/a    Contact
    Click Element                   ${DROPDOWN_SECTION}\[5]/a

Click in order dropdown elements
    [Arguments]    ${ORDER_MAX_RANGE}    ${SET_CLICK_VAR}
    FOR  ${i}  IN RANGE  1      ${ORDER_MAX_RANGE}
        IF   ${i} != 5
            Click Element       ${DROPDOWN_CONTENT}\(${i})
            Run Keyword         ${SET_CLICK_VAR}
        END
    END




