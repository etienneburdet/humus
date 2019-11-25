class RemoveEndDateFromProjects < ActiveRecord::Migration[5.2]
  def change
    remove_column :projects, :end_date
  end
end
