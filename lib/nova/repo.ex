defmodule Nova.Repo do
  use Ecto.Repo,
    otp_app: :nova,
    adapter: Ecto.Adapters.Postgres
end
