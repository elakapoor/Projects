*** Settings ***
Library       SeleniumLibrary

Suite Setup   Log To Console    Opening Browser
Suite Teardown  Log To Console    Closing Browser

Test Setup    Log To Console    Login to Application
Test Teardown  Log To Console    Logout from application

*** Test Cases ***
TC1 Prepaid Recharge
  Log To Console    this is a prepaid Recharge

TC2 Postpaid Recharge
  Log To Console    This is a postpaid Recharge

TC 3 Search
  Log To Console    This is a search test case.

TC 4 Advanced Search
  Log To Console    This is an advance search.
