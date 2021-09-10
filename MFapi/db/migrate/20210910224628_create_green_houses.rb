class CreateGreenHouses < ActiveRecord::Migration[6.1]
  def change
    create_table :green_houses do |t|
      t.string :code_greenhouse,null: false, default: ""
      t.float :area_grooves,null: false, default: 0
      t.references :agricultural_companies, null: false, foreign_key: true

      t.timestamps
    end
  end
end
