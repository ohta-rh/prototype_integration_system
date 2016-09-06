ESpec.configure fn(config) ->
  config.before fn(tags) ->
    #{:shared, hello: :world, tags: tags}
    :ok = Ecto.Adapters.SQL.Sandbox.checkout(PrototypeIntegrationSystem.Repo)
  end

  config.finally fn(_shared) ->
    Ecto.Adapters.SQL.Sandbox.checkin(PrototypeIntegrationSystemrRepo, [])
  end
end
