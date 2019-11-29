class AddColumnCityToProject < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :city, :string
  end
end
