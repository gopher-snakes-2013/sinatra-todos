class CreateTodos < ActiveRecord::Migration
  def up
    create_table :todos do |t|
      t.string :todos

      t.timestamps
    end
  end

  def down
    drop_table :todos
  end
end
