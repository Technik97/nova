defmodule Nova.WorkspacesFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Nova.Workspaces` context.
  """

  @doc """
  Generate a project.
  """
  def project_fixture(attrs \\ %{}) do
    {:ok, project} =
      attrs
      |> Enum.into(%{
        description: "some description",
        name: "some name"
      })
      |> Nova.Workspaces.create_project()

    project
  end
end
