*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/LoginKeywords.robot


*** Variables ***
${SiteUrl}     https://propftxdevadmin.iworklab.com/
${Browser}     edge
${User}        rahul.agarwal@mail.vinove.com
${Pass}        Admin@123
${PlanName2}         xyz
${Validity3}       Monthly
${Price1}            2542
${Disocunt1}         42
*** Test Cases ***
clubMembership
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
   Wait Until Element Is Visible         ${click_Club_ADD}
   clubADD
   Wait Until Element Is Visible        ${plan_Name}          timeout=10
   PlanName1                              ${PlanName2}
   clickValidity1
   InputValidity1                         ${Validity3}
   Sleep    2
   PressKeyValidity
   InputClub_price                          ${Price1}
   InputClub_discount                        ${Disocunt1}
   clickSavebuttonClub
   Sleep    1
   ClubAddedSuccessfully
   Sleep     20