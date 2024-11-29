Gryphon Moon Core Staging Tree
===========================

https://gryphonmoon.com/

What is Gryphon Moon?
--------------------

Gryphon Moon is a blockchain project that goes beyond gaming. It enables the integration of blockchain features into games using GRYPM, its native cryptocurrency, offering enhanced player experiences and engaging mechanics. 

Our vision extends beyond gaming to support developers, creators, and innovators exploring Web3 technology. 

Our blockchain technology is designed to resist ASIC and FPGA mining, ensuring a decentralized network powered by secure and efficient CPU mining.
With robust protection against 51% attacks and the integration of masternodes, our system offers enhanced stability, faster transaction processing, and a strong foundation for decentralized governance.

License
-------

Gryphon Moon Core is released under the terms of the MIT license. See [COPYING](COPYING) for more
information or see https://opensource.org/licenses/MIT.

Development Process
-------------------

The `master` branch is meant to be stable. Development is normally done in separate branches.
[Tags](https://github.com/gogryphon/gryphoonmoon/tags) are created to indicate new official, stable release versions of Gryphon Moon Core.

The `develop` branch is regularly built (see doc/build-*.md for instructions) and tested, but is not guaranteed to be completely stable.

The contribution workflow is described in [CONTRIBUTING.md](CONTRIBUTING.md) and useful hints for developers can be found in [doc/developer-notes.md](doc/developer-notes.md).

Build / Compile from Source
---------------------------

The `./configure`, `make`, and `cmake` steps, as well as build dependencies, are in [./doc/](/doc) as well:

- **Linux**: [./doc/build-unix.md](/doc/build-unix.md) \
  Ubuntu, Debian, Fedora, Arch, and others
- **macOS**: [./doc/build-osx.md](/doc/build-osx.md)
- **Windows**: [./doc/build-windows.md](/doc/build-windows.md)
- **OpenBSD**: [./doc/build-openbsd.md](/doc/build-openbsd.md)
- **FreeBSD**: [./doc/build-freebsd.md](/doc/build-freebsd.md)
- **NetBSD**: [./doc/build-netbsd.md](/doc/build-netbsd.md)

Testing
-------

Testing and code review is the bottleneck for development; we get more pull requests than we can review and test on short notice. Please be patient and help out by testing other people's pull requests, and remember this is a security-critical project where any mistake might cost people lots of money.

### Automated Testing

Developers are strongly encouraged to write [unit tests](src/test/README.md) for new code, and to submit new unit tests for old code. Unit tests can be compiled and run (assuming they weren't disabled in configure) with: `make check`. Further details on running and extending unit tests can be found in [/src/test/README.md](/src/test/README.md).

There are also [regression and integration tests](/test), written in Python.
These tests can be run (if the [test dependencies](/test) are installed) with: `test/functional/test_runner.py`

The CI (Continuous Integration) systems make sure that every pull request is built for Windows, Linux, and macOS, and that unit/sanity tests are run automatically.

### Manual Quality Assurance (QA) Testing

Changes should be tested by somebody other than the developer who wrote the code. This is especially important for large or high-risk changes. It is useful to add a test plan to the pull request description if testing the changes is not straightforward.

Translations
------------

Changes to translations as well as new translations can be submitted to [Gryphon Moon Core's Transifex page](https://www.transifex.com/projects/p/dash/).

Translations are periodically pulled from Transifex and merged into the git repository. See the [translation process](doc/translation_process.md) for details on how this works.

**Important**: We do not accept translation changes as GitHub pull requests because the next pull from Transifex would automatically overwrite them again.
