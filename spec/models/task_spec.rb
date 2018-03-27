require 'rails_helper'

RSpec.describe Task, :type => :model do
	subject { described_class.new }

  it "is valid with valid attributes" do
  	subject.title = "qwerty"
  	subject.description = "This is description"
  	subject.priority = "High"
  	subject.status = "Open"
    expect(subject).to be_valid
  end

  it "is not valid without a title" do
	  expect(subject).to_not be_valid
	end

  it "is not valid without a description" do
  	expect(subject).to_not be_valid
  end

  it "is not valid without a priority" do
  	expect(subject).to_not be_valid
	end

  it "is not valid without a status" do
  	expect(subject).to_not be_valid
  end
end