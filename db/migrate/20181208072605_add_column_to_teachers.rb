class AddColumnToTeachers < ActiveRecord::Migration[5.2]
  def change
    add_column :teachers, :branch, :string
    add_column :teachers, :branch_id, :string
  end
end
