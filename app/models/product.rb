class Product < ActiveRecord::Base
  validates :description, :name, presence: true
  validates :price_in_cents, numericality: {only_integer: true}
  #####some side work####
  # validate :price_must_be_greater_than_5
  #
  # def price_must_be_greater_than_5
  #   if price_in_cents && price_in_cents < 5
  #     self.errors[:base] << "what ever"
  #   end
  # end

  def formatted_price
    price_in_dollars = price_in_cents.to_f / 100
    sprintf("%.2f", price_in_dollars)
  end
end
