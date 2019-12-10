require 'rails_helper'
RSpec.describe User, type: :model do
  it "should also be valid" do 
    expect(build(:user, :male).first_name).to eq("John")
    expect(build(:user, :female).first_name).to eq("Jane")
  end
  # This is our control
  # context "With valid attributes" do 
  #   it "should save" do 
  #     expect(build(:user)).to be_valid
  #   end
  # end
  
  # context "With invalid attributes" do 
  #   it "should not save if first_name field is blank" do
  #     expect(buildcopy(:user, first_name: "")).to be_invalid
  #   end
    
  #   it "should not save if last_name field is blank" do
  #     expect(buildcopy(:user, last_name: "")).to be_invalid
  #   end

  #   it "should not save if email already exists" do
  #     create(:user)
  #     expect(build(:user)).to be_invalid
  #   end

  #   it "should not save if invalid email format" do
  #     expect(build(:user, email: "invalidEmail")).to be_invalid
  #   end
  # end
end