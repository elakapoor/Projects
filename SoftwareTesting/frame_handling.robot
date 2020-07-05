*** Settings ***
Library   SeleniumLibrary

*** Test Cases ***
Handling Frame
  Open Browser    https://seleniumhq.github.io/selenium/docs/api/java/index   chrome

  Select Frame    packageListFrame
  Click Link    org.openqa.selenium
  Unselect Frame

  Sleep    3

  Select Frame    packageFrame
  Click Link    WebDriver
  Unselect Frame

  Sleep    3

  Select Frame    classFrame
  Click Link    Help


  Close Browser
