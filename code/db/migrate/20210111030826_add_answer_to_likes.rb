class AddAnswerToLikes < ActiveRecord::Migration[5.2]
  def change
    add_reference :likes, :answer, foreign_key: true
  end
end
