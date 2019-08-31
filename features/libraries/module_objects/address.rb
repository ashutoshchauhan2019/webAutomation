module Address
  def first_name_field_address
    @browser.input(:id,"firstname")
  end

  def last_name_field_address
    @browser.input(:id,"lastname")
  end

  def company_field
    @browser.input(:id,"company")
  end

  def address_field
    @browser.input(:id,"address1")
  end

  def city_field
    @browser.input(:id,"city")
  end

  def state_list
    @browser.select_list(:id,"id_state")
  end

  def post_code_field
    @browser.input(:id,"postcode")
  end

  def mobile_phone_number_field
    @browser.input(:id,"phone_mobile")
  end

  def alias_address_field
    @browser.input(:id,"alias")
  end

  def register_button
    @browser.button(:id,"submitAccount")
  end

end
