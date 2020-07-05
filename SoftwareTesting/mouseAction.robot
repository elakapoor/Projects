*** Settings ***
Library    SeleniumLibrary


*** Test Cases ***
mouseAction
  Open Browser    http://swisnl.github.io/jQuery-contextMenu/demo.html      chrome
  Maximize Browser Window


  #Right click action
  Open Context Menu    xpath://span[@class='context-menu-one btn btn-neutral']
  Sleep    3

  #Double click Action
  Go To    https://testautomationpractice.blogspot.com/
  Maximize Browser Window
  Double Click Element    xpath://button[contains(text(),'Copy Text')]
  Sleep    3


  #Drag and Drop action
  Go To    http://www.dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html
  Maximize Browser Window
  Drag And Drop    id:box5     id:box105

  Sleep    5

  Close Browser
