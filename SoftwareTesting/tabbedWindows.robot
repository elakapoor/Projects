*** Settings ***
Library     SeleniumLibrary


*** Test Cases ***
TabbedWindows
  Open Browser    http://demo.automationtesting.in/Windows.html     chrome
  Maximize Browser Window

  Click Element       xpath://div[@id='Tabbed']//button[@class='btn btn-info'][contains(text(),'click')]

  Select Window       title= Sakinalium | Home

  Click Element    xpath://ul[@class='nav navbar-nav navbar-right']//a[contains(text(),'Contact')]

  Sleep    3

  Close Browser
