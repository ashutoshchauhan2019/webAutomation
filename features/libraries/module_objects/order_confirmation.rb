module OrderConfirmation
  def confirmation_text
    @browser.p(:text,"Your order on My Store is complete.")
  end
end