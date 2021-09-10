class CreateImages < ActiveRecord::Migration[6.1]
  def change
    create_table :images do |t|
      t.string :image, null: false, default: ""
      t.timestamps
    end
  end
end
