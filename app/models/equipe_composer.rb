class EquipeComposer < ApplicationRecord
    has_many :equipe_composer_items, dependent: :destroy
    has_many :users, through: :equipe_composer_items
  
    validates :name, presence: true
end
