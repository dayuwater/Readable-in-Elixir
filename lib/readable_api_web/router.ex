defmodule ReadableApiWeb.Router do
  use ReadableApiWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", ReadableApiWeb do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index

    get "/posts", PostController, :index
    # get "/categories", PostController, :categories
    # get "/:category/posts", PostController, :posts_given_category
    # get "/posts/:id", PostController, :post
  end

  # Other scopes may use custom stacks.
  # scope "/api", ReadableApiWeb do
  #   pipe_through :api
  # end
end
