class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string "name", null: false
      t.string "description"
      t.integer "value_dollars", null: false, default: 0
      t.integer "value_sentimental", null: false, default: 0
      t.string "image", null: false
      t.timestamps
    end
  end
end
