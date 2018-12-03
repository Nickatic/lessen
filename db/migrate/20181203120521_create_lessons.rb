class CreateLessons < ActiveRecord::Migration[5.2]
  def change
    create_table :lessons do |t|
      t.date :starts_at
      t.date :ends_at
      t.integer :duration
      t.text :description
      t.string :name
      t.string :topic
      t.string :subtopic
      t.integer :min_num_of_participants
      t.integer :max_num_of_participants
      t.integer :price

      t.timestamps
    end
  end
end
