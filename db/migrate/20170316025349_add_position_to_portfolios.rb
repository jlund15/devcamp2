class AddPositionToPortfolios < ActiveRecord::Migration[5.0]
  def change
    add_column :portfolios, :positions, :integer
  end
end
