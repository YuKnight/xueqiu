$(function(){function e(){var e=Util.parseParams(),t=parseFloat((e.snow_money-e.pre_snow_money)/100),o=t.formatMoney(2,".",",");t>0?(o="+"+o,$("#bill-amount").css("color","#fc9f26")):$("#bill-amount").css("color","#333"),$("#bill-amount").text(o),$("#bill-name").text(e.name),$("#bill-createdAt").text(moment(parseInt(e.created_at)).format("YYYY-MM-DD HH:mm")),$("#bill-tradeNo").text(e.bill_no);var l=parseFloat(e.snow_money/100).formatMoney(2,".",",")+"元";$("#bill-snow-money").text(l),e.comment&&""!=e.comment?$("#bill-remark").text(e.comment):($("#bill-remark").hide(),$("#bill-remark-label").hide())}e()});