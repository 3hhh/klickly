# klickly

A command-line metronome using [lilypond](https://lilypond.org/) snippets to support arbitrary musical patterns.

## Features

- loops [lilypond](https://lilypond.org/) snippets infinitely at the tempo given on the command-line
- arbitrary musical patterns can be used as loops
- option to dynamically increase the tempo
- highly configurable
- common metronome patterns included
- [scriptable](https://github.com/3hhh/klickly/tree/master/scripts)
- MIDI output

## Installation

1. Install the dependencies, namely [lilypond](https://lilypond.org/) and (optional, but recommended) [fzf](https://github.com/junegunn/fzf/), e.g. on debian-based systems via `apt install lilypond fzf`.
2. Install a MIDI synthesizer and a sound font of your choice (e.g. `fluid-soundfont-gm`). The default configuration expects [timidity](https://timidity.sourceforge.net/), which can e.g. be installed on debian-based systems via `apt install timidity`.
3. Download this repository with `git clone https://github.com/3hhh/klickly.git` or your browser and copy it to dom0.
4. Move the repository to a directory of your liking.
5. Symlink the `klickly` binary into your dom0 `PATH` for convenience, e.g. to `/usr/bin/`.

## Usage

Execute `klickly` without arguments on the command-line to obtain an overview of its capabilities.

## Uninstall

1. Remove all symlinks that you created during the installation.
2. Remove the repository clone from your file system.
3. If unused, uninstall the dependencies, e.g. on debian via `apt purge lilypond fzf timidity`.

## Copyright

© 2024 David Hobach
GPLv3

See `LICENSE` for details.
