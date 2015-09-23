class ChangeColumnName < ActiveRecord::Migration
  def change
    rename_column :friendships, :aasm_astate, :aasm_state
  end
end
