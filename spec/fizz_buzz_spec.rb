require 'spec_helper'
require 'fizz_buzz'

describe 'FizzBuzz' do
  before do
    @fizz_buzz = FizzBuzz.new
  end
  describe '数を文字列に変換する' do
    context '3の倍数の時' do
      it '境界地内の最小の3の倍数である3を渡すとFizzに変換する' do
        # 実証 ＆ 検証
        expect(@fizz_buzz.convert(3)).to eq 'Fizz'
      end

      it '境界値内の最大の3の倍数である99を渡すとFizzに変換する' do
        # 実証 ＆ 検証
        expect(@fizz_buzz.convert(99)).to eq 'Fizz'
      end
    end
  
    context '5の倍数の時' do
      it '境界地内の最小の5の倍数5を渡すとBuzzに変換する' do
        # 実証 ＆ 検証
        expect(@fizz_buzz.convert(5)).to eq 'Buzz'
      end
      
      it '境界値内の最大の5の倍数である100を渡すとBuzzに変換する' do
        # 実証 ＆ 検証
        expect(@fizz_buzz.convert(100)).to eq 'Buzz'
      end
    end
 
    context '3と5の倍数の時' do
      it '境界地内の最小の3と5の公倍数である15を渡すとFizzBuzzに変換する' do
        # 実証 ＆ 検証
        expect(@fizz_buzz.convert(15)).to eq 'FizzBuzz'
      end
      
      it '境界値内の一つ外側の値0を渡すとFizzBuzzに変換する' do
        # 実証 ＆ 検証
        expect(@fizz_buzz.convert(0)).to eq 'FizzBuzz'
      end
    end
    
    context 'その他の数の時' do
      it '1を渡す時1を返す' do
        # 実証 ＆ 検証
        expect(@fizz_buzz.convert(1)).to eq '1'
      end

      it '境界値の一つ内側の値2を渡す時2を返す' do
        # 実証 ＆ 検証
        expect(@fizz_buzz.convert(2)).to eq '2'
      end
      
      it '境界値の一つ外側の値101を渡す時101を返す' do
        # 実証 ＆ 検証
        expect(@fizz_buzz.convert(101)).to eq '101'
      end
    end
  end
end