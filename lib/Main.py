# from Pages import *
from Pages import CartPage
from Pages import BasePage
from Pages import CheckoutPage
from Pages import HomePage
from Pages import LoginPage


class Main(BasePage, CartPage, CheckoutPage, HomePage, LoginPage):

    def __init__(self):
        super(Main, self).__init__()



