# NMRiH Fake Survivors

A small SourceMod plugin that creates fake survivor clients in
[No More Room in Hell](https://store.steampowered.com/app/224260/No_More_Room_in_Hell/).

The plugin was created to test whether fake clients are counted as
players for the **"We Got This!"** achievement.

## Why?

"We Got This!" requires:

- at least 6 players
- no casualties
- no lost safe zones
- completion of:
  - Favela
  - Northway
  - Flooded
  - Isolated
  - NotLD
  - Ransack

Finding six players for this achievement can be difficult, especially
for an old game with a relatively small player base.

This plugin allows a local server to be filled with fake clients,
leaving one real player.

## Requirements

- No More Room in Hell
- Metamod:Source
- SourceMod

Tested with:

- NMRiH build 1150
- Metamod:Source 1.12
- SourceMod 1.12

## Installation

Install Metamod:Source and SourceMod first.

Copy:

    nmrih_fake_survivors.smx

to:

    nmrih/addons/sourcemod/plugins/

Then start a local server and run:

    sm_fakesurvivors

The plugin creates five fake clients.

## Important

These are **fake clients, not AI survivors**.

They do not play the map like normal human players.
The plugin is intended for local/private testing.

The method does not directly unlock Steam achievements or modify
Steam achievement data.

## Source

The SourcePawn source code is included in this repository:

    addons/sourcemod/scripting/nmrih_fake_survivors.sp

## Credits

Created by Ghost_Breaker.

No More Room in Hell is developed by Lever Games.
