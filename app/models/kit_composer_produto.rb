class KitComposerProduto < ApplicationRecord
  belongs_to :kit_composer
  belongs_to :produto
end
