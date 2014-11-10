require 'spec_helper'

describe Zenvia::Request do
  describe "#post" do
    let(:params) { {
      to:        '5511971889422',
      message:   "Message sent by parafuzo.com",
      dispatch:  :send,
      id:        "42"
    } }

    def do_post
      subject.post params
    end

    it "should return a parsed response" do
      VCR.use_cassette('zenvia_request') do
        response = do_post

        response[:code].should    eq "000"
        response[:message].should eq "Message Sent"
      end
    end

    context "when an error occurs" do
      let(:params) { {
        to:       '5511971889422',
        dispatch: :send,
        id:       "42"
      } }

      it "should raise an exception" do
        VCR.use_cassette('zenvia_request_error') do
          expect { do_post }.to raise_error Zenvia::Error, 'Empty message content'
        end
      end
    end
  end
end
