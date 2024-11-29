#!/usr/bin/env python3
# -*- encoding: utf8 -*-
#
# Command-line MIDI player.
# Most other players don't support to loop. This one does.
#
# Copyright (C) 2024
#                   David Hobach <tripleh@hackingthe.net>
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License along
# with this program; if not, write to the Free Software Foundation, Inc.,
# 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
#

import argparse
import sys
import signal
import rtmidi # rtmidi doc: https://spotlightkid.github.io/python-rtmidi/rtmidi.html
import mido
from mido import MidiFile # mido doc: https://mido.readthedocs.io/en/stable - mido is just used to read the file; otherwise rtmidi is used
from rtmidi.midiutil import list_output_ports
from rtmidi.midiutil import open_midiport

ARGS = None
MIDIOUT = None

def parse_args():
    parser = argparse.ArgumentParser(description='Play a MIDI file on a MIDI device.')
    parser.add_argument('-f', '--file', help='File path to the MIDI input file to read from.')
    parser.add_argument('-o', '--output', help='MIDI output port to write to (port number or substring of a port name). If none is specified, a virtual output port is created and written to.')
    parser.add_argument('-a', '--api', default='default', choices=['jack', 'alsa', 'default'], help='MIDI API to use. Use default on non-Linux devices. (default: %(default)s)')
    parser.add_argument('-c', '--client', default='midi2dev', help='Name of the MIDI client to use. (default: %(default)s)')
    parser.add_argument('--loop', action='store_true', help='Loop the MIDI playback.')
    parser.add_argument('--list', action='store_true', help='Just list the available APIs and their MIDI ports.')
    parser.add_argument('--debug', action='store_true', help='Print debug output.')
    args = parser.parse_args()

    if not args.list and not args.file:
        raise ValueError('You must either specify an output file or use --list. Use --help for a full description.')

    if args.file:
        args.file = MidiFile(args.file)

    args.api = find_api(args.api)

    return args

def find_api(api_name):
    if api_name == "default":
        return 0

    for api in rtmidi.get_compiled_api():
        name = rtmidi.get_api_display_name(api).lower()
        if api_name in name:
            return api
    raise ValueError(f'No such API found: {api_name}')

def debug(print_msg):
    if ARGS.debug:
        print(f'DEBUG: {print_msg}', flush=True)

def print_info():
    print('Available APIs:')
    for api in rtmidi.get_compiled_api():
        name = rtmidi.get_api_display_name(api)
        print(f'{api}: {name}')
        try:
            list_output_ports(api=api)
        except:
            print('Error while reading from the API.')

def play(midiout):
    print('length: {:.2f}s'.format(ARGS.file.length))
    for msg in ARGS.file.play():
        midiout.send_message(msg.bytes())
        debug(msg)

def cleanup():
    global MIDIOUT
    if MIDIOUT:
        # reset the controller so that future playbacks aren't affected
        # by previously sent MIDI messages
        for msg in mido.ports.panic_messages():
            MIDIOUT.send_message(msg.bytes())
        MIDIOUT = None

def exit_handler(signum, frame):
    cleanup()
    sys.exit(1)

def register_exit_handler():
    signal.signal(signal.SIGINT, exit_handler)
    signal.signal(signal.SIGTERM, exit_handler)
    signal.signal(signal.SIGPIPE, exit_handler)
    signal.signal(signal.SIGABRT, exit_handler)

def main():
    global ARGS
    global MIDIOUT
    ARGS = parse_args()

    if ARGS.list:
        print_info()
        return

    register_exit_handler()

    try:
        MIDIOUT, midiout_port = open_midiport(port=ARGS.output, type_='output', client_name=ARGS.client, api=ARGS.api, port_name='output', use_virtual=ARGS.output is None)
        while True:
            play(MIDIOUT)
            if not ARGS.loop:
                break
    finally:
        cleanup()

if __name__ == '__main__':
    sys.exit(main())
