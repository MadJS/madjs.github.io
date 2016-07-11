module.exports = (grunt) ->

  grunt.initConfig

    jade:
      compile:
        files:
          'index.html': 'src/index.jade'

    htmlmin:
      dist:
        options:
          collapseWhitespace: true
          minifyJS: true
          minifyCSS: true
        files:
          'index.html': 'index.html'

    connect:
      server:
        options:
          hostname: '*'
          port: 8000,
          base: '.'
          livereload: true

    watch:
      options:
        livereload: 39999
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
