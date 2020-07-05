*** Setting ***
Library   SeleniumLibrary

*** Variables ***
${url}  http://www.practiceselenium.com/practice-form.html
${browser}  chrome

*** Test Cases ***
Drop Drown list
  Open Browser    ${url}  ${browser}
  Maximize Browser Window


  Select from list by label    continents    Australia
  Sleep    3
  Select From List by index   continents    2
  Sleep    3

  #List box


  select from list by label   selenium_commands   Navigation Commands
  Sleep    3
  select from list by label   selenium_commands   Wait Commands
  Sleep    3


  Unselect From List By Label    selenium_commands    Navigation Commands
  Sleep    3
  Close Browser
