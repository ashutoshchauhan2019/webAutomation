class CreateAccountPage
 include PersonalInformation,Address
 def initialize(browser)
   @browser=browser
 end
end