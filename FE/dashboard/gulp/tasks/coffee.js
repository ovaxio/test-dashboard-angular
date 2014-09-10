var gulp = require('gulp')
  plumber = require('gulp-plumber'),
  coffee = require('gulp-coffee'),
  concat = require('gulp-concat'),
  uglify = require('gulp-uglify'),
  size = require('gulp-size');

gulp.task('coffee', function () {
  return gulp.src(['src/app/main.coffee', 'src/app/**/module.coffee', 'src/app/**/*.coffee'])
    .pipe(plumber())
    .pipe(coffee({bare: true}))
    .pipe(concat('app.min.js'))
    .pipe(uglify())
    .pipe(size())
    .pipe(gulp.dest('dist/js'));
});