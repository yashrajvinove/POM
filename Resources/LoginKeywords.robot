*** Settings ***
Library     SeleniumLibrary
Variables    ../PageObjects/Locators.py

*** Keywords ***
#Open my Browser
#     [Arguments]  ${SiteUrl}   ${Browser}
#     Open Browser      ${SiteUrl}      ${Browser}
#     Maximize Browser Window

Enter Username
     [Arguments]    ${Username}
     Input Text    ${Input_UserName}    ${Username}

Enter Password
    [Arguments]    ${Password}
    Input Text    ${Input_password}      ${Password}

Click_Buton
    Click Button        ${Click_Button}

Verify unsuccessfull login
   Page Should Contain Element      ${Successfull_msg}        Invalid Email or Password


Verify successfull login
    Page Should Contain Element     ${Successfull_msg}         You have successfully logged in!

Close all my browser
    Close All Browsers

Click_UserManagement
    Click Element            ${UserManagement}

Click_ADD
    Click Element            ${ADD_user}

Verify_AddTitle
    Page Should Contain Element     ${ADD_title}

InputName
    [Arguments]     ${UsrName}
    input text      ${Input_Name}     ${UsrName}


InputAddress
    [Arguments]     ${address}
    input text      ${Input_address}     ${address}

InputPhNumber
    [Arguments]     ${phnumber}
    input text      ${Input_Number}     ${phnumber}

Click_CountryField
    Click Element            ${Click_country_field}

InputCountry
    [Arguments]     ${Country}
    input text      ${Input_country}     ${Country}

PressKeyCountry
     Press Keys     ${Selected_country}        Tab



InputState
    [Arguments]     ${State}
    input text      ${Input_state}     ${State}

PressKeyState
     Press Keys      ${Selected_state}        TAB

InputCity
    [Arguments]     ${City}
    input text      ${Input_city}     ${City}

PressKeyCity
     Press Keys      ${Selected_city}        TAB

InputEmail
    [Arguments]     ${Email}
    input text      ${Input_Email}     ${Email}

Choose_photo
    choose file     ${ChooseImage}    ${ImageLocation}

Button_submit
    click button      ${Click_submit}

Scroll_down_AddUser
   Run Keyword And Ignore Error  Scroll Element Into View     ${Click_submit}

Verify Phone number already exist
   page should contain element        ${Successfull_msg}      Phone number already exist

Verify Email already exist
   page should contain element        ${Successfull_msg}      Email already exist




