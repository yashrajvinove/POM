*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/LoginKeywords.robot

*** Variables ***
${SiteUrl}   https://propftxdevadmin.iworklab.com/
${Browser}   chrome

${User}        rahul.agarwal@mail.vinove.com
${User1}       rahul.agarwall@mail.vinove.com
${Pass}        Admin@123
${Pass1}       Admin@1234
${Name}        yashTest
${Address}     MayurVihar
${Numbr}       9548779463
${Numbr2}      9012597022
${Country}     Afghanistan
${state}       Balkh
${City}        Balkh
${UsrEmail}    yash09060210@yopmail.com
*** Test Cases ***
LoginTest-InvalidUserID
   #Set Selenium Speed    1
   Open Browser          ${SiteUrl}    ${Browser}
   Maximize Browser Window
  # Sleep    3
   Wait Until Element Is Visible    ${Input_UserName}
   Enter Username      ${User1}
   Enter Password      ${Pass}
   Click_Buton
   Wait Until Element Is Visible    ${Successfull_msg}
   Verify unsuccessfull login
   #Close all my browser
   Reload Page

LoginTest-InvalidPass
   Wait Until Element Is Visible    ${Input_UserName}
   Enter Username      ${User}
   Enter Password      ${Pass1}
   Click_Buton
   Wait Until Element Is Visible    ${Successfull_msg}
   Verify unsuccessfull login
   #Close all my browser
   Reload Page

LoginTest-ValidCred
   Wait Until Element Is Visible    ${Input_UserName}
   Enter Username      ${User}
   Enter Password      ${Pass}
   Click_Buton
   Wait Until Element Is Visible    ${Successfull_msg}
   Verify successfull login

#UserManagement-PhoneAlreadyExist
#   Wait Until Element Is Visible    ${UserManagement}
#   Click_UserManagement
#   Wait Until Element Is Visible    ${ADD_user}
#   Click_ADD
#   Wait Until Element Is Visible    ${ADD_title}     timeout=15
#   Verify_AddTitle
#   InputName                        ${Name}
#   InputAddress                     ${Address}
#   InputPhNumber                    ${Numbr}
#
#   Click_CountryField
#
#   InputCountry                     ${Country}
#   sleep   1
#   PressKeyCountry
#  # PressKeyCountry
#
#   InputState                       ${state}
#   sleep  1
#   PressKeyState
#   InputCity                        ${City}
#   PressKeyCity
#   InputEmail                       ${UsrEmail}
#   Choose_photo
#   Scroll_down_AddUser
#   wait until element is visible    ${Click_submit}
#   Button_submit
#   Sleep    2
#   wait until element is visible      ${Successfull_msg}
#   Verify Phone number already exist
#   reload page
#
#UserManagement-EmailAlreadyExist
##   Wait Until Element Is Visible    ${UserManagement}
##   Click_UserManagement
##   Wait Until Element Is Visible    ${ADD_user}
##   Click_ADD
#   Wait Until Element Is Visible    ${ADD_title}     timeout=15
#   Verify_AddTitle
#   InputName                        ${Name}
#   InputAddress                     ${Address}
#   InputPhNumber                    ${Numbr2}
#
#   Click_CountryField
#
#   InputCountry                     ${Country}
#   sleep   1
#   PressKeyCountry
#  # PressKeyCountry
#
#   InputState                       ${state}
#   sleep  1
#   PressKeyState
#   InputCity                        ${City}
#   PressKeyCity
#   InputEmail                       ${UsrEmail}
#   Choose_photo
#   Scroll_down_AddUser
#   wait until element is visible    ${Click_submit}
#   Button_submit
#   Sleep    3
#   wait until element is visible      ${Successfull_msg}
#   Verify Email already exist
#   Sleep    5
#

