require 'spec_helper'

describe Zenvia::SmsStatus do
  it "should translate status" do
    described_class.t(120).should eq 'Message received by mobile'
    described_class.t(140).should eq 'Mobile number not covered'
  end
end
