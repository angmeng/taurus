class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :name, null: false
      t.string :address, null: false
      t.string :gender, null: false
      t.string :age, null: false
      t.string :weight, null: false
      t.string :height, null: false
      t.string :english, null: false
      t.string :malay, null: false
      t.string :chinese, null: false
      t.string :mathematic, null: false
      t.string :conduct, null: false
      t.string :comment, null: false

      t.timestamps
    end
  end
end
