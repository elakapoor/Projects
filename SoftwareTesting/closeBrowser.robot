*** Settings ***
Library   SeleniumLibrary

*** Variables ***


*** test Cases ***
closeBrowser
  Open Browser    http://demowebshop.tricents.com/register  chrome
  Maximize Browser Window


  Open Browser    http://automationpractice.com/index.php   chrome
  Maximize Browser Window




  #Close Browser
  Close All Browsers
