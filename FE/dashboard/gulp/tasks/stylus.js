var gulp = require('gulp')
  plumber = require('gulp-plumber'),
  stylus = require('gulp-stylus'),
  concat = require('gulp-concat'),
  nib = require('nib'),
  size = require('gulp-size');

gulp.task('stylus', function () {
  return gulp.src('src/stylus/*.styl')
    .pipe(plumber())
    .pipe(stylus({use:[nib()],compress: true}))
    .pipe(concat('app.min.css'))
    .pipe(size())
    .pipe(gulp.dest('dist/css'));
});