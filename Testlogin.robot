*** Setting ***
Library         SeleniumLibrary
Suite Setup     Open Browser    ${base_url}      ${browser_type}        
Suite Teardown  Close Browser

*** Variables ***   
${base_url}         https://pub-eish-dev.keponet.com/frontend/login
${browser_type}     Chrome

*** Test Cases ***
#I Login With Valid email and valid password
    Maximize Browser Window
    Input Text                      //input[@id="email"]            jenareishsatu@yopmail.com
    Input Text                      //input[@id="password"]         12345678
    Click Element                   //button[@type="submit"]
    Element Should Be Visible       //img[@id="menu-logo"]    

I Login With valid email but Invalid password
    Maximize Browser Window 
    Input Text                               //input[@id="email"]            jenareishsatu@yopmail.com
    Input Password                           //input[@id="password"]         12345
    Click Element                           //button[@type="submit"]
    Element Should Not Be Visible             //img[@id="menu-logo"]    

I Login With invalid email but valid password
    Maximize Browser Window 
    Input Text                               //input[@id="email"]            aishamad93@gmail.com
    Input Password                           //input[@id="password"]         12345678
    Click Element                           //button[@type="submit"]
    Element Should Not Be Visible             //img[@id="menu-logo"]    

