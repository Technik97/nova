defmodule Nova.Kaffy.Config do
  def create_resources(_conn) do
    [
      workspace: [
        name: "Workspace",
        resources: [
          project: [schema: Nova.Workspaces.Project, admin: Nova.Workspaces.ProjectAdmin]
        ]
      ]
    ]
  end
end
