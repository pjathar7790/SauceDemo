from lib.Pages.BasePage import BasePage
from lib.Pages.Login.LoginPgeLocator import LoginPageLocator as l


class LoginPage(BasePage):

    def login_to_saucedemo(self, username, password):
        self.session.input_text(l.username, username)
        self.session.input_text(l.password, password)
        self.session.click_button(l.login_button)

    def verify_saucedemo_home_page_after_login(self):
        self.session.wait_until_page_contains_element(l.app_logo)
        self.session.page_should_contain_element(l.app_logo)
        self.session.page_should_contain_element(l.home_page_title)
        current_url = self.session.get_location()
        assert current_url == l.home_page_expected_url, 'Home Page Url Is Not Matching'

    def verify_error_message_for_wrong_credentials(self):
        error = self.session.get_text(l.wrong_credentials_error_message)
        assert error == l.expected_error_wrong_credentials, 'Error Message Did Not Match'

    def verify_error_message_for_empty_username(self):
        error = self.session.get_text(l.wrong_credentials_error_message)
        assert error == l.expected_error_blank_username, 'Error Message Did Not Match'

    def verify_error_message_for_empty_password(self):
        error = self.session.get_text(l.wrong_credentials_error_message)
        assert error == l.expected_error_blank_password, 'Error Message Did Not Match'

    def verify_error_message_for_locked_out_user(self):
        error = self.session.get_text(l.wrong_credentials_error_message)
        assert error == l.expected_error_locked_user, 'Error Message Did Not Match'
