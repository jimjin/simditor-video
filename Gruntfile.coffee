module.exports = (grunt)->
  grunt.initConfig(
    pkg: grunt.file.readJSON('package.json'),
    coffee:
      simditor:
        files:
          "lib/simditor-video.js":"src/simditor-video.coffee"
    sass:
        dist:
        	file:
          		'lib/simditor-video.css': 'src/simditor-video.scss'
          	options:
          		sourcemap: 'false'
  )
  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-sass'
  grunt.registerTask 'default', ['coffee:compile']