use Mix.Config

config :rumbl, RumblWeb.Endpoint,
  url: [host: "example.com", port: 80],
  cache_static_manifest: "priv/static/cache_manifest.json"

# Do not print debug messages in production
config :logger, level: :info

# ## Using releases *Elixir v1.9+
# If you are doing OTP releases, you need to instruct Phoenix
# to start each relevant endpoint:
config :rumbl, RumblWeb.Endpoint, server: true
