define(function(require,exports,module){function t(t){return xqBridge.hideLoading(),t&&6e4==t.result_code?!0:void(!t||70005!=t.result_code&&70006!=t.result_code?xqBridge.alert(t&&(t.error_description||t.msg)?{message:t.msg||t.error_description,success:function(){xqBridge.redirect({type:"POP_CANCEL"})}}:{message:"网络错误",success:function(){xqBridge.redirect({type:"POP_CANCEL"})}}):xqBridge.redirect({type:"POP_CANCEL"}))}xqBridge.trackEvent("trade-history");{var e=require("template/trade/trade-history-list-pingan.js"),s=require("template/trade/new-stock-list.js"),o=require("trade/orders-pingan.js"),i=Util.parseParams(),a=i.aid,r=i.tid;navigator.userAgent.indexOf("iPhone")>-1}module.exports={init:function(){xqBridge.showLoading();var t=this,e="order";Util.appVersion()<7.7&&(e="history",$(".history-type button[data-action=order]").hide().siblings().css("width","33.3%")),t.action=i.action||e,this.checkBind(function(){t.bindEvent(),$(".history-type button[data-action="+t.action+"]").trigger("click")})},checkBind:function(e){Util.checkAndInit({isIB:!1,success:function(s){if(t(s)){var o=userInfo.brokerList,i=Util.getBroker(o,Util.parseParams().tid);a=i.aid,r=i.tid,e()}},cancel:function(){xqBridge.redirect({type:"POP_CANCEL"})}})},getNewStockData:function(){{var t=this;(new Date).getMilliseconds()}xqBridge.request({url:"/tc/snowx/newshare/list.json",type:"GET",data:{aid:a,tid:r},success:function(t){if(t.result_data&&Object.keys(t.result_data).length){var e=[];_.each(t.result_data,function(t){e.push(t)}),e=e.sort(function(t,e){return t.onl_subbeg_date&&e.onl_subbeg_date?moment(t.onl_subbeg_date).diff(moment(e.onl_subbeg_date),"days")>0?-1:1:-1}).map(function(t){return"PURCHASE"===t.status?t.onl_subbeg_date_colored=!0:"NUMBER"===t.status?(t.onl_subbeg_date_colored=!0,t.onl_distr_date_colored=!0):"CONFIRM"===t.status||"FINISH"===t.status||"GIVEUP"===t.status||"PARTGIVEUP"===t.status?(t.onl_subbeg_date_colored=!0,t.onl_distr_date_colored=!0,t.onl_lotwiner_stpub_date_colored=!0,t.confirm_day_colored=!0):(t.onl_subbeg_date_colored=!0,t.onl_distr_date_colored=!0,t.onl_lotwiner_stpub_date_colored=!0),["onl_subbeg_date","onl_distr_date","onl_lotwiner_stpub_date","pay_day","confirm_day"].map(function(e){t[e]?("onl_lotwiner_stpub_date"===e&&(t.stpub_date=moment(t[e]).format("YYYY-MM-DD")),t[e]=moment(t[e]).format("MM-DD")):t[e]="--"}),t}),$(".history-list").html(s({data:e})),$(".pay-in").on("click",function(){xqBridge.redirect({url:"/broker/transfer",type:"PUSH"})}),$(".stock-head").on("click",function(){xqBridge.redirect({url:"http://xueqiu.com/broker/new-stock-detail?"+$.param($(this).data("stock")),type:"PUSH"})})}else $(".history-list").html(s());$(".history-list").removeClass("fn-hide")},error:function(){$(".history-list").html(s()),Util.toast.show("请求数据失败")},complete:function(){xqBridge.hideLoading(),$(".pullDownTime span").html(moment(new Date).format("YYYY-MM-DD HH:mm:ss")),t.myScroll.refresh()}})},getHistoryData:function(t){var s=this;return"end"==t||s.isLoading?!1:(s.isLoading=!0,void xqBridge.request({url:"/tc/snowx/transaction/list_history.json",data:{aid:a,tid:r,row:20,pos:t||""},success:function(o){if("60000"===o.result_code){if(t){if(o.result_data.length){var i=$("tr[data-ctime]").last().data("ctime").toString().substr(0,6),a=o.result_data[0].ctime.toString().substr(0,6);o.result_data[0].otherMonth=i!=a}$(".history-list .update-history").replaceWith(e({data:{histories:o.result_data,action:"history-append"}})),$(".history-list").removeClass("fn-hide")}else $(".history-list").html(e({data:{histories:o.result_data,action:"history"}})),$(".history-list").removeClass("fn-hide");s.last_pos=o.result_data&&o.result_data.length<20?"end":o.last_pos}else $(".history-list").html(e({data:{histories:[],action:"history"}})),$(".history-list").removeClass("fn-hide"),Util.toast.show(o.msg)},error:function(){$(".history-list").html(e({data:{histories:[],action:"history"}})),$(".history-list").removeClass("fn-hide")},complete:function(){s.isLoading=!1,xqBridge.hideLoading(),$(".pullDownTime span").html(moment(new Date).format("YYYY-MM-DD HH:mm:ss")),s.myScroll.refresh()}}))},getAccountHistoryData:function(t){var s=this;return"end"==t||s.isLoading?!1:(s.isLoading=!0,void xqBridge.request({url:"/tc/snowx/statement/query.json",data:{aid:a,tid:r,pos:t||"",row:20},success:function(o){if("60000"===o.result_code){if(t){if(o.result_data.length){var i=$("tr[data-occurdate]").last().data("occurdate").toString().substr(0,6),a=o.result_data[0].occur_date.toString().substr(0,6);o.result_data[0].otherMonth=i!=a}$(".history-list .update-history").replaceWith(e({data:{histories:o.result_data,action:"account-append"}})),$(".history-list").removeClass("fn-hide")}else $(".history-list").html(e({data:{histories:o.result_data,action:"account"}})),$(".history-list").removeClass("fn-hide");$("th.commission").on("click",function(t){t.preventDefault(),xqBridge.trackEvent("trade_history_fee"),$(".dialog").fadeIn("fast"),s.overlay.showOverlay()}),$("#close-dialog").on("click",function(t){t.preventDefault(),s.overlay.hideOverlay(),$(".dialog").hide("fast")}),s.last_pos=o.result_data&&o.result_data.length<20?"end":o.last_pos}else $(".history-list").html(e({data:{histories:[],action:"account"}})),$(".history-list").removeClass("fn-hide"),Util.toast.show(o.msg)},error:function(){$(".history-list").html(e({data:{histories:[],action:"account"}})),$(".history-list").removeClass("fn-hide")},complete:function(){s.isLoading=!1,xqBridge.hideLoading(),$(".pullDownTime span").html(moment(new Date).format("YYYY-MM-DD HH:mm:ss")),s.myScroll.refresh()}}))},showIbTip:function(){var t=moment().hour(),e="";moment().minute()>0&&t++,e=t>=20?"交易记录时间："+moment().format("M月DD日")+"20:00-"+moment().add(1,"days").format("M月DD日")+"20:00(北京)":"交易记录时间："+moment().subtract(1,"days").format("M月DD日")+"20:00-"+moment().format("M月DD日")+"20:00(北京)",$(".tip").text(e)},overlay:{showOverlay:function(){$(document).height();$("#overlay").length?$("#overlay").fadeIn("fast"):($("body").append("<div id='overlay'></div>"),$("#overlay").css({height:"100%",opacity:.4,position:"absolute",top:0,left:0,"background-color":"black",width:"100%","z-index":400,display:"none"}).fadeIn("fast").on("touchstart",function(){$(this).fadeOut("fast"),$(".dialog").fadeOut("fast")}))},hideOverlay:function(){$("#overlay").length&&$("#overlay").remove()}},bindEvent:function(){function t(t){l||t.preventDefault()}function e(){$(".histories .date-title").each(function(t){$(this).offset().top<$("#wrapper").offset().top?0==$("#sticky-date"+t).length&&($(this).clone().attr("id","sticky-date"+t).appendTo(".clone"),$("#sticky-date"+t).prev().hide()):$("#sticky-date"+t).prev().show().end().remove()})}var s=this;if($("body").on("click","button.enable",function(){var t=$(this).parent(),e=$(this),o=t.data("time"),i=t.data("oid"),r=Util.appVersion();return 6>r?(Util.showError("客户端版本过低，请先升级客户端。"),!1):e.data("disabled")?!1:(e.data("disabled",!0),xqBridge.showLoading(),void xqBridge.request({url:"/tc/snowx/ad/lucky.json",type:"POST",data:{aid:a,oid:(o+"").substr(0,8)+"-"+i},success:function(e){if(6e4==e.result_code){o+="";var i=o.substr(8,2)+":"+o.substr(10,2);"history"===s.action&&(i=o.substr(4,2)+"."+o.substr(6,2)),t.html(i).addClass("date"),xqBridge.redirect({url:"/broker/lucky-result?"+$.param(e.result_data),type:"PUSH"})}else Util.showError(e.msg)},error:function(){Util.showError("服务出错，请重新尝试")},complete:function(){xqBridge.hideLoading(),e.data("disabled",!1)}}))}),$("body").on("click",".history-type button",function(){switch($(".history-type button").find("span").removeClass("select"),$(this).find("span").addClass("select"),$(".history-list").addClass("fn-hide"),s.action=$(this).data("action"),s.last_pos="","dropDown"!=s.refreshType&&(xqBridge.showLoading(),s.myScroll.scrollTo(0,s.myScroll.minScrollY,0,!1)),s.refreshType="click",$(".clone").html(""),s.action){case"order":o.init();break;case"history":s.getHistoryData();break;case"newStock":s.getNewStockData();break;case"account":s.getAccountHistoryData()}}),window.iScroll&&!this.myScroll){var i=$("#pullDown"),r=$(".pullDownText"),n=i.outerHeight(),l=navigator.userAgent.indexOf("iPhone")>-1;$(".pullDownTime span").html(moment(new Date).format("YYYY-MM-DD HH:mm:ss")),o.myScroll=s.myScroll=new window.iScroll("wrapper",{useTransition:!l,onBeforeScrollStart:t,topOffset:n,preventDefault:!l,onRefresh:function(){i.hasClass("loading")&&(i.removeClass("loading"),r.html("下拉刷新"))},onScrollMove:function(){this.y>5&&!i.hasClass("flip")?(i.addClass("flip"),r.html("释放刷新"),this.minScrollY=0):this.y<5&&i.hasClass("flip")&&(i.removeClass("flip"),r.html("下拉刷新"),this.minScrollY=-n),e()},onScrollEnd:function(){if(i.hasClass("flip")&&this.y>=0?(i.addClass("loading"),r.html("数据载入中..."),s.refreshType="dropDown",$(".history-type .select").parent("button").trigger("click")):e(),this.y<this.maxScrollY+10&&this.y!=this.minScrollY)switch(s.action){case"order":o.getOrders(o.last_pos);break;case"history":s.getHistoryData(s.last_pos);break;case"account":s.getAccountHistoryData(s.last_pos)}}})}}}});