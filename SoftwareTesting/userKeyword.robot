*** Settings ***
Library       SeleniumLibrary
Resource      /Users/user/Desktop/tester/Resources/resource.robot

*** Variables ***
${url}        http://www.newtours.demoaut.com/
${browser}    chrome


*** Test Cases ***
TC1
  #launchBrowser
  ${pageTitle}=   launchBroserArgument    ${url}    ${browser}
  Log To Console    ${pageTitle}
  Log    ${pageTitle}
  Input Text    name:userName    mercury
  Input Text    name:password    mercury
  Close Browser
