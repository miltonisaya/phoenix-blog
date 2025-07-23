defmodule PhoenixBlog.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table("users") do
    add :firstName, :string
    add :middleName, :string
    add :lastName, :string
    add :email, :string
    add :mobile, :string

    timestamps(type: :utc_datetime)
    end
  end
end
