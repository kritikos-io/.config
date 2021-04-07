const { dest, series, src, watch, lastRun } = require("gulp");
const uglify = require("gulp-uglify");
const rename = require("gulp-rename");
const sass = require("gulp-sass");
const sourcemaps = require("gulp-sourcemaps");
const del = require("del");
const webroot = "./wwwroot/";
const paths = {
  scss: webroot + "src/scss/*.scss",
  sass: webroot + "src/sass/*.sass",
  css: webroot + "src/css/*.css",
  js: webroot + "src/js/*.js",
  ts: webroot + "src/ts/*.ts",
  cssDest: webroot + "assets/css/",
  jsDest: webroot + "assets/js/"
};

const cssWatcher = watch(paths.scss);
const jsWatcher = watch(paths.js);
const tsWatcher = watch(paths.ts);

function compileSass() {
  return src([paths.scss, paths.css, paths.sass], { since: lastRun(compileSass) })
    .pipe(sass({ outputStyle: 'expanded' }).on('error', sass.logError))
    .pipe(dest(paths.cssDest))
    .pipe(sass({ outputStyle: 'compressed', sourceMap: 'true' }).on('error', sass.logError))
    .pipe(rename({ suffix: '.min' }))
    .pipe(sourcemaps.write('.', { includeContent: false }))
    .pipe(dest(paths.cssDest));
}

function compileJs() {
  return src(paths.js, { since: lastRun(compileJs) })
    .pipe(dest(paths.jsDest))
    .pipe(sourcemaps.init())
    .pipe(uglify())
    .pipe(rename({ suffix: '.min' }))
    .pipe(sourcemaps.write('.', { includeContent: false }))
    .pipe(dest(paths.jsDest));
}

function compileTs() {
  return src(paths.ts, { since: lastRun(compileTs) });
}

async function watcher(callback) {
  cleaner();
  jsWatcher.on("change", compileJs);
  cssWatcher.on("change", compileSass);
  tsWatcher.on("change", compileTs);
  callback();
}

async function cleaner() {
  del(paths.cssDest);
  del(paths.jsDest);
}

exports.clean = cleaner;
exports.compile = series(compileJs, compileTs, compileSass);
exports.watch = watcher;
