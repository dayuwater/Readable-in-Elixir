defmodule ReadableApi.Post do
  use Ecto.Schema
  import Ecto.Changeset
  alias ReadableApi.Post


  schema "posts" do
    field :author, :string
    field :body, :string
    field :category, :string
    field :deleted, :boolean, default: false
    field :title, :string
    field :uuid, :string
    field :voteScore, :integer

    timestamps()
  end

  @doc false
  def changeset(%Post{} = post, attrs) do
    post
    |> cast(attrs, [:uuid, :timestamp, :title, :body, :author, :category, :voteScore, :deleted])
    |> validate_required([:uuid, :timestamp, :title, :body, :author, :category, :voteScore, :deleted])
  end
end
