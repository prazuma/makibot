module.exports = (robot) ->
  robot.hear /賢い！可愛い！/, (msg) ->
    if( Math.floor( Math.random() * 5) == 0)
      msg.send "真姫様！"
    else
      msg.send "エリーチカ！"
