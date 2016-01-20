class CreateParts < ActiveRecord::Migration
  def change
    create_table :parts do |t|
      t.string :title
      t.string :description
      t.belongs_to :product, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
