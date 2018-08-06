# Generate Passwords Workflow 🔐 for [Alfred 3](http://www.alfredapp.com)

[![Latest Version](https://img.shields.io/github/tag/otherguy/alfred-generate-password-workflow.svg?style=flat-square&label=release)](https://github.com/otherguy/alfred-generate-password-workflow/tags)
[![Downloads](https://img.shields.io/github/downloads/otherguy/alfred-generate-password-workflow/total.svg?style=flat-square)](https://github.com/otherguy/alfred-generate-password-workflow/releases)
[![Circle CI](https://img.shields.io/circleci/project/github/otherguy/alfred-generate-password-workflow/master.svg?style=flat-square)](https://circleci.com/gh/otherguy/alfred-generate-password-workflow/tree/master)
[![Issues](https://img.shields.io/github/issues/otherguy/alfred-generate-password-workflow.svg?style=flat-square)](https://github.com/otherguy/alfred-generate-password-workflow/issues)
[![MIT License](https://img.shields.io/badge/license-MIT-blue.svg?style=flat-square)](LICENSE.md)
[![Beerpay](https://img.shields.io/beerpay/otherguy/alfred-generate-password-workflow.svg?style=flat-square)](https://beerpay.io/otherguy/alfred-generate-password-workflow)

A workflow for [Alfred 3](http://www.alfredapp.com) that helps you to quickly and securely generate random passwords.

![Example Screencast](resources/screencast-1-resized.gif)

The latest version can be found here as well:

* https://www.alfredforum.com/topic/10546-airports/
* http://www.packal.org/workflow/pwgen

## Installation

Download the latest version of the `passwords.alfredworkflow` from the [Releases](https://github.com/otherguy/alfred-generate-password-workflow/releases) page and double click the downloaded file to install it.

The workflow supports automatic updates and will perform daily update checks.

## Caveats and Requirements

This workflow requires [Alfred 3](https://www.alfredapp.com) and won’t run on **Snow Leopard (10.6)** or lower.

## Usage

The default keyword is `pw`. The first and only parameter is the desired password length, defaulting to 20.

When hitting `⏎ Return` on a selected item, the workflow tries to be helpful by opening either the airports website or its Wikipedia page if it has one. If it has neither a website nor an entry in Wikipedia, it opens the Apple Maps.app with the location of the airport.

When holding down a modifier key, the action can be specified:

| Modifier | Action                                           |
|----------|--------------------------------------------------|
| `⌥`      | Open the website of the selected airport.        |
| `ctrl`   | Open the Wikipedia page of the selected airport. |
| `⌘`      | Show the airports location in Maps.app           |

## `TODO` / Future Work

* Add possibility to change default options

## Developers

If you want to contribute, fork this repository and submit a pull request.

To make the project work locally on your machine, clone the repository, go to the directory and issue the following commands:

    $ pip install --ignore-installed --target=. Alfred-Workflow==1.36
    $ pip install --ignore-installed --target=lib -r requirements.txt

Alternatively, if you would rather work with a virtual environment, run these commands:

    $ virtualenv --python=python2.7 .venv
    $ source .venv/bin/activate
    $ pip install -r requirements.txt

To run the script in the terminal, simply do:

    $ python pwgen.py

You can install `jq` from [Homebrew](https://brew.sh) and pipe the output of the workflow through this program to get nice formatting and the option to query the JSON.

## Acknowledgements

The following resources were used when creating this workflow:

* The excellent [Alfred-Workflow](https://github.com/deanishe/alfred-workflow) python library by [Dean Jackson](https://github.com/deanishe).
* The airport icon used in the workflow by [Freepik](http://www.freepik.com) and licensed under [CC 3.0 BY](http://creativecommons.org/licenses/by/3.0/).
* https://pypi.org/project/xkcdpass/

<div>Icons made by <a href="https://www.flaticon.com/authors/pixel-perfect" title="Pixel perfect">Pixel perfect</a> from <a href="https://www.flaticon.com/" title="Flaticon">www.flaticon.com</a> is licensed by <a href="http://creativecommons.org/licenses/by/3.0/" title="Creative Commons BY 3.0" target="_blank">CC 3.0 BY</a></div>


<div>Icons made by <a href="https://www.flaticon.com/authors/smashicons" title="Smashicons">Smashicons</a> from <a href="https://www.flaticon.com/" title="Flaticon">www.flaticon.com</a> is licensed by <a href="http://creativecommons.org/licenses/by/3.0/" title="Creative Commons BY 3.0" target="_blank">CC 3.0 BY</a></div>

A big ♥️ _thank you_ to all creators!

## Support on Beerpay

If this is useful to you in any way or you end up building it yourself, you could buy me a beer! 

[![Beerpay](https://beerpay.io/otherguy/alfred-generate-password-workflow/badge.svg?style=beer-square)](https://beerpay.io/otherguy/alfred-generate-password-workflow)  [![Beerpay](https://beerpay.io/otherguy/alfred-generate-password-workflow/make-wish.svg?style=flat-square)](https://beerpay.io/otherguy/alfred-generate-password-workflow?focus=wish)
