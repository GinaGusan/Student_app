class CreateScholars < ActiveRecord::Migration
  def change
    create_table :scholars do |t|

      t.timestamps null: false
    end
  end
end
