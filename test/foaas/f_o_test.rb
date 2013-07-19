require "minitest_helper"

describe Foaas::FO do
  before do
    @subject = Foaas::FO
    @from = SecureRandom.hex
    @name = SecureRandom.hex
  end

  it "can be initialized" do
    @subject.must_respond_to :new
  end

  it "can be initialized without arguments" do
    @subject.new().must_respond_to :execute!
  end

  it "returns a friendly FO" do
    response = @subject.new(from: @from, name: @name).execute!
    assert response.data["message"].include?(@name)
    assert response.data["subtitle"].include?(@from)
  end
end
