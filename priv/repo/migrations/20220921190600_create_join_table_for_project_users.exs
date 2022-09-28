defmodule Nova.Repo.Migrations.CreateJoinTableForProjectUsers do
  use Ecto.Migration

  def change do
    create table("project_users", primary_key: false) do
      add :project_id, references(:projects)
      add :user_id, references(:users)

      timestamps()
    end
  end
end
