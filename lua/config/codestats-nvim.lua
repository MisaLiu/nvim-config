
local codestats = require('codestats-nvim')

codestats.setup({
  token = require('env.codestats-nvim').token,
  endpoint = 'https://codestats.net',
  interval = 60,
})
