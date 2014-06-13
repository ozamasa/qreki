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
    expect(@q.year).to    eql 2013
    expect(@q.uruu).to    eql false
    expect(@q.month).to   eql 9
    expect(@q.day).to     eql 28
    expect(@q.rokuyou).to eql "赤口"
    expect(@q.sekki).to   eql ""
  end

  it "should calc eql 2014,11,1 => 2014,true, 9,9 大安" do
    @q = Qreki.calc(2014,11,1)
    expect(@q.year).to    eql 2014
    expect(@q.uruu).to    eql true
    expect(@q.month).to   eql 9
    expect(@q.day).to     eql 9
    expect(@q.rokuyou).to eql "大安"
    expect(@q.sekki).to   eql ""
  end

  it "should calc eql 2014,3,30 => 2014,false,2,30" do
    @q = Qreki.calc(2014,3,30)  # => 2014,false,2,30
    expect(@q.year).to    eql 2014
    expect(@q.uruu).to    eql false
    expect(@q.month).to   eql 2
    expect(@q.day).to     eql 30
    expect(@q.rokuyou).to eql "先勝"
    expect(@q.sekki).to   eql ""
  end

  it "should calc_from_date eql 2013,11,7 => 2013,false,10,5" do
    @q = Qreki.calc_from_date(Date.new(2013,11,7))
    expect(@q.year).to  eql 2013
    expect(@q.uruu).to  eql false
    expect(@q.month).to eql 10
    expect(@q.day).to   eql 5
    expect(@q.rokuyou).to eql "友引"
    expect(@q.sekki).to   eql "立冬"
  end


  it "should shunbun eql 2014 => 2014,3,21" do
    @q = Qreki.shunbun(2014)  # => 2014,3,21
    expect(@q.year).to    eql 2014
    expect(@q.month).to   eql 3
    expect(@q.day).to     eql 21
  end

  it "should shunbun eql 2030 => 2030,3,20" do
    @q = Qreki.shunbun(2030)  # => 2030,3,20
    expect(@q.year).to    eql 2030
    expect(@q.month).to   eql 3
    expect(@q.day).to     eql 20
  end


  it "should shuubun eql 2014 => 2014,9,23" do
    @q = Qreki.shuubun(2014)  # => 2014,9,23
    expect(@q.year).to    eql 2014
    expect(@q.month).to   eql 9
    expect(@q.day).to     eql 23
  end

  it "should shuubun eql 2030 => 2030,9,23" do
    @q = Qreki.shuubun(2030)  # => 2030,9,23
    expect(@q.year).to    eql 2030
    expect(@q.month).to   eql 9
    expect(@q.day).to     eql 23
  end
end