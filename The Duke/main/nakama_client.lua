local nakama = require "nakama.nakama"
local realtime = require "nakama.socket"
local log = require "nakama.util.log"
local defold = require "nakama.engine.defold"
local json = require "nakama.util.json"

local config = {
    host = "127.0.0.1",
    port = 7350,
    use_ssl = (config.port == 443),
    username = "defaultkey",
    password = "",
    engine = defold,
    timeout = 10, -- connection timeout in seconds
}

local M = {}

local client = nil
local socket = nil
local chat = nil

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

return M
