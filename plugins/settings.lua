--[[
    Copyright 2017 wrxck <matthew@matthewhesketh.com>
    This code is licensed under the MIT. See LICENSE for details.
]]

local settings = {}

local mattata = require('mattata')

function settings:init()
    settings.commands = mattata.commands(
        self.info.username
    ):command('settings').table
    settings.help = [[/settings - Customise your experience.]]
end

function settings:on_message(message)
    return mattata.send_message(
        message.chat.id,
        string.format(
            'Hey there, %s! To set your location, use the /setloc command. To adjust which plugins should be enabled in this chat, use /plugins (please note that you are required to have administrative permissions to use this in a group chat). Use /setsteam to set your Steam username (that\'s the one at the end of the URL that links to your Steam profile!), and use /help for more information.',
            message.from.first_name
        )
    )
end

return settings