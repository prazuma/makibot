module.exports = (robot) ->
  robot.hear /賢い！可愛い！/, (msg) ->
    if( Math.floor( Math.random() * 5) == 0)
      msg.send "真姫様！"
    else
      msg.send "エリーチカ！"

  robot.hear /にっこにっこにー/, (msg) ->
    if( Math.floor( Math.random() * 5) == 0)
      msg.send "にっこにっこにー♪"

  robot.hear /好きな食べ物は？/, (msg) ->
    msg.send "トマトよ♡"

  robot.hear /嫌いな食べ物は？/, (msg) ->
    msg.send "みかんよ"

  robot.hear /テストどうだった？/, (msg) ->
    msg.send "もちろん、満点に決まってるじゃない"

  robot.hear /おはよう/, (msg) ->
    msg.send "あら、おはよう"

  robot.hear /おやすみ/, (msg) ->
    msg.send "おやすみなさい"

  robot.hear /疲れた/, (msg) ->
    msg.send "おつかれさま"

  robot.hear //, (msg) ->
    msg.send ""
