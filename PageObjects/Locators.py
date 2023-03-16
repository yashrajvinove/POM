#Login Page Locators
Input_UserNamee = "//input[@name='loginEmail']"
Input_Password = "name:password"
Click_Button = "xpath://button[@type='submit']"
Successfull_msg  = "//span[@class='mr-2']"
#User Management
UserManagement  = "xpath://span[text()='User Management']"
ADD_user = "xpath:(//span[text()='Add'])[1]"
ADD_title = "xpath://h1[text()='Add New User']"
Input_Name = "id:name"
Input_address = "id:address"
Input_Number = "id:phoneNumber"
Click_country_field = "xpath:(//div[@class='select__input-container css-ackcql'])[1]"
Input_country = "(//input[@class='select__input'])[1]"
Selected_country = "xpath://div[text()='Afghanistan']"
Input_state = "(//input[@class='select__input'])[2]"
Selected_state = "xpath:(//div[text()='Balkh'])[1]"
Input_city = "(//input[@class='select__input'])[3]"
Selected_city = "xpath:(//div[text()='Balkh'])[2]"
Input_Email = "xpath://input[@name='email']"
ChooseImage = "id:image"
ImageLocation = "C:/Users/Yash Raj singh/Downloads/download2121.png"
Click_submit = "xpath://button[text()='Submit']"
User_List = "xpath:(//span[text()='List'])[1]"
User_management_title = " //span[text()='User Management']"
Input_search = "id:search-input"
ClickUpdateAction = "xpath://*[local-name()='svg']//*[local-name()='path' and @d='M18.5 2.5a2.121 2.121 0 0 1 3 3L12 15l-4 1 1-4 9.5-9.5z']"
InputEmail_clear = "id:email"
click_Update = "xpath://button[text()='Update']"
Element_contain = "//div[contains(text(),'yash')]"

Element_value = "//div[text()='yash9042@yopmail.com']"
#property management
Property_management = "xpath://span[text()='Property Management']"
property_add = "xpath:(//span[text()='Add'])[2]"
input_propertyName = "name:propertyName"
Click_propertyType = "(//div[@class='select__input-container css-ackcql'])[1]"
Input_propertytype = "xpath:(//input[@class='select__input'])[1]"
SelectedPropertyType = "xpath://div[text()='Commercial']"
InputNumber = "(//input[@type='number'])[1]"
Inputlocation   = "(//input[@type='location'])[1]"

Click_Prop_country_field = "xpath:(//div[@class='select__input-container css-ackcql'])[2]"
Input_Prop_country = "(//input[@class='select__input'])[2]"
Selected_Prop_country = "xpath://div[text()='Afghanistan']"
Input_Prop_state = "(//input[@class='select__input'])[3]"
Selected_Prop_state = "xpath:(//div[text()='Balkh'])[1]"
Input_Prop_city = "(//input[@class='select__input'])[4]"
Selected_Prop_city = "xpath:(//div[text()='Balkh'])[2]"

InputZipCode = "//input[@placeholder='zipCode']"
Choose_PropImage = "id:image"
SaveButton = "xpath:(//span[text()='Save'])[1]"

Choose_PropCoverPhoto = "id:coverPhoto"
Choose_PropPDF = "(//input[@type='file'])[3]"
SaveButton2 = "xpath:(//span[text()='Save'])[2]"
CoverPhotoLocation =  "C:/Users/Yash Raj singh/Downloads/download1.jpg"
CoverPDFLocation =  "C:/Users/Yash Raj singh/Downloads/dummy-pdf_2_2.pdf"

Click_salesStatus = "xpath:(//div[@class='select__input-container css-ackcql'])[5]"
sele_status = "//div[text()='Presale']"
Input_salesStatus = "xpath://div/input[@id='react-select-5-input']"
Selected_salesStatus = "xpath://div[text()='Public sale']"
Click_calender = "xpath://input[@class='form-control form-control input']"
Start_Month_value = "//select[@aria-label='Month']"
Start_date = "//span[@aria-label='March 30, 2023']"
Year_input="//input[@class='numInput cur-year']"
End_Month_value = "//select[@aria-label='Month']"
End_date = "xpath://div/span[@aria-label='May 12, 2024']"
#End_date = "//span[text()='10']"
click_Time = "(//input[@class='form-control flatpickr-input'])[2]"
Input_Hour = "//input[@aria-label='Hour']"
Input_Min = "//input[@aria-label='Minute']"
Input_floor = "//input[@id='salesTokenInfo[0][floor]']"
select_floor = "(//div[@class='select__input-container css-ackcql'])[6]"
selected_floor = "//div[text()='Ground']"

Input_Token = "//input[@id='salesTokenInfo[0][tokenSale]']"
Input_StartingPrice = "//input[@id='salesTokenInfo[0][startingPrice]']"
select_floor2 = "(//div[@class='select__input-container css-ackcql'])[7]"
selected_floor2 = "(//div[text()='Ground'])[2]"
Total_Tokens   =  "//input[@id='tokenInfo[0][totalToken]']"
PriceInr = "//input[@id='tokenInfo[0][priceInr]']"
Yeild = "//input[@id='tokenInfo[0][yield]']"
saveButton3 = "(//span[text()='Save'])[3]"
Tenancy_Name = "//input[@placeholder='Enter Tenant Name']"
LockInPeriod = "//input[@placeholder='Lock in Period']"
LeaseInPeriod = "//input[@placeholder='Lease in Period']"
PriceSquareFeet = "//input[@placeholder='Price/Square feet']"
saveButton4 = "(//span[text()='Save'])[4]"
NameOfBuilder = "//input[@placeholder='Name Of Builder']"
Description = "//textarea[@placeholder='Builder Description']"
ClickCtry3 = "(//div[@class='select__value-container css-1d8n9bt'])[1]"
Input_country3 = "//div[@id='react-select-13-placeholder']"
  #  "xpath://*[@id='react-select-9-option-16']"

selectedCountry3 = "xpath://div[text()='Afghanistan']"
ClickState3 = "xpath:(//div/input[@class='select__input'])[6]"
Selected_state3 = "xpath:(//div[text()='Balkh'])[1]"
ClickCity = "(//div[@class='select__control css-k3ockt-control'])[3]"
Selected_city3 = "xpath:(//div[text()='Balkh'])[2]"
InputEmail3 = "//input[@placeholder='Email']"
websiteLink = "//input[@placeholder='Website Link']"
ContactNumber3 = "//input[@id='contactNumber']"
ReraNumber = "//input[@id='reraNumber']"
ContactName3 = "//input[@name='contactName']"
Gstin3 = "//input[@name='gstIn']"
PanNumber3 = "//input[@name='panNumber']"
NameOFPan = "//input[@name='nameOnPan']"
