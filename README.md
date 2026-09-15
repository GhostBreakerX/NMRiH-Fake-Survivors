# NMRiH Fake Survivors v1.0.0

A small SourceMod plugin for **No More Room in Hell** that creates fake survivor clients on the server.

This plugin was originally created as a local experiment to determine whether fake clients created through SourceMod could be recognized by NMRiH as valid survivors for gameplay and achievement checks. The experiment was successful.

## Installation

1. Install **Metamod:Source** and **SourceMod** for No More Room in Hell.
2. Download `nmrih_fake_survivors.smx` from the **Assets** section of this release.
3. Copy the `.smx` file to:

    nmrih/addons/sourcemod/plugins/

4. Start or restart your server.

The source code (`.sp`) is available in the repository if you want to inspect or modify the plugin.

## Requirements

- No More Room in Hell
- Metamod:Source
- SourceMod

Tested on:

- NMRiH build 1150
- Metamod:Source 1.12
- SourceMod 1.12

## Usage

Start a local/listen server and make sure you have administrator permissions.

Run the following command from the server console:

    sm_fakesurvivors

The plugin will create five fake survivor clients:

    Survivor_1
    Survivor_2
    Survivor_3
    Survivor_4
    Survivor_5

The server console will display the number of successfully created clients.

## Important

These are **fake clients, not AI-controlled survivors**.

They do not have normal survivor AI and will not automatically:

- navigate the map;
- follow the player;
- fight zombies;
- complete objectives;
- interact with the environment.

The purpose of this plugin is to create additional fake clients that can be used for local server testing and experimentation with NMRiH's player and achievement logic.

## Configuration

The number of fake survivors can be changed in the source code:

    #define MAX_FAKE_SURVIVORS 5

After changing the value, recompile the `.sp` source file with SourceMod's compiler and replace the `.smx` plugin in the `addons/sourcemod/plugins/` directory.

## Credits

Created by **Ghost_Breaker**.

The plugin was developed specifically for experimenting with fake clients and survivor/achievement behavior in No More Room in Hell.

## Disclaimer

This is an unofficial community-made plugin and is not affiliated with the developers of No More Room in Hell, Valve, or Steam.

Use it at your own risk, preferably on local or private servers.
