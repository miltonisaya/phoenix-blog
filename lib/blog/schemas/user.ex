defmodule Blog.Schemas.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field :username, :string

    has_many :posts, Blog.Schemas.Post
    has_many :comments, Blog.Schemas.Comment

    timestamps()
  end

  @doc false
  def changeset(user, attrs \\ %{}) do
    user
    |> cast(attrs, [:username])
    |> validate_required([:username])
  end
end
