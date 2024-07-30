class AddDetailsToProdutos < ActiveRecord::Migration[7.1]
  def change
    add_column :produtos, :descricao, :string
    add_column :produtos, :fornecedor, :integer
  end
end
