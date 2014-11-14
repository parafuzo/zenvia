require 'spec_helper'

describe Zenvia::Sms do
  describe "#send" do
    let(:request_mock) { double post: true }

    subject { described_class.new :number, :message }

    before do
      Zenvia::Request.stub(:new).and_return request_mock
    end

    it "should call request with correct params" do
      request_mock.should_receive(:post).with({
        to: :number, message: :message, dispatch: :send
      })

      subject.send
    end

    context "when there is a message id" do
      it "should send id" do
        request_mock.should_receive(:post).with({
          to: :number, message: :message, dispatch: :send, id: 'message id'
        })

        subject.message_id = 'message id'
        subject.send
      end
    end

    context "when there is the callbackOption" do
      it "should send callbackOption" do
        request_mock.should_receive(:post).with({
          to: :number, message: :message, dispatch: :send, callbackOption: 2
        })

        subject.callback_option = 2
        subject.send
      end
    end
  end
end
