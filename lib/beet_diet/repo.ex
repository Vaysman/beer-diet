defmodule BeetDiet.Repo do
  use Ecto.Repo,
    otp_app: :beet_diet,
    adapter: Ecto.Adapters.Postgres
end
