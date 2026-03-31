defmodule Blog.Schemas.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "posts" do
    field :post_text, :string
    belongs_to :user, Blog.Schemas.User
    has_many :comments, Blog.Schemas.Comment

    timestamps()
  end

  def changeset(post, attrs \\ %{}) do
    post
    |> cast(attrs, [:post_text, :user_id])
    |> validate_required([:post_text, :user_id])
  end
end
