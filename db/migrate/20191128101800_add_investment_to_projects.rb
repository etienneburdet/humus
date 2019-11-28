class AddInvestmentToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :investment, :integer, default: 0
  end
end
