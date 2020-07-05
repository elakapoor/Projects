*** Settings ***
Library       SeleniumLibrary


*** Test Cases ***
TableOperations
  Open Browser      http://testautomationpractice.blogspot.com/?m=1         chrome
  Maximize Browser Window
  ${Rows}=    Get Element Count    xpath://table[@name='BookTable']/tbody/tr
  ${cols}=    Get Element Count    xpath://table[@name='BookTable']/tbody/tr[1]/th

  Log To Console    ${Rows}
  Log To Console    ${cols}


  Table Column Should Contain        xpath://table[@name='BookTable']    2    Author


#  ${data}=    Get Text    xpath://table[@name='BookTable']/tbody/tr[5]/td[1]
#  Log To Console    ${data}

  Close Browser
