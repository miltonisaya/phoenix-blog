defmodule Blog.Repo.Migrations.Initial do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :username, :string

      timestamps()
    end

    create table(:posts) do
      add :post_text, :text
      add :user_id, references(:users)

      timestamps()
    end

    create table(:comments) do
      add :post_id, references(:posts)
      add :user_id, references(:users)
      add :comment_text, :text

      timestamps()
    end

  end
end
