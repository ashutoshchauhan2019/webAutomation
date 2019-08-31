module ShoppingCartSummary
  def products_count_text(product_count)
    @browser.span(:text,"#{product_count} Products")
  end

  def proceed_to_checkout_button
    @browser.link(:class,"button btn btn-default standard-checkout button-medium")
  end
end