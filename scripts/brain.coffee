module.exports = (robot) ->
  robot.hear /test/, (msg) ->
    robot.brain.data.test = {id: 'test', value: 0} unless robot.brain.data.test
    robot.brain.data.test.value++
    if ( robot.brain.data.test.value == 4)
      console.log "OK"
      robot.brain.data.test.value = 0
    robot.brain.save
    console.log robot.brain.data.test

  robot.hear /まきちゃん可愛い/, (msg) ->
    robot.brain.data.cute = {id: 'cute', value: 0, shy: 0} unless robot.brain.data.cute
    robot.brain.data.cute.value++
    if( robot.brain.data.cute.value % 6 == 0)
      msg.send "もう//意味わかんない//"
    else if( robot.brain.data.cute.value % 2 == 0)
      msg.send "ｳﾞｪｴ"
    else
      msg.send "何よ"
    robot.brain.save

  robot.hear /まきちゃんマジ天使/, (msg) ->
    robot.brain.data.engel = {id: 'engel', value: 0} unless robot.brain.data.engel
    robot.brain.data.engel.value++
    if( robot.brain.data.engel.value % 10 != 0)
      msg.send "な、何言ってるのよ！バカ//"
    else
      msg.send "あ、ありがと//"
    robot.brain.save
