# encoding: utf-8
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
require 'fibonacci'
require 'spec'
describe "Fibonacci" do
  it "put 0" do
    fibonacci = Fibonacci.new
    fibonacci.number(0).should == 0
  end
  it "put 1" do
    fibonacci = Fibonacci.new
    fibonacci.number(1).should == 1
  end
  it "put 2" do
    fibonacci = Fibonacci.new
    fibonacci.number(2).should == 1
  end
  it "put 3" do
    fibonacci = Fibonacci.new
    fibonacci.number(3).should == 2
  end
  it "put 10" do
    fibonacci = Fibonacci.new
    fibonacci.number(10).should == 55
  end
  it "put 100" do
    fibonacci = Fibonacci.new
    fibonacci.number(100).should == 354224848179261915075
  end
end
