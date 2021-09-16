class CreateDevices < ActiveRecord::Migration[6.1]
  def change
    create_table :devices do |t|
      t.string :name
      t.float :capacity
      t.references :agricultural_companies, null: false, foreign_key: true
      t.boolean :status: default:true

      t.timestamps
    end
  end
end
