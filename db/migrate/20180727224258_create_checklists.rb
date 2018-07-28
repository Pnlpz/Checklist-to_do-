class CreateChecklists < ActiveRecord::Migration[5.2]
  def change
    create_table :checklists do |t|
      t.references :user, foreign_key: true
      t.references :activity, foreign_key: true
      t.boolean :done, default: false

      t.timestamps
    end
  end
end
