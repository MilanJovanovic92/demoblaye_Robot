*** Settings ***
Documentation     A tests file with reusable keywords.
...               Variables are imported from the "Lookgin_for_job_page" file.
...               Keywords are linked to the tests file via Gherkin methodology.
...               The first keyword is used as the base for starting the tests.
Library           SeleniumLibrary
Library    Collections
Resource          ../Demoblaze_page/Demoblaze_page.robot
Resource          ../Test_Data/Test_Data.robot


*** Keywords ***
User is on Homepage
    Element Should Be Visible    ${HomepageLogo}

User is on
    [Arguments]                  ${page}
    Run Keyword And Return If    ${page}=="Homepage"        Title Should Be     STORE
    Run Keyword And Return If    ${page}=="Homepage"        User is on Homepage

Select Phones
    Element Should Be Visible    ${CategoriesPhones}
    Click Element                ${CategoriesPhones}

Show valid Phone product page
    Element Should Be Visible    ${HomepageLogo}
    Element Should Be Visible    ${PhoneProductTable}

Select first Phone item
    Element Should Be Visible    ${FirstPhoneItem}
    Click Element                ${FirstPhoneItem}
    
Validate selectected item
    Element Should Be Visible                    ${ProductLogo}
    Element Should Be Visible                    ${ProductName}
    SeleniumLibrary.Element Text Should Be       ${ProductName}    ${PhoneName}
    Element Should Be Visible                    ${ProductPrice}
    SeleniumLibrary.Element Text Should Be       ${ProductPrice}   ${PhonePrice}

Add item to cart
    Element Should Be Visible    ${AddToCartButton}
    Click Element                ${AddToCartButton}
    Go Back

Table in cart is present
    Element Should Be Visible                    ${CartButton}
    Click Element                                ${CartButton}
    Element Should Be Visible                    ${ProductPageTitle}
    SeleniumLibrary.Element Text Should Be       ${ProductPageTitle}         "Products"
    Element Should Be Visible                    ${ProductTableInCart}
    Element Should Be Visible                    ${PictureTableRowInCart}
    SeleniumLibrary.Element Text Should Be       ${PictureTableRowInCart}    ${PictureRow}
    Element Should Be Visible                    ${TitleTableRowInCart}
    SeleniumLibrary.Element Text Should Be       ${TitleTableRowInCart}      ${TitleRow}
    Element Should Be Visible                    ${PriceTableRowInCart}
    SeleniumLibrary.Element Text Should Be       ${PriceTableRowInCart}      ${PriceRow}
    Element Should Be Visible                    ${DeleteTableRowInCart}
    SeleniumLibrary.Element Text Should Be       ${DeleteTableRowInCart}     ${DeleteRow}

Going to Phone Product Cart page
    Element Should Be Visible    ${CategoriesPhones}
    Click Element                ${CategoriesPhones}
    Element Should Be Visible    ${FirstPhoneItem}
    Click Element                ${FirstPhoneItem}
    Element Should Be Visible    ${AddToCartButton}
    Click Element                ${AddToCartButton}