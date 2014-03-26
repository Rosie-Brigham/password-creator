require 'spec_helper'
require './lib/password_generator'

describe PasswordGenerator do

  subject do
     PasswordGenerator.new(6) 
   end

  describe "#initialize" do
    it "should store the length of the desired password" do
      subject.length.should eq 6
    end
  end

  describe "#generate" do
    it "should create a variable the same length as the desired length" do
      subject.generate.should have(subject.length).characters
    end
  end

  describe "#check_password_contents" do
    before do
      subject.stub(generate: "aB13.!Z")
    end

    it "should create a variable that has letters" do
       subject.check_password_contents.should match /[a-zA-Z]+/
    end
    it "should create a variable that has numbers" do
       subject.check_password_contents.should match /\d+/
    end
    it "should create a variable that has punctuation" do
       subject.check_password_contents.should match /[[:punct:]]/
    end
  end




end