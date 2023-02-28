*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/LoginKeywords.robot

*** Variables ***
${SiteUrl}   https://propftxdevadmin.iworklab.com/
${Browser}   chrome

${User}      rahul.agarwal@mail.vinove.com
${Pass}       Admin@123
${userSearch}     yash09060218@yopmail.com
${NewUserID}      yash09060219@yopmail.com
${Name}       yashTestxyz
${Address}     Ghaziabad
${Numbr}       9868954501
${Country}     Afghanistan
${state}       Balkh
${City}        Balkh
${UsrEmail}    sarthak1@yopmail.com


*** Test Cases ***
UpdateNewUser
   Open Browser          ${SiteUrl}    ${Browser}
   Maximize Browser Window
   Wait Until Element Is Visible    ${Input_UserName}
   Enter Username      ${User}
   Enter Password      ${Pass}
   Click_Buton
   Wait Until Element Is Visible    ${UserManagement}
   Click_UserManagement
   Wait Until Element Is Visible    ${User_List}
   User List
   Wait Until Element Is Visible    ${Input_search}
   InputSearch              ${userSearch}
   Click_updateAction
   Wait Until Element Is Visible    ${InputEmail_clear}
   ClearIDtext
   Sleep    1
   UPdatenewID            ${NewUserID}
   ClickUpdatebutton
  # Wait Until Element Is Visible    ${Successfull_msg}             timeout=15
  # New User Updated
   Reload Page

AddNewUser
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
   wait until element is visible      ${Successfull_msg}
   User created successfully
   Sleep    5
   #Verify Phone number already exist
   reload page

