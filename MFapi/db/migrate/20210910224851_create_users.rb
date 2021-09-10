class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :user ,null: false,unique: true
      t.string :password, null: false, default: ""
      t.string :role, null: false ,default: ""
      t.string :description, null: false,default: ""
      t.timestamps
    end
  end
end
