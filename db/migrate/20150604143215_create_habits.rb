class CreateHabits < ActiveRecord::Migration
  
  def change
    create_table :habits do |t|
      t.string :title
      t.string :classification
      t.string :completed
      t.integer :quantifier
      t.string :quantifier_unit
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
    #add_foreign_key :habits, :users
    add_index :habits, [:user_id, :created_at]
  end
end
