### Introduction:
```
This repository has automation code for website SauceDemo(https://www.saucedemo.com/).
```

### Pre-requisite:
```
install python 3.x.x
install robot-framework 6.1.1 using command pip install robotframework==6.1.1
install robotframework-seleniumlibrary 6.2.0 using command install robotframework-seleniumlibrary==6.2.0
```

### Folder Structure:
```
lib |                                 has all keywords used in test cases
    Pages|           
         Cart    |                   
                 CartPage.py             | has all keywords related to Cart Page 
                 CartPageLocator.py      | has all locators related to Cart Page
         Checkout|
                 Checkout.py             | has all keywords related to Checkout Page 
                 CheckoutPageLocator.py  | has all locators related to Checkout Page
         Home    |
                 Home.py                 | has all keywords related to Home Page 
                 HomePageLocator.py      | has all locators related to Home Page   
         Login   |
                 Login.py                | has all keywords related to Login Page 
                 LoginPageLocator.py     | has all locators related to Login Page

src |                                 has all keywords used in test cases
               
    Cart    |                   
            Cart.robot                | has all testcases related to Cart Page 
            cart_resources.robot      | has some common keywords and common variables which are used in Cart Page testcasese
    Checkout|
            Checkout.robot            | has all testcases related to Checkout Page 
            checkout_resources.robot  | has some common keywords and common variables which are used in Checkout Page testcasese
    Home    |
            Home.robot                | has all testcases related to Home Page 
            home_resources.robot      | has some common keywords and common variables which are used in Home Page testcasese   
    Login   |
            Login.robot               | has all testcases related to Login Page 
            login_resources.robot     | has some common keywords and common variables which are used in Login Page testcasese
    main_resources.robot|             | has some common keywords and common variables which are used in many testcases
```

