require 'rails_helper'

describe "User Pages" do
  subject{ page }
  describe "signup page" do
    before{ visit signup_path }
    it { should have_content("用户注册")}
    it { should have_title("Sign up")}
  end
end
    