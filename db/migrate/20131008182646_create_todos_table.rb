class CreateTodosTable < ActiveRecord::Migration
  def up
    create_table :todos do |t|
      t.string :task
    end
  end

  def down
    drop_table :todos
  end
end
