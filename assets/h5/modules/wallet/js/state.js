$(function(){function t(){var t=Util.parseParams();0==t.state?$(".state").text("提交失败"):1==t.state&&($(".icon").attr("src","images/icon_wallet_withdraw@2x.png"),$(".state").text("提交成功"),$(".s1").text("你的申请已提交，审核通过后约"),$(".s2").text("2"),$(".s3").text("个工作日到账"))}t(),$(".btn").on("click",function(){xqBridge.redirect({type:"POP",backward_count:1})}),$(".btn").on("touchstart",function(){$(this).css({background:"#005fbe"})}).on("touchend",function(){$(this).css({background:"#0077ee"})})});