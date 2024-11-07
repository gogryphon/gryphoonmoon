#!/usr/bin/env bash
# Copyright (c) 2018-2023 The Dash Core developers
# Distributed under the MIT software license, see the accompanying
# file COPYING or http://www.opensource.org/licenses/mit-license.php.
# use testnet settings,  if you need mainnet,  use ~/.gryphonmooncore/gryphonmoond.pid file instead
export LC_ALL=C

gryphonmoon_pid=$(<~/.gryphonmooncore/testnet3/gryphonmoond.pid)
sudo gdb -batch -ex "source debug.gdb" gryphonmoond ${gryphonmoon_pid}
