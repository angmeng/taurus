class CreateBulletins < ActiveRecord::Migration[5.2]
  def change
    create_table :bulletins do |t|
      t.string :topic, null: false
      t.string :date
      t.string :content, null: false

      t.timestamps
    end
  end
end
