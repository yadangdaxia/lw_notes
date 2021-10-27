require_relative "../views/posts_view"
# require_relative "../models/post"

class PostsController
  def initialize
    @posts_view = PostsView.new
  end

  def index
    # Gathers all posts from the database
    posts = Post.all
    # Gives them to the View to be printed
    @posts_view.display_all(posts)
  end

  def create
    title = @posts_view.ask_user_for("title")
    url = @posts_view.ask_user_for("url")
    # Can also do .create and you don't need the .save
    post = Post.new(title: title, url: url)
    post.save

  end

  def update
    id = @posts_view.ask_user_for("id to update").to_i
    post = Post.find(id)


    post.title = @posts_view.ask_user_for("new title")
    post.url = @posts_view.ask_user_for("new url")
    post.save
  end

  def destroy
    # Gets id
    id = @posts_view.ask_user_for("id").to_i
    # Finds the id's row
    post = Post.find(id)
    # Uses a built-in method to destroy the row
    post.destroy
    # No need to save
  end

  def upvote
    id = @posts_view.ask_user_for("id to vote for").to_i
    post = Post.find(id)
    post.votes += 1
    #  post.update(votes: votes + 1)
    post.save
  end
end
