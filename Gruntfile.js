
module.exports = function (grunt) {

  // Load grunt tasks automatically
  require('load-grunt-tasks')(grunt);

  // Time how long tasks take. Can help when optimizing build times
  require('time-grunt')(grunt);

  // Define the configuration for all the tasks
  grunt.initConfig({

    // Watches files for changes and runs tasks based on the changed files
    watch: {
      styles: {
        files: ['app/styles/app.scss'],
        tasks: ['sass:dist']
      },
      livereload: {
        options: {
          livereload: '<%= connect.options.livereload %>'
        },
        files: [
          'dist/dist/assets/walter.css'
        ]
      }
    },

    // The actual grunt server settings
    connect: {
      options: {
        port: 9000,
        hostname: 'localhost',
        livereload: 35730
      },
      livereload: {
        options: {
          open: true,
          base: ['dist/']
        },
      },
    },

    sass: {
      dist: {                            
        options: {                       
          style: 'expanded'
        },
        files: {                         
          'dist/assets/walter.css': 'app/styles/app.scss'
        }
      }
    }

  });

  grunt.registerTask('serve', function (target) {

    grunt.task.run([
      'sass:dist',
      'connect:livereload',
      'watch'
    ]);
  });

};
