class CreateContracts < ActiveRecord::Migration[5.2]
  def change
    create_table :contracts do |t|
      t.references :user, foreign_key: true
      t.references :project, foreign_key: true
      t.integer :investment

      t.timestamps
    end
  end
end
