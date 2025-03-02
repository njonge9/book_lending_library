class AddFineToBorrowings < ActiveRecord::Migration[8.0]
  def change
    add_column :borrowings, :fine, :decimal
  end
end
