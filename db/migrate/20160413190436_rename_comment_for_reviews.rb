class RenameCommentForReviews < ActiveRecord::Migration
  def change
    change_table :reviews do |t|
      t.rename :commet, :comment
    end
  end
end
