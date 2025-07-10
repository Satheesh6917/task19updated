*** Settings ***
Library    SeleniumLibrary
Resource   ../resources/common_keywords.robot

*** Test Cases ***

Verify User Can Login And Logout Using POM
    [Documentation]    This test verifies login and logout functionality using POM in Robot Framework.
    Login To Application
    Logout From Application
