class User < ApplicationRecord
    belongs_to :store, optional: true
    has_many :equipe_composer_items
    has_many :equipe_composers, through: :equipe_composer_items
end