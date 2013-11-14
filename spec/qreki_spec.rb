# encoding: utf-8
require 'spec_helper'
require 'qreki'

describe Qreki do
  before do
#    2013,11,1 # => 2013,false,9,28
#    2014,11,1 # => 2014,true, 9,9
#    2014,3,30 # => 2014,false,2,30
  end

  it "should calc eql 2013,11,1 => 2013,false,9,28 赤口" do
    @q = Qreki.calc(2013,11,1)
    @q.year.should    eql 2013
    @q.uruu.should    eql false
    @q.month.should   eql 9
    @q.day.should     eql 28
    @q.rokuyou.should eql "赤口"
    @q.sekki.should   eql ""
  end

  it "should calc eql 2014,11,1 => 2014,true, 9,9 大安" do
    @q = Qreki.calc(2014,11,1)
    @q.year.should    eql 2014
    @q.uruu.should    eql true
    @q.month.should   eql 9
    @q.day.should     eql 9
    @q.rokuyou.should eql "大安"
    @q.sekki.should   eql ""
  end

  it "should calc eql 2014,3,30 => 2014,false,2,30" do
    @q = Qreki.calc(2014,3,30)  # => 2014,false,2,30
    @q.year.should    eql 2014
    @q.uruu.should    eql false
    @q.month.should   eql 2
    @q.day.should     eql 30
    @q.rokuyou.should eql "先勝"
    @q.sekki.should   eql ""
  end

  it "should calc_from_date eql 2013,11,7 => 2013,false,10,5" do
    @q = Qreki.calc_from_date(Date.new(2013,11,7))
    @q.year.should  eql 2013
    @q.uruu.should  eql false
    @q.month.should eql 10
    @q.day.should   eql 5
    @q.rokuyou.should eql "友引"
    @q.sekki.should   eql "立冬"
  end
end
