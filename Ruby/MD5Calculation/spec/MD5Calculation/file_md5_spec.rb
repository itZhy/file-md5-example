# encoding: utf-8
require 'spec_helper'

describe FileMD5 do

  before do
    @calculator = FileMD5.new
  end

  describe "#calculate" do
    context "when file is exist" do

      it "should get correct md5." do
        @calculator.calculate(MD5Calculation::ROOT +
                                  '/public/fixture/test.txt').should == "85c45b74e8753920570f6c9a01ca759b"
      end
    end

    context "when file not found" do
      it "should throw exception." do
        wrong_file_path = 'wrong_path'

        expect { @calculator.calculate(wrong_file_path) }.to raise_error(RuntimeError) { |e|
          e.message.should == "file not found:[#{wrong_file_path}]." }
      end
    end
  end
end
