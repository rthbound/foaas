require 'minitest_helper'

describe Fuck::Flying do
  before do
    @subject = Fuck::Flying
    @params = {
      from: SecureRandom.hex,
    }
  end

  describe "as a class" do
    it "initializes properly" do
      @subject.new(@params).must_respond_to :execute!
    end

    it "errors when initialized without required dependencies" do
      -> { @subject.new(@params.reject { |k| k.to_s == 'from' }) }.must_raise RuntimeError
    end
  end

  describe "as an instance" do
    it "executes successfully" do
      result = @subject.new(@params).execute!
      result.successful?.must_equal true
      result.must_be_kind_of PayDirt::Result
    end
  end
end
