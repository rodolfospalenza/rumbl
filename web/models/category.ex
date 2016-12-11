require IEx;

defmodule Rumbl.Category do
  use Rumbl.Web, :model

  schema "categories" do
    field :name, :string
    has_many :videos, Rumbl.Video

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    IEx.pry
    struct
    |> cast(params, [:name])
    |> validate_required([:name])
  end
end
