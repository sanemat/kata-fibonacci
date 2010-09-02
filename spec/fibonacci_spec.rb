# encoding: utf-8
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
require 'fibonacci'
require 'spec'
describe "Fibonacci" do
  it "put 0" do
    Fibonacci.number(0).should == 0
  end
  it "put 1" do
    Fibonacci.number(1).should == 1
  end
  it "put 2" do
    Fibonacci.number(2).should == 1
  end
end
