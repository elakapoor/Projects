*** Setting ***
Library   SeleniumLibrary

*** Variables ***
${url}  http://demowebshop.tricentis.com/register
${browser}  chrome

*** Test Cases ***
wait and time out

  #${speed}=     get selenium speed
  #Log To Console    ${speed}
  Open Browser    ${url}  ${browser}
  Maximize Browser Window
  #Sleep    3         #will wait only after entering Maximize Browser Window.

  #Set Selenium Speed    3 seconds   # will wait for 3 seconds before executing each step.Default time
  #is 0 seconds

  #${time}=    get selenium Timeout
  #Log To Console    ${time}

  #Set Selenium Timeout    8 seconds
  # now the page will wait till 8 seconds before showing error if word does not appear.
  #Wait Until Page Contains    Registeration
  # will wait until the page contain the specified word. If the word does not appear and no time is specified
  #it will wait for default time of 5 seconds. After that it will fail the case if the word does not appear.


  ${implicit_wait}=     get selenium implicit wait
  # defaulttime
  Log To Console    ${implicit_wait}

  set selenium implicit Wait  10 seconds
  # will wait until the element locator is not found in the web page for 10 seconds. Affter that it will
  # show an error for eg: name:FirstName1 instead of  name:FirstName. Otherwise it will execute quickly.

  Select Radio Button    Gender    M


  Input Text    name:FirstName    David
  Input Text    name:LastName    John
  Input Text    name:Email        anhc@gmail.com
  Input Text    name:Password    davidjohn
  Input Text    name:ConfirmPassword    davidjohn




  Close Browser

  ${implicit_wait}=     get selenium implicit wait
  # defaulttime
  Log To Console    ${implicit_wait}

  #${speed}=     get selenium speed
  #Log To Console    ${speed}
