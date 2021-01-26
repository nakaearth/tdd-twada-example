class DbContract < Contract
  def revenue_recognition(revenue_check_date)
    if revenue_check_date - @contract_date >= 120
      @product.price
    elsif revenue_check_date - @contract_date >= 60
      @product.price * 2 / 3
    else
      @product.price * 1 / 3
    end
  end
end