*** Settings ***
Library     SeleniumLibrary


*** Test Cases ***
ScrollingTest
  Open Browser    https://www.countries-ofthe-world.com/flags-of-the-world.html   chrome
  Maximize Browser Window
  Execute Javascript    window.scrollTo(0, 2500)
  #By passing the pixel number

  #Scroll Element Into View    xpath://table[1]//tbody[1]//tr[86]//td[1]//img[1]


  Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
  #bottom of the page
  Sleep    5


  Execute Javascript    window.scrollTo(0, -document.body.scrollHeight)
  #starting of the page

  Sleep    2

  Close Browser
