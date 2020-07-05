*** Settings ***
Documentation    This is a simple test with Robot Framework
Library          Selenium2Library

*** Variables ***
${url}           http://google.com
${browser}       Chrome

*** Keywords ***
OpenAPage
    Maximize Browser Window
    Input Text                 name:q                      Software Automation
    click element              xpath://input[@name='q']


*** Test Cases ***
Open Browser To Login Page
    open browser               ${url}                      ${browser}
    OpenAPage
    Close Browser