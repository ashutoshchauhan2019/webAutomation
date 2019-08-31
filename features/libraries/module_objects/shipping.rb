module Shipping
  def terms_condition_checkbox
    @browser.input(:id,"cgv")
  end

  def proceed_to_checkout
    @browser.button(:class,"button btn btn-default standard-checkout button-medium")
  end
end