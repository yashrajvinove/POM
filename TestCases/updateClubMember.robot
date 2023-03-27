*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/LoginKeywords.robot


*** Variables ***
${SiteUrl}     https://propftxdevadmin.iworklab.com/
${Browser}     edge
${User}        rahul.agarwal@mail.vinove.com
${Pass}        Admin@123

*** Test Cases ***
UpdateClubMember
   Open Browser             ${SiteUrl}    ${Browser}


   Maximize Browser Window
   sleep    4
  # Wait Until Element Is Visible    ${Input_UserName}          timeout=10
   Enter Username      ${User}
   Enter Password      ${Pass}
   Click_Buton
   sleep  3
   Wait Until Element Is Visible       ${click_clubMembership}
   clubMembership
   Wait Until Element Is Visible       ${click_plans}
   clubPlans
