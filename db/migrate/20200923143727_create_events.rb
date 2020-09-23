class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :name
      t.text :description
      t.string :duration
      t.string :cost
      t.text :location
      t.references :category, null: false, foreign_key: true
      t.references :occasion, null: false, foreign_key: true

      t.timestamps
    end
  end
end
