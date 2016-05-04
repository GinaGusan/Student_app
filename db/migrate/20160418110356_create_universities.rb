class CreateUniversities < ActiveRecord::Migration
  def change
    create_table :universities do |t|

      t.timestamps null: false
      t.string :title
    end
  end
end
