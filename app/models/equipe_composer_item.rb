class EquipeComposerItem < ApplicationRecord
    belongs_to :equipe_composer
    belongs_to :user
  
    validates :user_id, presence: true
    validates :equipe_composer_id, presence: true
  end