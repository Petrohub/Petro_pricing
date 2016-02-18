class AddFormulaToRelations < ActiveRecord::Migration
  def change
    add_column :relations, :f_reg, :float
    add_column :relations, :f_mid, :float
    add_column :relations, :f_pre, :float
  end
end
