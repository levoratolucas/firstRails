class CreateEquipeComposerItems < ActiveRecord::Migration[7.1]
  def change
    create_table :equipe_composer_items do |t|
      t.references :equipe_composer, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
