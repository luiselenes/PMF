class CreateDivices < ActiveRecord::Migration[6.1]
  def change
    create_table :divices do |t|
      t.string:name ,null: false, default: ""
      t.float :capacity, null: false, default: 0
      t.references :agricultural_companies, null: false, foreign_key: true
    
      t.timestamps
    end
  end
end
