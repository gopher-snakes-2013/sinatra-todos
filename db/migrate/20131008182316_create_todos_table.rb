class CreateTodosTable < ActiveRecord::Migration
  def up
    create_table :todos do |t|
      t.string :task

      t.timestamps
    end
  end

  def down
    drop_table :todos
  end
end
