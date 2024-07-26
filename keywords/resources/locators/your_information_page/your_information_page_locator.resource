*** Variables ***
${your_information.header}        xpath://span[@id="header_container"][text()="${your_information_element.header_lbl}"]
${your_information.firstname}     xpath://input[@id="first-name"][text()="${your_information_element.firstname_lbl}"]
${your_information.lastname}      xpath://input[@id="last-name"][text()="${your_information_element.lastname_lbl}"]
${your_information.zipcode}       xpath://input[@id="postal-code"][text()="${your_information_element.zipcode_lbl}"]
${your_information.cancel}        xpath://button[@id="cancel"][text()="${your_information_element.cancel_btn}"]
${your_information.continue}      xpath://input[@id="continue"][text()="${your_information_element.continue_btn}"]
