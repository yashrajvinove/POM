*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/LoginKeywords.robot

*** Variables ***
${SiteUrl}   https://propftxdevadmin.iworklab.com/
${Browser}   chrome

${User}      rahul.agarwal@mail.vinove.com
${Pass}       Admin@123

*** Test Cases ***
UpdateNewUser
   Open Browser          ${SiteUrl}    ${Browser}
   Maximize Browser Window
   Wait Until Element Is Visible    ${Input_UserName}
   Enter Username      ${User1}
   Enter Password      ${Pass}
   Click_Buton
   Wait Until Element Is Visible    ${UserManagement}
   Click_UserManagement
