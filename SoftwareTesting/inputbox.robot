*** Settings ***
Library       SeleniumLibrary


*** Variable ***
${browser}    chrome
${url}        http://demo.nopcommerce.com

*** Test Case ***
TestingInputBox
    open browser                                     ${url}                           ${browser}
    maximize browser window
    title should be                                  nopCommerce demo store
    click link                                       xpath://a[@class='ico-login']
    ${"email_txt"}                                   Set Variable                     id:Email
    element should be visibsle                       ${"email_txt"}
    element should be enabled                        ${"email_txt"}
    input text ${"email_txt"} JohnDavid@gmail.com
    Sleep                                            5
    clear element text                               ${"email_txt"}
    Sleep                                            3
    close browser


