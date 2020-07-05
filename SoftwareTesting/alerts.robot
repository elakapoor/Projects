*** Settings ***
Library   SeleniumLibrary


*** test Cases ***
Alert_Window
  Open Browser    https://testautomationpractice.blogspot.com   chrome
  Click Element    xpath://button[contains(text(),'Click Me')]

  #handle alert    accept

  #handle alert    dismiss

  #handle alert    leave


  #Verify alert message

 Alert Should Be Present    Press a button!

  #alert should not be Present   Press a button!
  Sleep    3
  Close Browser
