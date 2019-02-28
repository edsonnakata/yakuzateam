class CreateFalas < ActiveRecord::Migration[5.2]
  def change
    create_table :falas do |t|
      t.references :scene, foreign_key: true
      t.text :texto

      t.timestamps
    end
  end
end
