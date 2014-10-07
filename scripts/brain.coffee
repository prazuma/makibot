module.exports = (robot) ->
  robot.hear /test/, (msg) ->
    robot.brain.data.test = {id: 'test', value: 0} unless robot.brain.data.test
    robot.brain.data.test.value++
    if ( robot.brain.data.test.value == 4)
      console.log "OK"
      robot.brain.data.test.value = 0
    robot.brain.save
    console.log robot.brain.data.test

  robot.hear /^まきちゃん可愛い$/i, (msg) ->
    robot.brain.data.cute = {id: 'cute', value: 0, shy: 0} unless robot.brain.data.cute
    robot.brain.data.cute.value++
    if( robot.brain.data.cute.value == 2)
      robot.brain.data.cute.shy++
      robot.brain.data.cute.value = 0
      if( robot.brain.data.cute.shy == 3)
        msg.send "もう//意味わかんない//"
      else
        msg.send "ｳﾞｪｴ"
    else
      msg.send "何よ"
    robot.brain.save
