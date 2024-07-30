class CreateKitComposers < ActiveRecord::Migration[7.1]
  def change
    create_table :kit_composers do |t|
      t.string :nome

      t.timestamps
    end
  end
end
