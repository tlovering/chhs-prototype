Integration Tests
============

Protractor will automatically start and stop a selenium instance and use a npm provided chromedriver. 

You'll need to install the webdriver-manager (selenium wrapper) first before running the tests:

    sudo npm install -g protractor@2
    sudo npm install -g cucumber@0.7.0
    sudo npm install -g webdriver-manager
    sudo webdriver-manager update
    webdriver-manager start
    
Next, you can run the tests with:

    npm install
    protractor config/protractor.js 

To override the base url

    protractor --baseUrl https://chhs-prototype.portlandwebworks.com config/protractor.js

