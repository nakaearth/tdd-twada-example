class Contract
  def initialize(product:, contract_date:)
    @product = product
    @contract_date = contract_date
  end

  def revenue_recognition(date)
    # ここの処理は要検討
    # 実実装はサブクラスで
  end
end