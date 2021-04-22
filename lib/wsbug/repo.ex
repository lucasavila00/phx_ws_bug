defmodule Wsbug.Repo do
  use Ecto.Repo,
    otp_app: :wsbug,
    adapter: Ecto.Adapters.Postgres
end
