#!/bin/sh

google-chrome --headless --disable-gpu --dump-dom http://sekai-kabuka.com/bitcoin.html
google-chrome --headless --disable-gpu --print-to-pdf http://sekai-kabuka.com/bitcoin.html
google-chrome --headless --disable-gpu --screenshot http://sekai-kabuka.com/bitcoin.html
google-chrome --headless --disable-gpu --screenshot --window-size=800,1200 http://sekai-kabuka.com/bitcoin.html
convert screenshot.png -crop '755x630+20+400' image.jpg
