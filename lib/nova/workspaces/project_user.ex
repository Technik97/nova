defmodule Nova.Workspaces.ProjectUser do
  use Ecto.Schema

  schema "project_users" do
    belongs_to :project, Nova.Workspaces.Project
    belongs_to :user, Nova.Accounts.User

    timestamps()
  end
end
