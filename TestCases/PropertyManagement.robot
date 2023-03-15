*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/LoginKeywords.robot
Library    SeleniumLibrary
Resource    ../Resources/LoginKeywords.robot
*** Variables ***
${SiteUrl}     https://propftxdevadmin.iworklab.com/
${Browser}     chrome
${User}        rahul.agarwal@mail.vinove.com
${Pass}        Admin@123
${PropertyName}    Fusion Square
${PropertyType}     Commercial
${propNumber}       1
${proplocation}      Noida
${Country}     Afghanistan
${state}       Balkh
${City}        Balkh
${Code}        201306
${SalesStatus}        Presale
${year1}            2023
${year2}            2024
${hour}             10
${Min}               30
${Floor}             2
${FlatNO.}           1001
${BlockNO.}           D
${TokenNO.}            123
${Price}               50
${TotalToken}          2
${PriceINRR}            1000
${yeildD}               12
${Tenancy_naame}          YashRaj
${Lockperiod}          1
${Leaseperiod}         2
${Pricefeet}        23
*** Test Cases ***
PropertyManagement
   Open Browser          ${SiteUrl}    ${Browser}
   Maximize Browser Window
   sleep    4
  # Wait Until Element Is Visible    ${Input_UserName}          timeout=10
   Enter Username      ${User}
   Enter Password      ${Pass}
   Click_Buton
   sleep  3
   Wait Until Element Is Visible    ${Property_management}
   Click_Property_management
   wait until element is visible    ${property_add}
   Click_Property_ADD
   wait until element is visible      ${input_propertyName}      timeout=15
   InputPropertyName                  ${PropertyName}
   Click_propType
   InputPropertype                     ${PropertyType}
   PressKeyPropertyType
   InputProperNumber                 ${propNumber}
   InputProperLocation                ${proplocation}
   Click_Prop_CountryField
   Input_Prop_Country                  ${Country}
   sleep   1
   PressKey_Prop_Country
   InputProp_State                    ${state}
   sleep   1
   PressKeyProp_State
   InputProp_City                     ${City}
   sleep    1
   PressKeyProp_City
   InputZip_Code                     ${Code}
   Choose_propPhoto
   Scroll_down_SaveProp_button1

   wait until element is visible      ${SaveButton}       timeout=10
   sleep    5
   Click_Propsave1
   wait until element is visible     ${Choose_PropCoverPhoto}
   Choose_propCoverPhoto
   Scroll_down_SaveProp_button2
   wait until element is visible     ${Choose_PropPDF}
   Choose_propCoverPdf
   Scroll_down_SaveProp_button2
   sleep   2
   wait until element is visible      ${SaveButton2}       timeout=5
   Click_Propsave2
   sleep    3
   wait until element is visible       ${Click_salesStatus}
   Click_Prop_SalesStatus
   sleep   1
  # Input_Prop_SalesStatus              ${SalesStatus}
   select_status
   #PressKey_Prop_selectedSttus
   Click_Prop_Calender
   Select_Month_startDate
   Clear_year_input
   Input_Prop_StartYear             ${year1}
   sleep   1
   Start_date_select
   sleep    1
   Clear_year_input
   sleep      1
   Input_Prop_StartYear             ${year2}
   sleep     1
   Select_Month_EndDate
   End_date_select

   sleep     1
   Click_time
   sleep    2
   Clear_TimeElement1
   sleep   3
   Input_Prop_Time1             ${hour}
   PressKey_hour
   Sleep    3
   Clear_TimeElement2
   sleep    3
   Input_Prop_Time2           ${Min}
   Sleep    3
   PressKey_min
   Sleep    3
   selectFloor
   sleep  3
   selectedFloor
  # Input_Prop_floor           ${Floor}
#   ClickApartment
#   selectApartment
#   Input_Prop_flatNumber        ${FlatNO.}
#   Input_Prop_BlockName         ${BlockNO.}
#   ClickDirection
#   selectDirection
   Input_Prop_Input_Token                 ${TokenNO.}
   Input_Prop_Input_StartingPrice           ${Price}

   Scroll_down_SaveProp_button3
   Sleep    2
   selectFloor2
   selectedFloor2
   Scroll_down_SaveProp_button3
   Sleep    2
   Input_Prop_Input_TotalTokens       ${TotalToken}
   Input_Prop_Input_PriceINR             ${PriceINRR}
   Input_Prop_Input_yeild               ${yeildD}
   Scroll_down_SaveProp_button3
   wait until element is visible         ${saveButton3}
   Click_Propsave3
   Wait Until Element Is Visible        ${Tenancy_Name}      timeout=15
   Sleep    10
   Input_Prop_Input_Tenancy_Name        ${Tenancy_naame}
   Sleep    2
   Input_Prop_Input_LockInPeriod        ${Lockperiod}
   Sleep    2
   Input_Prop_Input_LeaseInPeriod        ${Leaseperiod}
   Sleep    2
   Input_Prop_Input_PriceSquareFeet        ${Pricefeet}
   Click_Propsave4

   sleep     10

