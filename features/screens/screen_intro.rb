class ScreenIntro < ScreenBase
  attr_accessor :driver
  def initialize(driver)
    @base = element(:id, 'content')
    @to_application_button = element(:id, 'com.testdevlab.notifyus:id/close_intro')
    @filter_icon = element(:id, 'com.testdevlab.notifyus:id/intro_footer_image')
    @preview = element(:class, 'android.widget.RelativeLayout')
    @intro_header = element(:id, 'com.testdevlab.notifyus:id/intro_text_header')
    @intro_footer = element(:id, 'com.testdevlab.notifyus:id/intro_text_footer')
    @driver = driver
  end

  def visible?
    @driver.find_element(@to_application_button[:type], @to_application_button[:value])
    @driver.find_element(@filter_icon[:type], @filter_icon[:value])
    @driver.find_element(@preview[:type], @preview[:value])
    @driver.find_element(@intro_header[:type], @intro_header[:value])
    @driver.find_element(@intro_footer[:type], @intro_footer[:value])
    @driver.find_element(@base[:type], @base[:value])
  end

  def close_intro
    @driver.find_element(@button_to_app[:type], @button_to_app[:value]).click
  end
end
