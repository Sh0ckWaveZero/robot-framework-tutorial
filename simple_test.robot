*** Settings ***
Documentation  A simple case for Robot Framework
...            line 2 text
...            line 3 text
Library       SeleniumLibrary
Resource       ./simple_test.robot
Suite Setup
Suite Teardown    Close Browser
Test Setup
Test Teardown

*** Variables ***
${browser}  chrome
${BASE_URL}  xxxx
${ADMIN_USERNAME}  xxxxx
${ADMIN_PASSWORD}  xxxxx
${BROWSER_WIDTH}      1920
${BROWSER_HEIGHT}     1080

*** Keywords ***
เปิด google chrome
   Open Browser      ${BASE_URL}    ${browser}
   Set Window Size   ${BROWSER_WIDTH}     ${BROWSER_HEIGHT}
    
ระบุ username
    Input Text    id=login    ${ADMIN_USERNAME}

ระบุ password
    Input Text    id=password    ${ADMIN_PASSWORD}

คลิกปุ่ม SIGN IN
    Click Button   id=loginbutton
    Sleep    20s


#ตรวจสอบว่าชื่อ user ปรากฎบน toolbar
     #//button//span[contains(text(), "Chaiyanan")]

*** Test Cases ***
CN-0001 - Login เข้าสู่ระบบด้วย admin user
    เปิด google chrome
    ระบุ username
    ระบุ password
    คลิกปุ่ม SIGN IN
    #ตรวจสอบว่าชื่อ user ปรากฎบน toolbar
