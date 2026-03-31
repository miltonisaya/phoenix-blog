defmodule Blog.Schemas.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "comments" do
    field :comment_text, :string
    belongs_to :post, Blog.Schemas.Post
    belongs_to :user, Blog.Schemas.User

    timestamps()
  end

  def changeset(comment, attrs \\ %{}) do
    comment
    |> cast(attrs, [:comment_text, :post_id, :user_id])
    |> validate_required([:comment_text, :post_id, :user_id])
  end
end
