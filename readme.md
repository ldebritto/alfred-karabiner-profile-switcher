# Alfred Karabiner Elements Switcher
Allows to quick change between profiles in [Karabiner Elements](https://karabiner-elements.pqrs.org).

## Instalation and pre-requisites
- Requires "JSON Helper", from [Mousedown software](https://www.mousedown.net/software/JSONHelper.html), [available on Mac App Store](https://apps.apple.com/br/app/json-helper-for-applescript/id453114608?mt=12) for free.
- Download the lattest release and double click the `.alfredworkflow` binary file.

## Usage
1. Type `kp` and select the desired profile.
2. Hit `enter`.
There's no step 3.

## How does it work
It leverages the [Karabiner Elements oficial CLI](https://karabiner-elements.pqrs.org/docs/manual/misc/command-line-interface/) to create a list of existing profiles, bakes them into a JSON format and uses the selection into another CLI command to change it.

## Credits
- Icon from Karabiner Elements app