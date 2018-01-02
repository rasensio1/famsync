class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :text
      t.boolean :done
      t.timestamp :created_at
      t.timestamp :modified_at
      t.string :category_id

      t.timestamps
    end
  end
end
