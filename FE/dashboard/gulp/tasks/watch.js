var gulp = require('gulp'),
  watch = require('gulp-watch'),
  GLOBVARS = require('../vars');

gulp.task("watch", function () {
  watch(GLOBVARS.watch.stylus, function () {
    gulp.start('dev-stylus');
  });
  watch(GLOBVARS.watch.templates, function () {
    gulp.start('dev-templates');
  });
  watch([GLOBVARS.src.basedir+'index.jade', GLOBVARS.src.basedir+'jade-inc/**/*.jade'], function () {
    gulp.start('dev-indexHTML');
  });
  gulp.src(GLOBVARS.watch.coffee)
  .pipe(watch(GLOBVARS.watch.coffee, function () {
    gulp.start('dev-coffee');
  }));
  watch('bower.json', function () {
    gulp.start('dev-bower');
  });
});

// gulp.task("watch", function () {
//   gulp.watch(GLOBVARS.watch.stylus, ['dev-stylus']);
//   gulp.watch(GLOBVARS.watch.templates, ['dev-templates']);
//   gulp.watch([GLOBVARS.src.basedir+'index.jade', GLOBVARS.src.basedir+'jade-inc/**/*.jade'], ['dev-indexHTML']);
//   gulp.watch(GLOBVARS.watch.coffee, ['dev-coffee']);
//   gulp.watch('bower.json', ['dev-bower']);
// });