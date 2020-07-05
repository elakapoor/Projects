*** Settings ***
Library     SeleniumLibrary
Resource    /Users/user/Desktop/tester/Resources/login_resources.robot
Suite Setup   Open_my_browser
Suite Teardown    Close_my_browser
Test Template     Invalid Login


*** Test Cases ***      username          password
Right user and empty password  admin@yourstore.com    ${EMPTY}
Right user and wrong password  admin@yourstore.com    xyz
Wrong user and right password  admn@yourstore.com    admin
Wrong user and empty password  admn@yourstore.com    ${EMPTY}
Wrong user and Wrong password  admn@yourstore.com    xyz







*** Keywords ***
Invalid Login
  [Arguments]   ${username}   ${password}
  Input_user_name    ${username}
  Input_Password     ${password}
  Click_login
  Error message should be visible
