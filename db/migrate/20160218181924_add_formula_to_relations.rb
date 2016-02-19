class AddFormulaToRelations < ActiveRecord::Migration
  def change
    add_column :relations, :f_85, :decimal
    add_column :relations, :f_87, :decimal
    add_column :relations, :f_91, :decimal
    add_column :relations, :f_93, :decimal
    add_column :relations, :f_diesel, :decimal
    add_column :relations, :f_offroad, :decimal
  end
end
