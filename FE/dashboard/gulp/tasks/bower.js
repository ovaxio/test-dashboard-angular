var gulp = require('gulp'),
  gulpBowerFiles = require('main-bower-files'),
  uglify = require('gulp-uglify'),
  concat = require('gulp-concat'),
  size = require('gulp-size'),
  sourcemaps = require('gulp-sourcemaps');

gulp.task('bower', function () {
  return gulp.src(gulpBowerFiles(), {base: 'bower_components'})
    .pipe(sourcemaps.init())
    .pipe(concat('vendor.min.js'))
    .pipe(uglify())
    .pipe(size())
    .pipe(sourcemaps.write('./maps'))
    .pipe(gulp.dest("dist/js"));
});