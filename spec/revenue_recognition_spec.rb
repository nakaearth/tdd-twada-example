require 'spec_helper'
require 'date'
require 'product'
require 'contract'
require 'contractor'

describe 'RevenueRecognition' do
  context 'ワードプロセッサを契約した場合' do
    it '契約びに収益を認識する' do
      product = Product.new(category: 'word',
                            name: 'MS Word',
                            price: 18800)
      contractor = Contractor.new(product)
      contract = contractor.sign(contract_date: Date.today) 

      expect(contract.revenue_recognition(Date.today)).to eq 18800
    end
  end
  
  context 'スプレッドシートを契約した場合' do
    before do
      product = Product.new(category: 'spread',
                            name: 'MS Excel',
                            price: 27800)
      contractor = Contractor.new(product)
      @contract = contractor.sign(contract_date: Date.today) 
    end

    it '契約当日の収益は購入価格の2/3になる' do
      expect(@contract.revenue_recognition(Date.today)).to eq 27800 * 2 / 3
    end

    it '契約した日の29日後の収益は購入価格の2/3になる' do
      expect(@contract.revenue_recognition(Date.today + 29)).to eq 27800 * 2 / 3
    end

    it '契約した日の30日後の収益は購入価格になる' do
      expect(@contract.revenue_recognition(Date.today + 30)).to eq 27800
    end
  end

  context 'データベースを契約した場合' do
    before do
      product = Product.new(category: 'db',
                            name: 'MS SQL Server',
                            price: 919000)
      contractor = Contractor.new(product)
      @contract = contractor.sign(contract_date: Date.today) 
    end

    it '契約当日の収益は購入価格の1/3になる' do
      expect(@contract.revenue_recognition(Date.today)).to eq 919000 * 1 / 3
    end

    it '契約当日の60日後の収益は購入価格の2/3になる' do
      expect(@contract.revenue_recognition(Date.today + 60)).to eq 919000 * 2 / 3
    end

    it '契約当日の120日後の収益は購入価格になる' do
      expect(@contract.revenue_recognition(Date.today + 120)).to eq 919000
    end 
  end
end