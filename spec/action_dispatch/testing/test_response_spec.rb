require "spec_helper"

RSpec.describe ActionDispatch::TestResponse do
  subject(:test_response) { ActionDispatch::TestResponse.new(status) }

  describe "#success?" do
    let(:status) { 200 }

    it "responds to success?" do
      expect(test_response).to respond_to(:success?)
    end

    it "returns true for successful status" do
      expect(test_response.success?).to be_truthy
    end
  end

  describe "#missing?" do
    let(:status) { 404 }

    it "responds to missing?" do
      expect(test_response).to respond_to(:missing?)
    end

    it "returns true for missing status" do
      expect(test_response.missing?).to be_truthy
    end
  end

  describe "#error?" do
    let(:status) { 500 }

    it "responds to error?" do
      expect(test_response).to respond_to(:error?)
    end

    it "returns true for error status" do
      expect(test_response.error?).to be_truthy
    end
  end
end