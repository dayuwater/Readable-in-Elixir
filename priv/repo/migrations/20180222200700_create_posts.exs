defmodule ReadableApi.Repo.Migrations.CreatePosts do
  use Ecto.Migration

  def change do
    create table(:posts) do
      add :uuid, :string
      add :timestamp, :integer
      add :title, :string
      add :body, :string
      add :author, :string
      add :category, :string
      add :voteScore, :integer
      add :deleted, :boolean, default: false, null: false

      timestamps()
    end

  end
end
