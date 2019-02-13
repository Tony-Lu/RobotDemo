*** Settings ***
Library    SeleniumLibrary    


*** Test Cases ***
MyFirstTest
    Log    Hello World...
    
1stSeleniumTest
    Open Browser                 https://www.google.ca     chrome
    Set Browser Implicit Wait    3
    Input Text                   name=q                    selenium
    #Press Keys    name=q    ENTER
    Click Element    xpath=(//input[@name='btnK'])[2]    
    Sleep                        2         
    Close Browser
    Log    Test Completed
    

SampleLoginTest
    [Documentation]    This is a sample login test
    Open Browser    ${URL}    chrome
    Set Browser Implicit Wait    2
    LoginKW
    Click Element    id=welcome
    Click Element    link=Logout
    Close Browser
    Log              Test Completed
    Log              This test was executed by %{username} on %{os}
    
*** Variables ***
 
    
    
    
${URL}    https://opensource-demo.orangehrmlive.com/
@{credential}    Admin    admin123
&{LoginInput}    username=Admin    password=admin123







*** Keyword ***
LoginKW
    Input Text    id=txtUsername    ${credential}[0]
    Input Text    id=txtPassword    &{LoginInput}[password]
    Click Button    id=btnLogin
    