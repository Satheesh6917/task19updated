*** Settings ***
Resource    login_page.robot

*** Keywords ***

Login To Application
    [Documentation]    Opens login page, inputs credentials, submits, verifies login
    Open Login Page
    Enter Credentials    ${USERNAME}    ${PASSWORD}
    Submit Login
    Verify Login Successful

Logout From Application
    [Documentation]    Logs out and closes the browser
    Logout
