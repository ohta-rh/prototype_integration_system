defmodule PrototypeIntegrationSystem.Repo.Migrations.CreateWeathers do
  use Ecto.Migration

  def change do
    create table(:weather) do
      add :cod, :integer
      add :message, :string
    end
  end
end
