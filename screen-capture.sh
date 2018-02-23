#!/bin/sh

google-chrome --headless --disable-gpu --screenshot --window-size=667,375 https://www.google.co.jp
convert screenshot.png -crop '667x375+0+0' image.jpg
