define(function(require,exports,module){function t(t){return xqBridge.hideLoading(),t&&6e4==t.result_code?!0:void(!t||70005!=t.result_code&&70006!=t.result_code?xqBridge.alert(t&&(t.error_description||t.msg)?{message:t.msg||t.error_description,success:function(){xqBridge.redirect({type:"POP_CANCEL"})}}:{message:"网络错误",success:function(){xqBridge.redirect({type:"POP_CANCEL"})}}):xqBridge.redirect({type:"POP_CANCEL"}))}xqBridge.trackEvent("trade-history");{var e=require("template/trade/trade-history-list.js"),a=require("template/trade/new-stock-list.js"),i=Util.parseParams(),s=i.aid,o=i.tid,r=!1;navigator.userAgent.indexOf("iPhone")>-1}module.exports={init:function(){xqBridge.showLoading();var t=moment((new Date).getTime()),e=moment(t._i).subtract(30,"day");$(".start-date .main").text(e.format("MM.DD")),$(".start-date .year").text(e.format("YYYY")),$(".start-date").data("timestamp",e.format("x")),$(".end-date .main").text(t.format("MM.DD")),$(".end-date .year").text(t.format("YYYY")),$(".end-date").data("timestamp",t.format("x")),this.action="today",i&&i.action&&(this.action=i.action);var a=this,s=Util.parseParams();a.isIB="IB"==s.tid,a.isDYZQ="DYZQ"==s.tid,a.isUSHK=a.isIB||a.isDYZQ,"PAMID"===s.tid&&$(".switch-type").removeClass("not-new-stock"),this.checkBind(function(){a.renderHtml(),a.bindEvent()})},checkBind:function(e){var a=this;Util.checkAndInit({isIB:a.isUSHK,success:function(a){if(t(a)){var i=userInfo.brokerList,r=Util.getBroker(i,Util.parseParams().tid);s=r.aid,o=r.tid,e()}},cancel:function(){xqBridge.redirect({type:"POP_CANCEL"})}})},renderHtml:function(){"today"===this.action?this.getTodayHistoryData(s):$("#trade-history").trigger("click"),this.isUSHK?this.showIbTip():($(".history-type").show(),$(".history-list").css({"margin-top":"40px"})),$(".dialog").css({marginTop:"-"+$(".dialog").height()/2+"px"})},getNewStockData:function(t){xqBridge.showLoading();(new Date).getMilliseconds();xqBridge.request({url:"/tc/snowx/newshare/list.json",type:"GET",data:{aid:t,tid:o},success:function(t){if(t.result_data&&Object.keys(t.result_data).length){var e=[];_.each(t.result_data,function(t){e.push(t)}),e=e.sort(function(t,e){return t.onl_subbeg_date&&e.onl_subbeg_date?moment(t.onl_subbeg_date).diff(moment(e.onl_subbeg_date),"days")>0?-1:1:-1}).map(function(t){return"PURCHASE"===t.status?t.onl_subbeg_date_colored=!0:"NUMBER"===t.status?(t.onl_subbeg_date_colored=!0,t.onl_distr_date_colored=!0):"CONFIRM"===t.status||"FINISH"===t.status||"GIVEUP"===t.status||"PARTGIVEUP"===t.status?(t.onl_subbeg_date_colored=!0,t.onl_distr_date_colored=!0,t.onl_lotwiner_stpub_date_colored=!0,t.confirm_day_colored=!0):(t.onl_subbeg_date_colored=!0,t.onl_distr_date_colored=!0,t.onl_lotwiner_stpub_date_colored=!0),["onl_subbeg_date","onl_distr_date","onl_lotwiner_stpub_date","pay_day","confirm_day"].map(function(e){t[e]?("onl_lotwiner_stpub_date"===e&&(t.stpub_date=moment(t[e]).format("YYYY-MM-DD")),t[e]=moment(t[e]).format("MM-DD")):t[e]="--"}),t}),$(".history-list").html(a({data:e})),$(".pay-in").on("click",function(){xqBridge.redirect({url:"/broker/transfer",type:"PUSH"})}),$(".stock-head").on("click",function(){xqBridge.redirect({url:"http://xueqiu.com/broker/new-stock-detail?"+$.param($(this).data("stock")),type:"PUSH"})})}else $(".history-list").html(a());$(".history-list").removeClass("fn-hide")},error:function(){$(".history-list").html(a()),Util.toast.show("请求数据失败")},complete:function(){xqBridge.hideLoading()}})},getTodayHistoryData:function(t){var a=this;xqBridge.showLoading(),xqBridge.request({url:"/tc/snowx/transaction/list.json",data:{aid:t,tid:o},success:function(t){"60000"===t.result_code?(t.result_data=t.result_data.map(function(t){t.camount=Math.abs(t.camount);var e=t.etype.substr(0,2)+t.scode,a=0!==Util.getRepurchase(e).repurchase,i=t.camount;return a&&(i=100*t.camount),t.commission=Util.getCommission(t.cprice,i,t.action,e,Util.parseParams().tid).calculateAmount,t}),$(".history-list").html(e({data:{histories:t.result_data,action:"today",isIB:a.isUSHK,isDYZQ:a.isDYZQ}})),a.isUSHK?($(".notIb").hide(),$(".isIb").show()):($(".notIb").show(),$(".isIb").hide()),$(".question-mark").on("click",function(t){t.preventDefault(),xqBridge.trackEvent("trade_history_fee"),$(".dialog").fadeIn(),a.overlay.showOverlay()}),$("#close-dialog").on("click",function(t){t.preventDefault(),a.overlay.hideOverlay(),$(".dialog").hide()}),$(".history-list").removeClass("fn-hide")):($(".history-list").html(e({data:{histories:[],action:"history"}})),$(".history-list").removeClass("fn-hide"),Util.toast.show(t.msg)),$("th.date").html("时间")},error:function(t){Util.toast.show(t.error_description||t.msg||t)},complete:function(){xqBridge.hideLoading()}})},getHistoryData:function(t,a,i,s){var d=this;xqBridge.showLoading(),xqBridge.request({url:"/tc/snowx/transaction/list_history.json",data:{aid:t,tid:o,pos:a,start:i,end:s},success:function(t){if("60000"===t.result_code){var i=[];t.result_data=t.result_data.map(function(t){t.camount=Math.abs(t.camount);var e=t.etype.substr(0,2)+t.scode,a=0!==Util.getRepurchase(e).repurchase,s=t.camount;return a&&(s=100*t.camount),t.commission=-1===_.findIndex(i,t.oid)?Util.getCommission(t.cprice,s,t.action,e).calculateAmount:"0.00",i.push(t.oid),t}),a?(t.result_data&&0===t.result_data.length&&(r=!0),$(".history-list .update-history").replaceWith(e({data:{histories:t.result_data,action:"history-append"}})),d.isUSHK?($(".notIb").hide(),$(".isIb").show()):($(".notIb").show(),$(".isIb").hide()),$(".history-list").removeClass("fn-hide")):(r=!1,$(".history-list").html(e({data:{histories:t.result_data,action:"history"}})),d.isUSHK?($(".notIb").hide(),$(".isIb").show()):($(".notIb").show(),$(".isIb").hide()),$(".history-list").removeClass("fn-hide")),$(".question-mark").on("click",function(t){t.preventDefault(),xqBridge.trackEvent("trade_history_fee"),$(".dialog").fadeIn("fast"),d.overlay.showOverlay()}),$("#close-dialog").on("click",function(t){t.preventDefault(),d.overlay.hideOverlay(),$(".dialog").hide("fast")})}else $(".history-list").html(e({data:{histories:[],action:"history"}})),$(".history-list").removeClass("fn-hide"),Util.toast.show(t.msg);$("th.date").html("日期")},error:function(){$(".history-list").html(e({data:{histories:[],action:"history"}})),$(".history-list").removeClass("fn-hide")},complete:function(){xqBridge.hideLoading()}})},showIbTip:function(){var t="";if(this.isDYZQ)t="默认展示最近30天内交易记录";else{var e=moment().hour();moment().minute()>0&&e++,t=e>=20?"交易记录时间："+moment().format("M月DD日")+"20:00-"+moment().add(1,"days").format("M月DD日")+"20:00(北京)":"交易记录时间："+moment().subtract(1,"days").format("M月DD日")+"20:00-"+moment().format("M月DD日")+"20:00(北京)"}$(".tip").text(t)},overlay:{showOverlay:function(){$(document).height();$("#overlay").length?$("#overlay").fadeIn("fast"):($("body").append("<div id='overlay'></div>"),$("#overlay").css({height:"100%",opacity:.4,position:"absolute",top:0,left:0,"background-color":"black",width:"100%","z-index":400,display:"none"}).fadeIn("fast").on("touchstart",function(){$(this).fadeOut("fast"),$(".dialog").fadeOut("fast")}))},hideOverlay:function(){$("#overlay").length&&$("#overlay").remove()}},bindEvent:function(){var t=this;$("body").on("click","button.enable",function(){var e=$(this).parent(),a=$(this),i=e.data("time"),o=e.data("oid"),r=Util.appVersion();return 6>r?(Util.showError("客户端版本过低，请先升级客户端。"),!1):a.data("disabled")?!1:(a.data("disabled",!0),xqBridge.showLoading(),void xqBridge.request({url:"/tc/snowx/ad/lucky.json",type:"POST",data:{aid:s,oid:(i+"").substr(0,8)+"-"+o},success:function(a){if(6e4==a.result_code){i+="";var s=i.substr(8,2)+":"+i.substr(10,2);"history"===t.action&&(s=i.substr(4,2)+"."+i.substr(6,2)),e.html(s).addClass("date"),xqBridge.redirect({url:"/broker/lucky-result?"+$.param(a.result_data),type:"PUSH"})}else Util.showError(a.msg)},error:function(){Util.showError("服务出错，请重新尝试")},complete:function(){xqBridge.hideLoading(),a.data("disabled",!1)}}))}),$("body").on("click",".history-type button",function(){if(!$(this).find("span").hasClass("select"))if($(".history-type button").find("span").removeClass("select"),$(this).find("span").addClass("select"),$(".history-list").addClass("fn-hide"),"today-history"==$(this).attr("id"))$(".history-list").css({"margin-top":"40px"}),$(".history-date").addClass("fn-hide"),$("th.date").text("时间"),t.action="today",t.getTodayHistoryData(s);else if("trade-history"==$(this).attr("id")){xqBridge.trackEvent("conclude_history");var e=$(".start-date").data("timestamp"),a=$(".end-date").data("timestamp");$(".history-list").css({"margin-top":"150px"}),$(".history-date").removeClass("fn-hide");{$(".history-date").data("moment")}$("th.date").text("日期"),t.action="history",t.getHistoryData(s,"",e,a)}else $(".history-list").css({"margin-top":"49px"}),$(".history-date").addClass("fn-hide"),t.action="newStock",t.getNewStockData(s)}),$("body").on("click",".select-date",function(){var e=this,a=$(e).data("timestamp");$(this).hasClass("date-opened")||($(".select-date").addClass("date-opened"),xqBridge.datePicker({date:a,success:function(a){a=parseInt(a),$(e).find(".main").text(moment(a).format("MM.DD")),$(e).find(".year").text(moment(a).format("YYYY")),$(e).data("timestamp",a),$(e).hasClass("start-date")&&a>$(".end-date").data("timestamp")?($(".end-date").find(".main").text(moment(a).add(30,"day").format("MM.DD")),$(".end-date").find(".year").text(moment(a).add(30,"day").format("YYYY")),$(".end-date").data("timestamp",moment(a).add(30,"day").format("x"))):$(e).hasClass("end-date")&&a<$(".start-date").data("timestamp")&&($(".start-date").find(".main").text(moment(a).subtract(30,"day").format("MM.DD")),$(".start-date").find(".year").text(moment(a).subtract(30,"day").format("YYYY")),$(".start-date").data("timestamp",moment(a).subtract(30,"day").format("x")));var i=$(".start-date").data("timestamp"),o=$(".end-date").data("timestamp");$(".select-date").removeClass("date-opened"),t.getHistoryData(s,"",i,o)},cancel:function(){$(".select-date").removeClass("date-opened")}}))});var e=0;$(window).on("scroll",function(){e&&clearTimeout(e),e=setTimeout(function(){var e=window.scrollY,a=window.innerHeight,i=document.body.offsetHeight;if(e+a>i-.1*a&&!r&&"history"===t.action){var o=$(".start-date").data("timestamp"),d=$(".end-date").data("timestamp"),n=$("tbody tr[data-pos]:last").data("pos");t.getHistoryData(s,n,o,d)}},60)})}}});