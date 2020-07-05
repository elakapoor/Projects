*** Settings ***
Library       SeleniumLibrary

*** Test Cases ***
screenshot
  Open Browser    https://opensource-demo.orangehrmlive.com/     chrome
  Maximize Browser Window
  Input Text    id:txtUsername    Admin
  Input Text    id:txtPassword    admin123

  Capture Element Screenshot    xpath://div[@id='divLogo']//img     /Users/user/Desktop/tester/logo.png


  Capture Page Screenshot     /Users/user/Desktop/tester/page.png

  Close Browser
