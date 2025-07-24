defmodule PhoenixBlog.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field :active, :boolean, default: false
    field :mobile, :string
    field :role, :string
    field :email, :string
    field :password_has, :string
    field :first_name, :string
    field :middle_name, :string
    field :last_name, :string

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:email, :mobile, :password_has, :role, :active, :first_name, :middle_name, :last_name])
    |> validate_required([:email, :mobile, :password_has, :role, :active, :first_name, :middle_name, :last_name])
  end
end
