import Config

db_host =
  System.get_env("DATABASE_HOST") ||
    raise """
    environment variable DATABASE_HOST is missing.
    """

db_database = System.get_env("DATABASE_DB") || "rumbl_dev"
db_username = System.get_env("DATABASE_USERNAME") || "postgres"
db_password = System.get_env("DATABASE_PASSWORD") || "example"
db_url = "ecto://#{db_username}:#{db_password}@#{db_host}/#{db_database}"

config :rumbl, Rumbl.Repo,
  url: db_url,
  pool_size: String.to_integer(System.get_env("POOL_SIZE") || "10")

secret_key_base =
  System.fetch_env!("RUMBL_SECRET_KEY") ||
    raise """
    environment variable SECRET_KEY_BASE is missing.
    You can generate ona ba calling: mix phx.gen.secret
    """

config :rumbl, RumblWeb.Endpoint, http: [:inet6, port: 4000], secret_key_base: secret_key_base
