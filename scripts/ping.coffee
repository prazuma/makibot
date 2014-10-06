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
  "もう、お肉お肉うるさいわよ穂乃果",
  "かわいいだけじゃアイドルだってやっていけないのよ！",
  "これっきり…かもね",
  "はあ！？ なんで私が！",
  "べ、別にいいけど‼︎",
  "ちょっと、何騒いでるのよ。外まで聞こえてるんだけど。",
  "脱いで、うみちゃん。",
  "いまお風呂よ http://38.media.tumblr.com/1e87f98afe9d6e707ad73246af238b18/tumblr_n785rffmmT1s5f9ado1_500.gif",
  "学校でお泊り会よ http://37.media.tumblr.com/88164a0950cee5707a41cf1865682ac6/tumblr_n7l2gkbyEw1s4qvrdo1_500.gif",
  "ちょっと！ http://37.media.tumblr.com/78d253d7b0dfbb950f893bb7ea4c0530/tumblr_n6v199Ntiu1s74h99o2_500.gif",
  "おい！お前ら！ニコニーするぞ！！！１",
  "みんな〜〜〜聴いてね〜〜〜🎵🎵",
  "今はラブライブに集中 👿",
  "それはそれでプレッシャーね。",
  "卒業するまでは部長でしょう？💓",
  "にこちゃんたちのいないμ’sなんて嫌なの！",
  "子供ね。私は美術館。",
  "ちょっと、そういう話は…",
  "Dancing💃stars🌟on👆me👰",
  "（願いましょう）願いましょう💖",
  "🌟🌟Dancing stars on me🌟🌟",
  "もっともっと踊らせて👏👏",
  "どこへでも💝",
  "おいでやす〜〜♨",
  "また欲張りなお願いしてたんでしょ〜",
  "おめでとうにゃ💖",
  "（音楽が大好きで…🎤）",
  "神様のいたずらかな…💖",
  "いいんじゃない👏👏",
  "カツサンドよッ http://24.media.tumblr.com/741abc196d0d14f1d099cd4e86a81bbf/tumblr_n6js6sodGO1r54lc0o1_500.gif",
  "がんばろうよ〜🌟🌟🌟",
  "みんな私のこと泣かないと思ってるでしょ",
  "「お米が大好きで」",
  "寒いにゃぁ〜〜〜〜〜〜👏",
  "ためらってもダメだね〜🙅",
  "🌟ときめき🌟",
  "遠慮せんと入って💁",
  "はい、これ。いいから受けとんなさいよぉ🍫",
  "穂乃果ちゃんたち3人が頑張って生徒会はピンチを脱出👍 ダイエットも成功🙆 そしていよいよ最終予選がやって来るよ👑",
  "とは言うものの、A-RISEを意識しすぎて、新しいことにチャレンジするも、どれも空回り。",
  "秋と言ったら、なんといっても新米の季節です🍚",
  "何の用ですか〜ッ",
  "では最初にストレッチから始めていきますわ🌟",
  "新たなμ’sを見ていくがいい！",
  "がんばるぞい",
  "やっべ、遅刻しちまうぜ。",
  "飲みに行くぞ",
  "泣けるにゃあ〜",
  "へ〜〜んし〜〜ん♥♡",
  "http://t.co/DEbPJ50KyD",
  "なんとかしなきゃ",
  "♡♥♡プランタンです♡♥♡",
  "それろ〜〜〜それろ〜〜〜",
  "ワイワイワイ",
  "やんやんっ♡♡",
  "ないやん",
  "絢瀬絵里よ、西木野真姫君",
  "http://t.co/Z0Zr79bxHM",
  "べ、別にそんなこと、言った覚え、ないやん",
  "そうにゃそうにゃ",
  "妹達に嘘をついていたニコっち。そこには悲しい過去が。",
  "余程のうぬぼれ屋でもない限り、自分より他人のほうが可愛いって思ってるものでしょう？",
  "バレンタインチョコであります",
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
