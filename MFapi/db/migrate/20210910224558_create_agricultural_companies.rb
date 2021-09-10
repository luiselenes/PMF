class CreateAgriculturalCompanies < ActiveRecord::Migration[6.1]
  def change
    create_table :agricultural_companies do |t|
      t.string :name, null: false, default: ""
      t.string :address, null: false, default: ""
      t.string :phone,null: false, default: ""
      t.string :responsable, null: false, default: ""

      t.timestamps
    end
  end
end
