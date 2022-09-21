defmodule Nova.Repo.Migrations.AddFieldsToUserTable do
  use Ecto.Migration

  def change do
    alter table(:users) do
      add :user_name, :string, null: false
      add :full_name, :string, null: false
      add :bio, :text
    end
  end
end
