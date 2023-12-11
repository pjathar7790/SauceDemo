from lib.Pages.BasePage import BasePage
from lib.Pages.Checkout.CheckoutPageLocator import CheckoutPageLocator as l


class CheckoutPage(BasePage):
    def click_on_checkout_button(self):
        self.session.click_button(l.checkout_button)

    def enter_details_on_checkout_information_page(self, firstname, lastname, postalcode):
        self.session.input_text(l.first_name, firstname)
        self.session.input_text(l.last_name, lastname)
        self.session.input_text(l.postal_code, postalcode)

    def click_on_continue_button(self):
        self.session.click_button(l.continue_button)

    def click_on_cancel_button(self):
        self.session.click_button(l.cancel_button)

    def check_different_web_elements_on_checkout_your_info_page(self):
        self.session.element_text_should_be(l.checkout_page_title, l.checkout_your_information_page)
        self.session.page_should_contain_element(l.first_name)
        self.session.page_should_contain_element(l.last_name)
        self.session.page_should_contain_element(l.postal_code)
        self.session.page_should_contain_element(l.cancel_button)
        self.session.page_should_contain_element(l.continue_button)

    def check_different_web_elements_on_checkout_overview_page(self):
        self.session.element_text_should_be(l.checkout_page_title, l.checkout_overview_page)
        self.session.page_should_contain_element(l.payment_information)
        self.session.page_should_contain_element(l.shipping_information)
        self.session.page_should_contain_element(l.price_total)
        self.session.page_should_contain_element(l.cancel_button)
        self.session.page_should_contain_element(l.finish_button)

    def click_on_finish_button(self):
        self.session.click_button(l.finish_button)

    def click_on_back_to_home_button(self):
        self.session.click_button(l.back_to_home_button)

    def check_different_web_elements_on_checkout_complete_page(self):
        self.session.page_should_contain_element(l.back_to_home_button)
        self.session.page_should_contain_element(l.thank_you_for_your_order)
        self.session.element_text_should_be(l.checkout_page_title, l.checkout_complete_page)

    def get_error_message_on_checkout_page(self):
        return self.session.get_text(l.error_locator)




