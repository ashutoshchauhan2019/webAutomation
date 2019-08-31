Given(/^I open the site (.*)$/) do |url|
  $user = HomePage.new(@browser)
  @browser.goto(url)
  $user.parent_product_view.scroll.to
end

When(/^I add (\d+) products to cart$/) do |product_count|
  $user.second_product_view.hover
  $user.second_add_cart.click
  $user.close_button.click
  $user.third_product_view.hover
  $user.third_add_cart.click
end

And(/^I click on Proceed to checkout in order summary$/) do
  $user.proceed_to_checkout_button.click
end

Then(/^I verify (\d+) products in cart$/) do |product_count|
  $user = ShoppingCart.new(@browser)
  $user.products_count_text(product_count).wait_until_present
end

When(/^I click on Proceed to checkout in shopping cart page$/) do
  $user.proceed_to_checkout_button.click
end

And(/^I enter Email Id$/) do
  $user = AuthenticationPage.new(@browser)
  random_number = rand(10000..999999)
  $user.email_id_field.send_keys("hello#{random_number}@yopmail.com")
end

And(/^I click on Create Account button$/) do
  $user.create_account_button.click
end

And(/^I enter Personal Information$/) do
  $user = CreateAccountPage.new(@browser)
  $user.male_gender_radio_button.click
  $user.first_name_field.send_keys("hello")
  $user.last_name_field.send_keys("last")
  $user.password_field.send_keys("password")
  $user.days_list.select "1"
  $user.month_list.select /January/
  $user.year_list.select /2019/
  $user.first_name_field_address.send_keys("hello")
  $user.last_name_field_address.send_keys("last")
  $user.company_field.send_keys("hello")
  $user.address_field.send_keys("hello")
  $user.city_field.send_keys("last")
  $user.state_list.select "Alabama"
  $user.post_code_field.send_keys("00000")
  $user.mobile_phone_number_field.send_keys("0400000000")
  $user.alias_address_field.send_keys("hello")
end

And(/^I click on Register button$/) do
  $user.register_button.click
end

And(/^I click on Proceed to checkout in delivery address page$/) do
  $user = DeliveryAddressPage.new(@browser)
  $user.proceed_to_checkout_button.click
end

And(/^I accept terms and conditions$/) do
  $user = ShippingPage.new(@browser)
  $user.terms_condition_checkbox.click
end

And(/^I click on Proceed to checkout in shipping page$/) do
  $user.proceed_to_checkout.click
end

And(/^I select pay with bank wire for payment option$/) do
  $user = PaymentPage.new(@browser)
  $user.bank_wire.click
end

And(/^I confirm my order$/) do
  $user = OrderSummaryPage.new(@browser)
  $user.confirm_order_button.click
end

Then(/^I should see Order completion message$/) do
  $user = OrderConfirmationPage.new(@browser)
  $user.confirmation_text.wait_until_present
end
