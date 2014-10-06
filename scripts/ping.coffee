# Description:
#   Utility commands surrounding Hubot uptime.
#
# Commands:
#   hubot ping - Reply with pong
#   hubot echo <text> - Reply back with <text>
#   hubot time - Reply with current time
#   hubot die - End hubot process

cure_nishikino = [
  "それろ〜〜〜それろ〜〜〜",
  "ワイワイ",
  "やんやんっ♡♡",
  "ないやん",
  "いいから大人しく着替えて。",
  "希ちゃんの占いなんて当てにならないわよ",
  "今日はあなたを囲んで、みんなで一緒に勉強会です",
  "もう、お肉お肉うるさいわよ穂乃果"
]

module.exports = (robot) ->
  robot.respond /PING$/i, (msg) ->
    msg.send "PONG"

  robot.respond /ADAPTER$/i, (msg) ->
    msg.send robot.adapterName

  robot.respond /ECHO (.*)$/i, (msg) ->
    msg.send msg.match[1]

  robot.respond /TIME$/i, (msg) ->
    msg.send "Server time is: #{new Date()}"

  robot.respond /DIE$/i, (msg) ->
    msg.send "Goodbye, cruel world."
    process.exit 0
  
  robot.hear /まき/, (msg) ->
    msg.send "何の用ですか"

  robot.hear /@maki/, (msg) ->
    msg.send msg.random cure_nishikino
