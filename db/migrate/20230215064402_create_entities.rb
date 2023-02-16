class CreateEntities < ActiveRecord::Migration[6.1]
  def change
    create_table :entities do |t|
      t.string :text
      t.string :type
      t.belongs_to :sentence, null: false, foreign_key: true

      t.timestamps
    end
  end
end
