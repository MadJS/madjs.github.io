module.exports = (grunt) ->

  grunt.initConfig

    jade:
      compile:
        files:
          'public/index.html': 'src/index.jade'

    htmlmin:
      dist:
        options:
          collapseWhitespace: true
          minifyJS: true
          minifyCSS: true
        files:
          'public/index.html': 'public/index.html'

    connect:
      server:
        options:
          hostname: '*'
          port: 8000,
          base: 'public'
          livereload: true

    watch:
      options:
        livereload: true
      anything:
        files: [
          'src/*.jade'
          'src/*.styl'
          'src/*.coffee'
        ]
        tasks: [
          'jade'
          'htmlmin'
        ]

  grunt.loadNpmTasks 'grunt-contrib-jade'
  grunt.loadNpmTasks 'grunt-contrib-htmlmin'
  grunt.loadNpmTasks 'grunt-contrib-connect'
  grunt.loadNpmTasks 'grunt-contrib-watch'

  grunt.registerTask 'default', [
    'jade'
    'htmlmin'
    'connect'
    'watch'
  ]
