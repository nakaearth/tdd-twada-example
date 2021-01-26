class SpreadContract < Contract
  def revenue_recognition(revenue_check_date)
    if revenue_check_date - @contract_date >= 30
      @product.price
    else
      @product.price * 2 / 3
    end
  end
end