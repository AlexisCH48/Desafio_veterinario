class ChangeTypeToHeigth < ActiveRecord::Migration[5.2]
  def up
    change_column :pet_histories, :height, :float
  end

  def down
    change_column :pet_histories, :height, :string
  end

end
