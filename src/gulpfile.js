var gulp = require('gulp'),
        rename  = require('gulp-rename'),
        uglify  = require('gulp-uglify'),
        header  = require('gulp-header'),
        concat  = require('gulp-concat'),
        bower   = require('gulp-bower'),
        less    = require('gulp-less');

gulp.task('bower', function () {
    return bower();
});

gulp.task('build', ['bower'], function () {
    return ;
});

gulp.task('default', ['build']);

//gulp.task('sass', function () {
//  gulp.src('./sass/**/*.scss')
//    .pipe(sass.sync().on('error', sass.logError))
//    .pipe(gulp.dest('./css'));
//});
//gulp.task('sass:watch', function () {
//  gulp.watch('./sass/**/*.scss', ['sass']);
//});

//gulp.task('less', function () {
//    gulp.src([
//            './src/Sharing/GameBundle/Resources/public/less/bootstrap.less',
//            './src/Sharing/GameBundle/Resources/public/less/Sharingame.less'
//        ])
//        .pipe(less())
//        .pipe(gulp.dest('./web/css/bootstrap')); 
//});
//gulp.task('less:watch', function () {
//    gulp.watch(['./src/Sharing/GameBundle/Resources/public/less/*.less'], ['less']);
//});