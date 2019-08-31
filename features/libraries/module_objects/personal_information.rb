module PersonalInformation
  def male_gender_radio_button
    @browser.input(:id,"id_gender1")
  end

  def first_name_field
    @browser.input(:id,"customer_firstname")
  end

  def last_name_field
    @browser.input(:id,"customer_lastname")
  end

  def password_field
    @browser.input(:id,"passwd")
  end

  def days_list
    @browser.select_list(:id,"days")
  end

  def month_list
    @browser.select_list(:id,"months")
  end

  def year_list
    @browser.select_list(:id,"years")
  end
end