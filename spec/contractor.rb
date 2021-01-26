require 'word_contract'
require 'db_contract'
require 'spread_contract'

class Contractor
  def initialize(product)
    @product = product
  end

  def sign(contract_date:)
    case @product.category
    when 'word'
      WordContract.new(product: @product, contract_date: contract_date)
    when 'spread'
      SpreadContract.new(product: @product, contract_date: contract_date)
    when 'db'
      DbContract.new(product: @product, contract_date: contract_date)
    end
  end
end