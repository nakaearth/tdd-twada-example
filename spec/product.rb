# Category毎にクラス分ける？？？
# contractについてどう扱うか

class Product
  attr_reader :category, :name, :price

  def initialize(category:, name:, price:)
    @category = category
    @name = name
    @price = price
  end
end