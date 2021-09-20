class CreateRoutes < ActiveRecord::Migration[6.1]
  def change
    create_table :routes do |t|
      t.float :height,null: false, default: 0
      t.float :latitude, null: false, default: 0
      t.float :longitud,null: false, default: 0
      t.references :devices, null: false, foreign_key: true
      t.boolean :status, default:true
      
      t.timestamps
    end
  end
end
