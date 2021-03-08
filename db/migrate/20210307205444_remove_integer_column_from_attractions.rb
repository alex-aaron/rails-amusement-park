class RemoveIntegerColumnFromAttractions < ActiveRecord::Migration[5.2]
  def change
    remove_column(:attractions, :integer)
  end
end
