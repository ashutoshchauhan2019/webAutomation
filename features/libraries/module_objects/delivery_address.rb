module DeliveryAddress
  def proceed_to_checkout_button
    @browser.button(:class,"button btn btn-default button-medium")
  end
end