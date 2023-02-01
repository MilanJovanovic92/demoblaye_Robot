*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...               The TestData variables are used for better segmentation of the input data.
...               They will have to be imported as a Resource in the required .robot file.
Library           SeleniumLibrary


*** Variables ***
${PhoneName}    Samsung galaxy s6
${PhonePrice}   $360 *includes tax
${PictureRow}   Pic
${TitleRow}     Title
${PriceRow}     Price
${DeleteRow}    x