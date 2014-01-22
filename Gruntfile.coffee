module.exports = (grunt) ->

  grunt.initConfig

    jade:
      compile:
        files:
          'index.html': 'index.jade'

    stylus:
      compile:
        files:
          'main.css': 'main.styl'

    coffee:
      compile:
        files:
          'main.js': 'main.coffee'

    connect:
      server:
        options:
          hostname: '*'
          port: 8000,
          base: '.'
          livereload: true

    watch:
      options:
        livereload: true
      files: ['*.html', '*.css']
      jade:
        files: '*.jade'
        tasks: 'jade'
      stylus:
        files: '*.styl'
        tasks: 'stylus'
      coffee:
        files: '*.coffee'
        tasks: 'coffee'

  grunt.loadNpmTasks 'grunt-contrib-jade'
  grunt.loadNpmTasks 'grunt-contrib-stylus'
  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-connect'
  grunt.loadNpmTasks 'grunt-contrib-watch'

  grunt.registerTask 'default', ['jade', 'stylus', 'coffee', 'connect', 'watch']
