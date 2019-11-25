class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.integer :surface
      t.integer :duration
      t.integer :investment_cap
      t.date :start_date
      t.date :end_date
      t.string :type
      t.string :name
      t.text :description
      t.integer :uhi
      t.integer :biodiversity
      t.integer :water_infiltration
      t.integer :local_food

      t.timestamps
    end
  end
end
