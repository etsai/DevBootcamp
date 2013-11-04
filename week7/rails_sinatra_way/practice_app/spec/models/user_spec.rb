require 'spec_helper'

describe User do

  subject { User.new(username: "Me", password: "iheartrails", email: "email@email.com") }

  it { should be_instance_of User }
  its (:username) { should == "Me" }
  its (:password) { should == "iheartrails" }
  its (:email) { should == "email@email.com" }

end