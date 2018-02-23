defmodule ReadableApiWeb.PostController do
    use ReadableApiWeb, :controller
    alias ReadableApi.Blog
  
    def index(conn, _) do
      posts = Blog.get_all_posts
      render conn, "posts.json", posts: posts
    end
  end