defmodule Nova.Workspaces.Project do
  use Ecto.Schema
  import Ecto.Changeset

  alias __MODULE__
  alias Nova.Repo

  schema "projects" do
    field :description, :string
    field :name, :string
    many_to_many :users, Nova.Accounts.User,
      join_through: Nova.Workspaces.ProjectUser

    timestamps()
  end

  @fields ~w(name description)a
  @required_fields ~w(name description)a

  @spec changeset({map, map}| %{:__struct__ => atom | %{:__changeset__ => map, optional(any) => any},optional(atom) => any},:invalid | %{optional(:__struct__) => none, optional(atom | binary) => any}) :: Ecto.Changeset.t()
  def changeset(project \\ %Project{}, attrs) do
    project
    |> Repo.preload(:users)
    |> cast(attrs, @fields)
    |> cast_assoc(:users)
    |> validate_required(@required_fields)
  end
end
