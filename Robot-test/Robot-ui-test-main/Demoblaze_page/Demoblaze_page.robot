*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...               The system specific keywords created here form our own domain specific language.
...               They utilize keywords provided by the imported SeleniumLibrary.
...               It serves for storing all needed variables of the web pages.
Library           SeleniumLibrary


*** Variables ***

${HomepageLogo}           xpath://a[@id='nava']
${CategoriesList}         xpath://div/a[@id='itemc']
${CategoriesPhones}       xpath://div/a[@id='itemc'][1]
${CategoriesLaptops}      xpath://div/a[@id='itemc'][2]
${CategoriesMonitos}      xpath://div/a[@id='itemc'][3]
${PhoneProductTable}      xpath://div[@id='tbodyid']
${FirstPhoneItem}         xpath://div[5]/div/div[2]/div/div[1]
${ProductLogo}            xpath://div[@class='item active']
${ProductName}            xpath://div[5]/div/div[2]/h2
${ProductPrice}           xpath://div/div[2]/h3
${AddToCartButton}        xpath://a[@class='btn btn-success btn-lg']
${CartButton}             xpath://a[@id='cartur']
${ProductPageTitle}       xpath://div[6]/div/div[1]/h2
${ProductTableInCart}     xpath://table[@class='table table-bordered table-hover table-striped']
${PictureTableRowInCart}  xpath://table[@class='table table-bordered table-hover table-striped']/thead/tr/th[1]
${TitleTableRowInCart}    xpath://table[@class='table table-bordered table-hover table-striped']/thead/tr/th[2]
${PriceTableRowInCart}    xpath://table[@class='table table-bordered table-hover table-striped']/thead/tr/th[3]
${DeleteTableRowInCart}   xpath://table[@class='table table-bordered table-hover table-striped']/thead/tr/th[4]
