class AddPricePerUserToLesson < ActiveRecord::Migration[5.2]
  def change
    add_column :lessons, :price_per_user, :float
  end
end
