class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :type
      t.integer :quantity
      t.string :other

      t.timestamps null: false
    end
  end
end
