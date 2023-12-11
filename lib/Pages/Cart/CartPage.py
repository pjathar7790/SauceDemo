from lib.Pages.BasePage import BasePage
from lib.Pages.Cart.CartPageLocator import CartPageLocator as l


class CartPage(BasePage):

    def verify_different_web_elements_on_home_page(self):
        self.session.page_should_contain_element(l.home_page_title)
        self.session.page_should_contain_element(l.menu_button)
        self.session.page_should_contain_element(l.app_logo)
        self.session.page_should_contain_element(l.twitter_symbol)
        self.session.page_should_contain_element(l.facebook_symbol)
        self.session.page_should_contain_element(l.linkedin_symbol)

    def click_on_shopping_cart(self):
        self.session.wait_until_element_is_visible(l.shopping_cart_link)
        self.session.click_element(l.shopping_cart_link)

    def click_on_sort_container(self):
        self.session.wait_until_element_is_visible(l.product_sort_container)
        self.session.click_element(l.product_sort_container)

    def click_on_add_to_cart_button(self, product_no):
        self.session.wait_until_element_is_visible(l.add_to_cart_button.replace('inventory_no', product_no))
        self.session.click_element(l.add_to_cart_button.replace('inventory_no', product_no))

    def click_on_remove_from_cart_button_homepage(self, product_no):
        self.session.wait_until_element_is_visible(l.remove_from_cart_button_homepage.replace('inventory_no', product_no))
        self.session.click_element(l.remove_from_cart_button_homepage.replace('inventory_no', product_no))

    def click_on_remove_from_cart_button_cartpage(self, product_no):
        self.session.wait_until_element_is_visible(l.remove_from_cart_button_cart.replace('inventory_no', product_no))
        self.session.click_element(l.remove_from_cart_button_cart.replace('inventory_no', product_no))

    def view_details_of_product(self, product_no):
        self.session.wait_until_element_is_visible(l.inventory_item_name.replace('inventory_no', product_no))
        self.session.click_element(l.inventory_item_name.replace('inventory_no', product_no))

    def get_product_name(self, product_no):
        self.session.wait_until_element_is_visible(l.inventory_item_name.replace('inventory_no', product_no))
        return self.session.get_text(l.inventory_item_name.replace('inventory_no', product_no))

    def get_product_price(self, product_no):
        self.session.wait_until_element_is_visible(l.inventory_price.replace('inventory_no', product_no))
        return self.session.get_text(l.inventory_price.replace('inventory_no', product_no))

    def get_product_image_name(self, product_no):
        self.session.wait_until_element_is_visible(l.inventory_item_image.replace('inventory_no', product_no))
        return self.session.get_element_attribute(l.inventory_item_image.replace('inventory_no', product_no), 'alt')

    def get_details_of_product_added_in_cart(self, product_no):
        name = self.session.get_text(l.cart_item_name.replace('inventory_no', product_no))
        price = self.session.get_text(l.cart_item_price.replace('inventory_no', product_no))
        return [name, price]

    def get_details_of_product_on_product_details_page(self, product_no):
        name = self.session.get_text(l.inventory_details_name.replace('inventory_no', product_no))
        price = self.session.get_text(l.inventory_details_price.replace('inventory_no', product_no))
        image = self.session.get_element_attribute(l.inventory_details_image.replace('inventory_no', product_no), 'alt')
        return [name, price, image]

    def check_cart_is_empty(self):
        self.session.page_should_not_contain_element(l.cart_item)

    def click_on_continue_shopping_button(self):
        self.session.wait_until_element_is_visible(l.continue_shopping_button)
        self.session.click_element(l.continue_shopping_button)

    def click_on_back_to_product(self):
        self.session.wait_until_element_is_visible(l.back_to_products)
        self.session.click_element(l.back_to_products)

    def click_on_menu_button(self):
        self.session.wait_until_element_is_visible(l.menu_button)
        self.session.click_element(l.menu_button)

    def check_different_web_elements_on_cart_page(self):
        self.session.page_should_contain_element(l.cart_page_title)
        self.session.page_should_contain_element(l.quantity_text)
        self.session.page_should_contain_element(l.description_text)
        self.session.page_should_contain_element(l.continue_shopping_button)
