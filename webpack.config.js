// webpack.config.js
let Encore = require('@symfony/webpack-encore');

Encore
// the project directory where all compiled assets will be stored
    .setOutputPath('web/build/')

    // the public path used by the web server to access the previous directory
    .setPublicPath('/build')

    // will create web/build/app.js and web/build/app.css
    .addEntry('app', './assets/js/app.js')
    .addEntry('demo', './assets/js/demo.js')
    .addEntry('imagesloaded.pkgd.min', './assets/js/imagesloaded.pkgd.min.js')
    .addEntry('TweenMax.min', './assets/js/TweenMax.min.js')
    .addEntry('menuburger', './assets/js/menuburger.js')
    .addEntry('demo1', './assets/js/demo1.js')

    .addEntry('style', './assets/scss/style.scss')
    .addEntry('main', './assets/scss/main.scss')
    .addEntry('base', './assets/scss/base.scss')
    .addEntry('demoburger', './assets/scss/demoburger.scss')

    // allow legacy applications to use $/jQuery as a global variable
    .autoProvidejQuery()

    // enable source maps during development
    .enableSourceMaps(!Encore.isProduction())

    // empty the outputPath dir before each build
    .cleanupOutputBeforeBuild()

    // show OS notifications when builds finish/fail
    .enableBuildNotifications()

// create hashed filenames (e.g. app.abc123.css)
// .enableVersioning()

// allow sass/scss files to be processed
.enableSassLoader()
;

// export the final configuration
module.exports = Encore.getWebpackConfig();