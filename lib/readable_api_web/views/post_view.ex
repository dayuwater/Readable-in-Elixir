defmodule ReadableApiWeb.PostView do
    use ReadableApiWeb, :view

    # def render("hell.json") do
    #     %{hello: json}
    # end

    def render("posts.json", %{posts: posts}) do
       render_many(posts, ReadableApiWeb.PostView, "post.json")
    end

    def render("post.json", %{post: post}) do
        %{
            id: post.uuid,
            title: post.title,
            body: post.body,
            author: post.author,
            category: post.category,
            voteScore: post.voteScore,
            deleted: post.deleted,
            timestamp: post.updated_at
        }
    end
end