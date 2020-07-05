*** Setting ***
Library   SeleniumLibrary

*** Variables ***
${url}  http://www.practiceselenium.com/practice-form.html
${browser}  chrome

*** Test Cases ***
Testing Radio Buttons and check box
  Open Browser    ${url}  ${browser}
  Maximize Browser Window
  Set Selenium Speed    2seconds

  Select Radio Button    sex    Female
  Select Radio Button    exp    5


  Select Checkbox    BlackTea
  Select Checkbox    RedTea


  Unselect Checkbox    BlackTea

  Close Browser
