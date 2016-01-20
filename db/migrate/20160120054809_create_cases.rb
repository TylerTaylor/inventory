class CreateCases < ActiveRecord::Migration
  def change
    create_table :cases do |t|
      t.string :title
      t.text :description

      t.timestamps null: false
    end
  end
end
