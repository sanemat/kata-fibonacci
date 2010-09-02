# encoding: utf-8
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
require 'fibonacci'
require 'spec'
describe "Fibonacci" do
  it "" do
    lambda {Fibonacci.new}.should_not raise_error
  end
  it "put 1" do
    Fibonacci.number(0).should == 0
  end
end
