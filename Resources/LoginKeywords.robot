*** Settings ***
Library     SeleniumLibrary
Variables    ../PageObjects/Locators.py
Library     SeleniumLibrary
Variables    ../PageObjects/Locators.py
Library     SeleniumLibrary
Variables    ../PageObjects/Locators.py
*** Keywords ***
#Open my Browser
#     [Arguments]  ${SiteUrl}   ${Browser}
#     Open Browser      ${SiteUrl}      ${Browser}
#     Maximize Browser Window

Enter Username
     [Arguments]    ${Username}
     Input Text     ${Input_UserNamee}      ${Username}

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

User List
   Click Element     ${User_List}

User_management_List
   Wait Until Element Is Visible    User_management_title     User Management

InputSearch
   [Arguments]    ${UserID}
   Input Text    ${Input_search}       ${UserID}

Click_updateAction
   Click Element    ${ClickUpdateAction}

ClearIDtext
   Clear Element Text          ${InputEmail_clear}

UPdatenewID
   [Arguments]    ${updateID}
   Input Text       ${InputEmail_clear}           ${updateID}

Scroll_down_UpdateUser
   Run Keyword And Ignore Error  Scroll Element Into View     ${click_Update}

ClickUpdatebutton
   Click Button    ${click_Update}


New User Updated
   page should contain element        ${Successfull_msg}      User updated successfully


User created successfully
   Page Should Contain Element      ${Successfull_msg}       User created successfully


get_text_user
#     Get Text     ${Element_contain}
     ${text}     Page Should Contain Element           ${Element_contain}      //div[contains(text(),'yash')]
     Run Keyword If             ${text}      =      "//div[contains(text(),'yash')]"
     Log To Console    updated successfully

#     ${elem} =   Get WebElements      ${Element_contain}
#     Log To Console     ${elem}

uPdatedID_verify
    # ${value} =  Page Should Contain Element    ${Element_value}        yash9042@yopmail.com
     Run Keyword If        ${Element_value}     =             yash9042@yopmail.com
     Log To Console            email update successfully

#    ELSE
#              Log     email is not updated

Click_Property_management
    Click Element            ${Property_management}

Click_Property_ADD
    Click Element            ${property_add}

InputPropertyName
    [Arguments]     ${PropName}
    input text      ${input_propertyName}     ${PropName}

Click_propType
   click element     ${Click_propertyType}

InputPropertype
    [Arguments]     ${PropType}
    input text      ${Input_propertytype}     ${PropType}

PressKeyPropertyType
     Press Keys     ${SelectedPropertyType}        Tab

InputProperNumber
    [Arguments]     ${PropNumber}
    input text      ${InputNumber}     ${PropNumber}

InputProperLocation
    [Arguments]     ${PropLocation}
    input text      ${Inputlocation}     ${PropLocation}

Click_Prop_CountryField
    Click Element            ${Click_Prop_country_field}

Input_Prop_Country
    [Arguments]     ${Country}
    input text      ${Input_Prop_country}     ${Country}

PressKey_Prop_Country
     Press Keys     ${Selected_Prop_country}        Tab

InputProp_State
    [Arguments]     ${State}
    input text      ${Input_Prop_state}     ${State}

PressKeyProp_State
     Press Keys      ${Selected_Prop_state}        TAB

InputProp_City
    [Arguments]     ${City}
    input text      ${Input_Prop_city}     ${City}

PressKeyProp_City
     Press Keys      ${Selected_Prop_city}        TAB

InputZip_Code
    [Arguments]     ${code}
    input text      ${InputZipCode}     ${Code}

Choose_propPhoto
    choose file     ${Choose_PropImage}    ${ImageLocation}

Scroll_down_SaveProp_button1
   Run Keyword And Ignore Error  Scroll Element Into View     ${SaveButton}

Click_Propsave1
   click element      ${SaveButton}

Choose_propCoverPhoto
    choose file     ${Choose_PropCoverPhoto}    ${CoverPhotoLocation}

Choose_propCoverPdf
    choose file     ${Choose_PropPDF}    ${CoverPDFLocation}

Click_Propsave2
   click element      ${SaveButton2}


Scroll_down_SaveProp_button2
   Run Keyword And Ignore Error  Scroll Element Into View     ${SaveButton2}


Scroll_down_SaveProp_PDF
   Run Keyword And Ignore Error  Scroll Element Into View     ${Choose_PropPDF}

Click_Prop_SalesStatus
    Click Element            ${Click_salesStatus}

Input_Prop_SalesStatus
    [Arguments]     ${SelectedSales}
    input text      ${Input_salesStatus}     ${SelectedSales}

PressKey_Prop_selectedSttus
     Press Keys     ${Selected_salesStatus}        Tab

Click_Prop_Calender
    Click Element            ${Click_calender}

Select_Month_startDate
    select from list by value     ${Start_Month_value}     2

Clear_year_input
   clear element text        ${Year_input}

Input_Prop_StartYear
    [Arguments]     ${year}
    input text      ${Year_input}      ${year}

Start_date_select
   click element    ${Start_date}

select_status
    mouse down    ${sele_status}
    mouse up       ${sele_status}

Select_Month_EndDate
    select from list by value     ${End_Month_value}     4

End_date_select
   click element      ${End_date}

PressKeys23
   PRESS KEY      ${End_date}           Tab

Click_time
   click element   ${click_Time}

Clear_TimeElement1
   clear element text      ${Input_Hour}


Input_Prop_Time1
    [Arguments]     ${Hour}
    input text      ${Input_Hour}      ${Hour}

PressKey_hour
    Press Keys     ${Input_Hour}        Tab

Clear_TimeElement2
   clear element text        ${Input_Min}


Input_Prop_Time2
    [Arguments]     ${Min}
    input text      ${Input_Min}      ${Min}

PressKey_min
    Press Keys     ${Input_Min}        Tab


Input_Prop_floor
    [Arguments]     ${floor}
    input text      ${Input_floor}      ${floor}

selectFloor
   click element      ${select_floor}

selectedFloor
   MOUSE DOWN       ${selected_floor}
   mouse up      ${selected_floor}



ClickApartment
   Click Element    ${Click_apartment}

selectApartment
   Mouse Down       ${Select_apartment}
   Mouse Up          ${Select_apartment}

Input_Prop_flatNumber
    [Arguments]     ${flatNumber}
    input text      ${Input_flatNumber}      ${flatNumber}

Input_Prop_BlockName
    [Arguments]     ${BlockName}
    input text      ${Input_BlockName}      ${BlockName}

ClickDirection
   Click Element    ${Click_direction}

selectDirection
   Mouse Down       ${Select_direction}
   Mouse Up          ${Select_direction}

Input_Prop_Input_Token
    [Arguments]     ${Token}
    input text      ${Input_Token}      ${Token}

Input_Prop_Input_StartingPrice
    [Arguments]     ${StartingPrice}
    input text      ${Input_StartingPrice}      ${StartingPrice}


selectFloor2
   click element      ${select_floor2}

selectedFloor2
   MOUSE DOWN       ${selected_floor2}
   mouse up      ${selected_floor2}

Input_Prop_Input_TotalTokens
    [Arguments]     ${TotalToken}
    input text      ${Total_Tokens}      ${TotalToken}


Input_Prop_Input_PriceINR
    [Arguments]     ${PriceINRRR}
    input text      ${PriceInr}      ${PriceINRRR}

Input_Prop_Input_yeild
    [Arguments]     ${yeildD}
    input text      ${Yeild}      ${yeildD}



Click_Propsave3
   click element      ${saveButton3}


Scroll_down_SaveProp_button3
   Run Keyword And Ignore Error  Scroll Element Into View     ${saveButton3}


Input_Prop_Input_Tenancy_Name
    [Arguments]     ${TName}
    input text      ${Tenancy_Name}      ${TName}

Input_Prop_Input_LockInPeriod
    [Arguments]     ${LoPeriod}
    input text      ${LockInPeriod}      ${LoPeriod}


Input_Prop_Input_LeaseInPeriod
    [Arguments]     ${LePeriod}
    input text      ${LeaseInPeriod}      ${LePeriod}

Input_Prop_Input_PriceSquareFeet
    [Arguments]     ${PFeet}
    input text      ${PriceSquareFeet}      ${PFeet}

Click_Propsave4
   click element      ${saveButton4}


Input_Prop_Input_NameOfBuilder
    [Arguments]     ${Name_Builder}
    input text      ${NameOfBuilder}      ${Name_Builder}

Input_Prop_Input_Description
    [Arguments]     ${Dsrptn}
    input text      ${Descriptionn}       ${Dsrptn}

PressKey_Prop_Description
     Press Keys            ${Descriptionn}       TAB

country_click3
    Click Element              ${ClickCtry3}

Input_Prop_Input_country34

    [Arguments]     ${Country34}
    input text      ${Input_country34}     ${Country34}

Selected_Prop_CountryField3
   Mouse Down           ${Input_country3}
   Mouse Up               ${Input_country3}

PressKey_Prop_Country3
     Press Keys     ${selectedCountry3}        Tab

InputProp_State3
   Mouse Down      ${Selected_state3}
   Mouse Up         ${Selected_state3}


PressKeyProp_State3
     Press Keys      ${Selected_Prop_state}        TAB

InputProp_City3
    [Arguments]     ${City}
    input text      ${Input_Prop_city}     ${City}

PressKeyProp_City3
     Press Keys      ${Selected_Prop_city}        TAB


clubMembership
    Click Element              ${click_clubMembership}

clubPlans
    Click Element              ${click_plans}

clubADD
    Click Element              ${click_Club_ADD}

PlanName1
    [Arguments]     ${PlanNamexyz}
    input text      ${plan_Name}     ${PlanNamexyz}

clickValidity1
    Click Element              ${validity_click}

InputValidity1
    [Arguments]     ${Validity2}
    input text      ${validity_input}     ${Validity2}


PressKeyValidity
     Press Keys      ${validity_input}        TAB

InputClub_price
    [Arguments]     ${pricexyz}
    input text      ${ClubPrice}    ${pricexyz}

InputClub_discount
    [Arguments]     ${Discountxyz}
    input text      ${ClubDiscount}    ${Discountxyz}

clickSavebuttonClub
    Click Element              ${savebuttonClub}

ClubAddedSuccessfully
   Page Should Contain Element            ${successfullyPlanADDed}         New plan added successfully