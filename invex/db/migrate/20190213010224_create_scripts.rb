class CreateScripts < ActiveRecord::Migration[5.2]
  def change
    create_table :scripts do |t|
      t.references :user, foreign_key: true
      t.references :history, foreign_key: true
      t.string :titulo

      t.timestamps
    end
  end
end
