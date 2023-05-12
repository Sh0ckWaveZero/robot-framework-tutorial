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
   Open Browser      ${BASE_URL}    chrome
   Set Window Size   ${BROWSER_WIDTH}     ${BROWSER_HEIGHT}
   #Maximize Browser Window
   Sleep   20s

#ระบุ username

#ระบุ password

#คลิกปุ่ม SIGN IN

#ตรวจสอบว่าชื่อ user ปรากฎบน toolbar
     #//button//span[contains(text(), "Chaiyanan")]

*** Test Cases ***
CN-0001 - Login เข้าสู่ระบบด้วย admin user
    เปิด google chrome
    #ระบุ username
    #ระบุ password
    #คลิกปุ่ม SIGN IN
    #ตรวจสอบว่าชื่อ user ปรากฎบน toolbar
