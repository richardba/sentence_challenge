class RenameTypeToEtype < ActiveRecord::Migration[6.1]
  def change
    rename_column :entities, :type, :etype
  end
end
