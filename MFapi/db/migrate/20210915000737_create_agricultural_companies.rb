class CreateAgriculturalCompanies < ActiveRecord::Migration[6.1]
  def change
    create_table :agricultural_companies do |t|
      t.string :name null: false, default: ""
      t.string :address null: false, default: ""
      t.string :phone null: false, default: ""
      t.string :responsable default: ""
      t.boolean :status: default:true

      t.timestamps
    end
  end
end
