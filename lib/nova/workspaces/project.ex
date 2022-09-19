defmodule Nova.Workspaces.Project do
  use Ecto.Schema
  import Ecto.Changeset

  alias __MODULE__

  schema "projects" do
    field :description, :string
    field :name, :string

    timestamps()
  end

  @fields ~w(name description)a
  @required_fields ~w(name description)a

  @spec changeset({map, map}| %{:__struct__ => atom | %{:__changeset__ => map, optional(any) => any},optional(atom) => any},:invalid | %{optional(:__struct__) => none, optional(atom | binary) => any}) :: Ecto.Changeset.t()
  def changeset(project \\ %Project{}, attrs) do
    project
    |> cast(attrs, @fields)
    |> validate_required(@required_fields)
  end
end
