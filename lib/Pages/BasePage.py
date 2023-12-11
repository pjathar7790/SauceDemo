from SeleniumLibrary import SeleniumLibrary


class BasePage:

    def __init__(self):
        self.session = SeleniumLibrary()
        self.browser = 'chrome'
        self.session.set_selenium_timeout('10 seconds')
        self.session.set_selenium_speed('0.5 seconds')  #wait after each command

    def open_url(self, url):
        self.session.open_browser(url, self.browser)
        self.session.maximize_browser_window()

    def take_screenshot(self):
        self.session.capture_page_screenshot()

    def close_browser(self):
        self.session.close_browser()

    def switch_to_latest_window(self):
        self.session.switch_window('NEW')

    def get_current_page_url(self):
        return self.session.get_locations()

    def get_current_page_title(self):
        return self.session.get_title()
