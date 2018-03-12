const puppeteer = require('puppeteer');

(async () => {
  const browser = await puppeteer.launch({
    args: ['--no-sandbox','--disable-setuid-sandbox'],
  });
  const page = await browser.newPage();

  await page.setViewport({width: 800, height: 1200})
  await page.goto('http://sekai-kabuka.com/bitcoin.html');

  await page.waitFor(5000);
  await page.screenshot({path: 'screenshot.png', clip: {x: 35, y: 400, width: 755, height: 630}});

  await browser.close();
})();
