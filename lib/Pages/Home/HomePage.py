from lib.Pages.BasePage import BasePage
from lib.Pages.Home.HomePageLocator import HomePageLocator as l
from lib.Pages.Cart.CartPageLocator import CartPageLocator as cl
from lib.Pages.Login.LoginPgeLocator import LoginPageLocator as ll


class HomePage(BasePage):

    def check_different_menu_items_in_left_panel(self):
        self.session.page_should_contain_element(l.all_items_menu)
        self.session.page_should_contain_element(l.about_button_menu)
        self.session.page_should_contain_element(l.logout_menu)
        self.session.page_should_contain_element(l.reset_app_menu)

    def click_on_close_menu_button(self):
        self.session.click_element(l.reset_app_menu)

    def click_on_about_menu(self):
        self.session.click_element(l.about_button_menu)

    def click_on_logout_menu_menu(self):
        self.session.click_element(l.logout_menu)

    def click_on_product_sort_button(self):
        self.session.click_element(cl.product_sort_container)

    def check_different_sort_options_available(self):
        self.session.page_should_contain_element(l.sort_a_z)
        self.session.page_should_contain_element(l.sort_z_a)
        self.session.page_should_contain_element(l.sort_price_low_high)
        self.session.page_should_contain_element(l.sort_price_high_low)

    def click_on_sort_a_z(self):
        self.session.click_element(l.sort_a_z)

    def click_on_sort_z_a(self):
        self.session.click_element(l.sort_z_a)

    def click_on_sort_price_low_high(self):
        self.session.click_element(l.sort_price_low_high)

    def click_on_sort_price_high_low(self):
        self.session.click_element(l.sort_price_high_low)

    def click_on_social_media_icon(self, name):
        if name == 'Twitter':
            self.session.click_element(cl.twitter_symbol)
        if name == 'Facebook':
            self.session.click_element(cl.facebook_symbol)
        if name == 'Linkedin':
            self.session.click_element(cl.linkedin_symbol)

    def check_different_web_elements_on_login_page(self):
        self.session.page_should_contain_element(ll.username)
        self.session.page_should_contain_element(ll.password)
        self.session.page_should_contain_element(ll.login_button)

    def alert_should_be_present(self, text):
        self.session.alert_should_be_present(text, 'Accept')




