*** Settings ***
Documentation  This is some basic info about the whole suite
Library  SeleniumLibrary

*** Variables ***
${Browser}  Chrome
${URL}  http://attendance1.esstest.gr8hr.biz
${username}  5096
${password}  sa
${Invalidusername}  5096
${Invalidpassword}  sp
${Login}  xpath=//small[contains(.,'Login again')]
${Signout}  xpath=//a[@title='Logout']
*** Keywords ***
login to Application as a Employee with Valid credentials
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke Testing 
    Open Browser  ${URL}  ${Browser}  
    Maximize Browser Window
    sleep  5s
    Input text  xpath=//input[@name='username']  ${username}
    Input text  xpath=//input[@name='password']  ${password}
    Click button  xpath=//button[contains(@type,'submit')]
    sleep  10s
    Click Element   ${Signout}
    Sleep    5s
login to Application as a Employee with InValid credentials
     Click Element  ${Login} 
     Sleep    7s    
     Input text  xpath=//input[@name='username']  ${${Invalidusername}}
     Input text  xpath=//input[@name='password']  ${Invalidusername}
     Click button  xpath=//button[contains(@type,'submit')]
     sleep  10s
     Page Should Contain  Username or password is incorrect! 