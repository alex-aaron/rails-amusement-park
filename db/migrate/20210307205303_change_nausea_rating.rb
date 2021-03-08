class ChangeNauseaRating < ActiveRecord::Migration[5.2]
  def change
    change_column :attractions, :nausea_rating, :integer
  end
end
