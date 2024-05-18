#!/usr/bin/env python3

import asyncio
import iterm2
import subprocess

def switch_theme(connection, color_scheme):
    print('color_scheme', color_scheme)
    await connection.async_send_text(f"")

async def update(connection, theme):
    # Themes have space-delimited attributes, one of which will be light or dark.
    parts = theme.split(" ")
    if "dark" in parts:
        switch_theme(connection, "base16_gruvbox-dark-soft")
    else:
        switch_theme(connection, "base16_gruvbox-light-soft")

async def main(connection):
    app = await iterm2.async_get_app(connection)
    await update(connection, await app.async_get_variable("effectiveTheme"))
    async with iterm2.VariableMonitor(connection, iterm2.VariableScopes.APP, "effectiveTheme", None) as mon:
        while True:
            # Block until theme changes
            theme = await mon.async_get()
            await update(connection, theme)


iterm2.run_forever(main)
