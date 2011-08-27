require 'spec_helper'

describe User do

  before(:each) do
    @attr = {:name=>"Example User", :dept_id=>01, :emp_id=>10 }
  end
=begin
  it "should create a new instance given valid attributes" do
    User.create!(@attr)
  end
=end
  it "should require a name" do
    no_name_user = User.new(@attr.merge(:name=> ""))
    no_name_user.should_not be_valid
  end

  it "should reject names that are too long" do
    long_name = "a" * 51
    long_name_user = User.new(@attr.merge(:name => long_name))
    long_name_user.should_not be_valid
  end
end
