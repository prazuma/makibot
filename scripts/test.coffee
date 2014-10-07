module.exports = (robot) ->
  robot.hear /test/, (msg) ->
    robot.brain.data.test = {id: 'test', value: 0} unless robot.brain.data.test
    robot.brain.data.test.value++
    if ( robot.brain.data.test.value == 4)
      console.log "OK"
      robot.brain.data.test.value = 0
    robot.brain.save
    console.log robot.brain.data.test
