class CreateKitComposerProdutos < ActiveRecord::Migration[7.1]
  def change
    create_table :kit_composer_produtos do |t|
      t.references :kit_composer, null: false, foreign_key: true
      t.references :produto, null: false, foreign_key: true

      t.timestamps
    end
  end
end
