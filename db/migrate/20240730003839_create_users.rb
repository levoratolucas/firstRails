class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :documentValue
      t.date :nasc

      t.timestamps
    end
  end
end
