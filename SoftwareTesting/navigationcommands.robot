*** Settings ***
Library       SeleniumLibrary


*** Test Cases ***
NavigationCommands
  Open Browser    https://www.google.com/      chrome
  Maximize Browser Window
  ${location}=      Get Location
  Log To Console    ${location}

  Go To     https://www.bing.com/

  ${loction2}=   Get Location
  Log To Console    ${loction2}

  Go Back    
  ${loction3}=   Get Location
  Log To Console    ${loction3}
