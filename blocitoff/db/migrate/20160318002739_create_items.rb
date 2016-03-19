class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.references :user, index: true, foreign_key: true
      t.text :description
      t.datetime :completion_date
      t.boolean :completed, default: false

      t.timestamps null: false
    end
  end
end
