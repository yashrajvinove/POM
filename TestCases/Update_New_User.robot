*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/LoginKeywords.robot

*** Variables ***
${SiteUrl}   https://propftxdevadmin.iworklab.com/
${Browser}   chrome

${User}      rahul.agarwal@mail.vinove.com
${Pass}       Admin@123
${userSearch}     yash9053@yopmail.com
${NewUserID}      yash9054@yopmail.com
${Name}       yashTestxyz
${Address}     Ghaziabad
${Numbr}       9548779463
${Numbr2}      9632587413
${Numbr3}      8965327438
${Country}     Afghanistan
${state}       Balkh
${City}        Balkh
${UsrEmail}    sarthak2@yopmail.com
${UsrEmail1}    saurabh12@yopmail.com


*** Test Cases ***
UserManagement-PhoneAlreadyExist
   Open Browser          ${SiteUrl}    ${Browser}
   Maximize Browser Window
   Wait Until Element Is Visible    ${Input_UserName}
   Enter Username      ${User}
   Enter Password      ${Pass}
   Click_Buton
   Wait Until Element Is Visible    ${UserManagement}
   Click_UserManagement
   Wait Until Element Is Visible    ${ADD_user}
   Click_ADD
   Wait Until Element Is Visible    ${ADD_title}     timeout=15
   Verify_AddTitle
   InputName                        ${Name}
   InputAddress                     ${Address}
   InputPhNumber                    ${Numbr}

   Click_CountryField

   InputCountry                     ${Country}
   sleep   1
   PressKeyCountry
  # PressKeyCountry

   InputState                       ${state}
   sleep  1
   PressKeyState
   InputCity                        ${City}
   PressKeyCity
   InputEmail                       ${UsrEmail}
   Choose_photo
   Scroll_down_AddUser
   wait until element is visible    ${Click_submit}
   Button_submit
   Sleep    2
   wait until element is visible      ${Successfull_msg}
   Verify Phone number already exist
   reload page

UserManagement-EmailAlreadyExist
#   Wait Until Element Is Visible    ${UserManagement}
#   Click_UserManagement
#   Wait Until Element Is Visible    ${ADD_user}
#   Click_ADD
   Wait Until Element Is Visible    ${ADD_title}     timeout=15
   Verify_AddTitle
   InputName                        ${Name}
   InputAddress                     ${Address}
   InputPhNumber                    ${Numbr2}

   Click_CountryField

   InputCountry                     ${Country}
   sleep   1
   PressKeyCountry
  # PressKeyCountry

   InputState                       ${state}
   sleep  1
   PressKeyState
   InputCity                        ${City}
   PressKeyCity
   InputEmail                       ${UsrEmail}
   Choose_photo
   Scroll_down_AddUser
   wait until element is visible    ${Click_submit}
   Button_submit
   Sleep    3
   wait until element is visible      ${Successfull_msg}
   Verify Email already exist
   Reload Page






UpdateNewUser_And_Verify

   Wait Until Element Is Visible    ${UserManagement}
   #Click_UserManagement
   Wait Until Element Is Visible    ${User_List}             timeout=15
   User List
   Wait Until Element Is Visible    ${Input_search}
   InputSearch              ${userSearch}
   Click_updateAction
   Wait Until Element Is Visible     ${InputEmail_clear}
   Sleep    3
   ClearIDtext

   Sleep      3
   UPdatenewID            ${NewUserID}
   Scroll_down_UpdateUser
   Sleep    1
   ClickUpdatebutton
   Sleep    2
   Wait Until Element Is Visible    ${UserManagement}
   Click_UserManagement
   Wait Until Element Is Visible    ${User_List}             timeout=15
   User List
   Wait Until Element Is Visible    ${Input_search}
   InputSearch                     ${NewUserID}
   Sleep    2
   get_text_user
#   uPdatedID_verify

  # Wait Until Element Is Visible    ${Successfull_msg}             timeout=15
  # New User Updated
   Reload Page

AddNewUser

   Wait Until Element Is Visible    ${UserManagement}
#   Click_UserManagement
   Sleep    1
   Wait Until Element Is Visible    ${ADD_user}
   Click_ADD
   Wait Until Element Is Visible    ${ADD_title}     timeout=15
   Verify_AddTitle
   InputName                        ${Name}

   InputAddress                     ${Address}
   InputPhNumber                    ${Numbr3}

   Click_CountryField

   InputCountry                     ${Country}
   sleep   1
   PressKeyCountry
  # PressKeyCountry

   InputState                       ${state}
   sleep  1
   PressKeyState
   InputCity                        ${City}
   PressKeyCity
   InputEmail                       ${UsrEmail1}
   Choose_photo
   Scroll_down_AddUser
   wait until element is visible    ${Click_submit}
   Button_submit
   wait until element is visible      ${Successfull_msg}
   User created successfully
   Sleep    5
   #Verify Phone number already exist
   reload page

