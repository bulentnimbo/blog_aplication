class PopulatePostCommentsCount < ActiveRecord::Migration[7.0]
  def change
    Post.all.each do |post|
      # post.update_column(:comment_count, post.comment_count)
      Post.reset_counters(post.id, :comments)
    end
  end
end
