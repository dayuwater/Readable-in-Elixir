defmodule ReadableApi.Repo.Migrations.DropPostTimestamp do
  use Ecto.Migration

  def change do
    alter table(:posts) do
      remove :timestamp
    end
  end
end
