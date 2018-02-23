defmodule ReadableApi.Blog do
    alias ReadableApi.{Repo, Post}

    def get_all_posts() do
        Repo.all(Post)
    end

end