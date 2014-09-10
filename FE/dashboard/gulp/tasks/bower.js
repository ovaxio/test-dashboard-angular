var gulp = require('gulp'),
  gulpBowerFiles = require('main-bower-files'),
  uglify = require('gulp-uglify'),
  concat = require('gulp-concat'),
  size = require('gulp-size');

gulp.task('bower', function () {
  return gulp.src(gulpBowerFiles(), {base: 'bower_components'})
    .pipe(concat('vendor.min.js'))
    .pipe(uglify())
    .pipe(size())
    .pipe(gulp.dest("dist/js"));
});