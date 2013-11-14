# encoding: utf-8
require 'spec_helper'
require 'qreki'

describe Qreki do
  before do
#    2013,11,1 # => 2013,false,9,28
#    2014,11,1 # => 2014,true, 9,9
#    2014,3,30 # => 2014,false,2,30
  end

  it "should size 4" do
    @q = Qreki.get(2013,11,1)
    @q.size.should == 4
  end

  it "should get eql 2013,11,1 => 2013,false,9,28" do
    @q = Qreki.get(2013,11,1)  # => 2013,false,9,28
    @q[0].should eql 2013
    @q[1].should eql false
    @q[2].should eql 9
    @q[3].should eql 28
  end

  it "should get eql 2014,11,1 => 2014,true, 9,9" do
    @q = Qreki.get(2014,11,1)  # => 2014,true, 9,9
    @q[0].should eql 2014
    @q[1].should eql true
    @q[2].should eql 9
    @q[3].should eql 9
  end

  it "should get eql 2014,3,30 => 2014,false,2,30" do
    @q = Qreki.get(2014,3,30)  # => 2014,false,2,30
    @q[0].should eql 2014
    @q[1].should eql false
    @q[2].should eql 2
    @q[3].should eql 30
  end

  it "should get_from_date eql 2013,11,1 => 2013,false,9,28" do
    @q = Qreki.get_from_date(Date.new(2013,11,1))  # => 2014,false,2,30
    @q[0].should eql 2013
    @q[1].should eql false
    @q[2].should eql 9
    @q[3].should eql 28
  end

  it "should rokuyou eql 2013,11,4 => 大安" do
    @r = Qreki.rokuyou(2013,11,4)
    @r.should eql "大安"
  end

  it "should sekki eql 2013,11,4 => " do
    @r = Qreki.sekki(2013,11,4)
    @r.should eql ""
  end

  it "should sekki eql 2013,11,7 => 立冬" do
    @r = Qreki.sekki(2013,11,7)
    @r.should eql "立冬"
  end
end
