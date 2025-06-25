local defold = require "nakama.engine.defold"
local nakama = require "nakama.nakama"
local config = {
    host = "127.0.0.1",
    port = 7350,
    use_ssl = false,
    username = "defaultkey",
    password = "",
    engine = defold,
    timeout = 10, -- connection timeout in seconds
}
local client = nakama.create_client(config)
