class CreateEquipeComposers < ActiveRecord::Migration[7.1]
  def change
    create_table :equipe_composers do |t|
      t.string :name

      t.timestamps
    end
  end
end
