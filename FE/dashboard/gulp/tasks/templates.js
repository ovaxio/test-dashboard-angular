var gulp = require('gulp')
  plumber = require('gulp-plumber'),
  jade = require('gulp-jade'),
  rename = require('gulp-rename'),
  size = require('gulp-size');

gulp.task('templates', function () {
  gulp.src('src/app/**/*.jade')
    .pipe(plumber())
    .pipe(jade({pretty: false}))
    .pipe(size())
    .pipe(rename(function (path) {
      path.dirname = path.dirname.split('/').shift();
    }))
    .pipe(gulp.dest('dist/templates'));
});