# Forever Bag Cleanup

A tiny addOn for the WoW Forever Beta that restores a bag-cleanup button beside
the backpack portrait in Blizzard's combined bag window.

The button calls Blizzard's own `C_Container.SortBags()` API, so organization
follows the game's built-in rules and respects bags marked to be ignored.

## Download

Download the ZIP from the [latest release](https://github.com/acoomes/baggy/releases/latest).

## Install

1. Exit World of Warcraft.
2. Extract `ForeverBagCleanup` from the ZIP into the Forever Beta installation's
   `Interface/AddOns/` directory.
3. Start the game and enable **Forever Bag Cleanup** on the AddOns screen.
4. Enable combined bags, open your bags, and click the cleanup icon beside the
   backpack portrait.

## Compatibility

- WoW Forever Beta Interface: `16001`
- Checked against Blizzard UI source build: `1.60.1.70374`
- Blizzard default combined-bag UI only
