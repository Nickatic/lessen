class AddChannelIdToLessons < ActiveRecord::Migration[5.2]
  def change
    add_column :lessons, :Channel_id, :string
  end
end
