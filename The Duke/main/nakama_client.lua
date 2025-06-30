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

local M = {}

M.client = nakama.create_client(config)
M.socket = nakama.create_socket(M.client)

nakama.sync(function()
    -- connect
    local ok, err = nakama.socket_connect(M.socket)

    if ok then
      -- do socket stuff
    end

    if err then
      print(err.message)
    end
end)

