module Account
  def email_id_field
    @browser.input(:id,"email_create")
  end

  def create_account_button
    @browser.button(:id,"SubmitCreate")
  end
end