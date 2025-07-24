defmodule PhoenixBlog.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :email, :string
      add :mobile, :string
      add :password_has, :string
      add :role, :string
      add :active, :boolean, default: false, null: false
      add :first_name, :string
      add :middle_name, :string
      add :last_name, :string

      timestamps(type: :utc_datetime)
    end
  end
end
