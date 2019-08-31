module OrderSummary
  def confirm_order_button
    @browser.button(:class,"button btn btn-default button-medium")
  end
end