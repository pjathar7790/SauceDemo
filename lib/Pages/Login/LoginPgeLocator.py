class LoginPageLocator:

    username = 'id=user-name'
    password = 'id=password'
    login_button = 'id=login-button'
    app_logo = '//div[@class="app_logo"]'
    wrong_credentials_error_message = '//h3[@data-test="error"]'
    home_page_title = '//span[@class="title" and text()="Products"]'
    home_page_expected_url = 'https://www.saucedemo.com/inventory.html'
    expected_error_wrong_credentials = 'Epic sadface: Username and password do not match any user in this service'
    expected_error_blank_username = 'Epic sadface: Username is required'
    expected_error_blank_password = 'Epic sadface: Password is required'
    expected_error_locked_user = 'Epic sadface: Sorry, this user has been locked out.'
