*** Settings ***
Library       SeleniumLibrary


*** Test Cases ***
GetAllLinks
  Open Browser    http://newtours.demoaut.com/    chrome
  Maximize Browser Window

  ${AllLinksCount}=  Get Element Count    xpath://a
  Log To Console    ${AllLinksCount}


  @{linkItems}    Create List
  : FOR   ${i}    IN RANGE    1     ${AllLinksCount} + 1
  \   ${linkText}=    Get Text    xpath:(//a)[${i}]
  \   Log To Console    ${linkText}
