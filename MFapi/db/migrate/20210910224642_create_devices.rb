class CreateDevices < ActiveRecord::Migration[6.1]
  def change
    create_table :devices do |t|
      t.string:name ,null: false, default: ""
      t.float :capacity, null: false, default: 0
      t.references :agricultural_companies, null: false, foreign_key: true
    
      t.timestamps
    end
  end
end
