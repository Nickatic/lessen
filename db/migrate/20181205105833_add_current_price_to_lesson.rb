class AddCurrentPriceToLesson < ActiveRecord::Migration[5.2]
  def change
    add_column :lessons, :current_price, :float
  end
end
