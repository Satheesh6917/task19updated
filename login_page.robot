*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}       https://robotsparebinindustries.com/
${BROWSER}   chrome
${USERNAME}  maria
${PASSWORD}  thoushallnotpass

*** Keywords ***

Open Login Page
    [Documentation]    Opens the login page in the browser
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Wait Until Element Is Visible    id:username    10s

Enter Credentials
    [Arguments]    ${username}    ${password}
    [Documentation]    Inputs the username and password
    Input Text    id:username    ${username}
    Input Text    id:password    ${password}

Submit Login
    [Documentation]    Clicks the login button to submit credentials
    Click Button    xpath://button[@type='submit']

Verify Login Successful
    [Documentation]    Verifies successful login by checking for the logout button
    Wait Until Element Is Visible    id:logout    10s

Logout
    [Documentation]    Logs out and closes the browser
    Click Button    id:logout
    Close Browser
