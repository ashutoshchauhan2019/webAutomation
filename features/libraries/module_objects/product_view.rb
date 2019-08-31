module ProductView
  def parent_product_view
    @browser.img(:class => "replace-2x img-responsive")
  end

  def second_product_view
    @browser.img(:class => "replace-2x img-responsive",:index => 2)
  end

  def second_add_cart
    @browser.span(:text => "Add to cart",:index => 2)
  end

  def third_product_view
    @browser.img(:class => "replace-2x img-responsive",:index => 3)
  end

  def third_add_cart
    @browser.span(:text => "Add to cart",:index => 3)
  end

  def close_button
    @browser.span(:class => "cross")
  end

  def proceed_to_checkout_button
    @browser.link(:class,"btn btn-default button button-medium")
  end
end