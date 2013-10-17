# encoding: utf-8
require 'spec_helper'

describe FileMD5 do

  before do
    @calculator = FileMD5.new
  end

  describe "#calculate" do
    it "should get correct md5." do
    end

    context "when file not found" do
      it "should throw exception." do
      end
    end
  end

end
