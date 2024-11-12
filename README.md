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

1. Install the dependencies, namely [lilypond](https://lilypond.org/), [mido](https://github.com/mido/mido), [rtmidi](https://github.com/SpotlightKid/python-rtmidi) and (optional, but recommended) [fzf](https://github.com/junegunn/fzf/), e.g. on debian-based systems via `apt install lilypond python3-mido python3-rtmidi fzf`.
2. Install a MIDI synthesizer and a sound font of your choice (e.g. `fluid-soundfont-gm`). The default configuration expects [timidity](https://timidity.sourceforge.net/), which can e.g. be installed on debian-based systems via `apt install timidity`.  
If you need jack support for `timidity`, it is instead recommended to build it from source with the patches included in this repository. See below for further information.
3. Download this repository with `git clone https://github.com/3hhh/klickly.git` or your browser and copy it to dom0.
4. Move the repository to a directory of your liking.
5. Symlink the `klickly` binary into your dom0 `PATH` for convenience, e.g. to `/usr/bin/`.

### Build `timidity` from source

You can use the timidity tarball from this repository or obtain it from [another source](https://timidity.sourceforge.net/).

The below instructions are mostly copied from the [respective Arch Linux instructions](https://gitlab.archlinux.org/archlinux/packaging/packages/timidityplusplus/-/blob/main/PKGBUILD):

```bash
cd timidity
tar -xvf TiMidity++-2.15.0.tar.xz
cd TiMidity++-2.15.0
patch -Np1 -i ../timidityplusplus/timidity++-2.15.0-ldflags.patch
patch -Np1 -i ../timidityplusplus/timidity++-2.14.0-jack.patch
./configure --prefix=/usr --mandir=/usr/share/man --with-default-path=/etc/timidity/ --enable-server --enable-alsaseq --enable-spectrogram --enable-network --enable-xft --enable-audio=alsa,ao,vorbis,flac,jack --enable-dynamic=ncurses,tcltk,vt100
make
sudo make install
```

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
