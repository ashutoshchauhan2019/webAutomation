module Payment
  def bank_wire
    @browser.link(:class,"bankwire")
  end
end