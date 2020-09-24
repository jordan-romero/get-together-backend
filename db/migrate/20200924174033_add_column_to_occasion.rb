class AddColumnToOccasion < ActiveRecord::Migration[6.0]
  def change
    add_column :occasions, :name, :string
  end
end
