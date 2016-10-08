define(function(require,exports,module){function t(t){return xqBridge.hideLoading(),t&&6e4==t.result_code?!0:void(!t||70005!=t.result_code&&70006!=t.result_code?xqBridge.alert(t&&(t.error_description||t.msg)?{message:t.msg||t.error_description,success:function(){xqBridge.redirect({type:"POP_CANCEL"})}}:{message:"网络错误",success:function(){xqBridge.redirect({type:"POP_CANCEL"})}}):xqBridge.redirect({type:"POP_CANCEL"}))}xqBridge.trackEvent("transfer-history"),module.exports={init:function(){var e=this;this.initScroll(),Util.checkAndInit({success:function(s){if(t(s)){var i=s.result_data,r=Util.getBroker(i,Util.parseParams().tid);r&&(e.broker=r,e.aid=r.aid,e.tid=r.tid,xqBridge.getUserInfo({success:function(t){e.uid=t.uid,e.getBank(function(){e.getTransferList()})}}))}},cancel:function(){xqBridge.redirect({type:"POP_CANCEL"})}})},getTransferList:function(t){var e=this;if(e.isLoading)return!1;e.isLoading=!0;var s={aid:e.aid,tid:e.tid,uid:e.uid,cur:"CNY",bank_no:e.bank.bank_no,pos:t||"",row:20};xqBridge.request({url:"/tc/snowx/bank/transfer/query.json",data:s,type:"GET",success:function(s){if(6e4==s.result_code){if(e.last_pos=s.last_pos,s.result_data){var i=e.fixData(s.result_data);e.renderHtml(i,t)}else{var r='<tr><td class="noData" colspan="4"><div class="img"></div><p>暂无转账记录</p></td></tr>';$(".transfer-history tbody").html(r)}e.myScroll.refresh()}else Util.showError(s.msg)},error:function(t){console.log(t)},complete:function(){e.isLoading=!1,xqBridge.hideLoading()}})},getBank:function(t){var e=this;xqBridge.request({url:"/tc/snowx/bank/query.json",data:{aid:e.aid,uid:e.uid,tid:e.tid},type:"GET",success:function(s){var i=_.first(s.result_data);i?(e.bank=i,t&&t()):(xqBridge.hideLoading(),xqBridge.alert({message:s.msg||"此券商暂不支持银证转账",success:function(){xqBridge.redirect({type:"POP_CANCEL"})}}))},error:function(){xqBridge.hideLoading()}})},fixData:function(t){var e=[];return _.each(t,function(t){var s={};s.type=t.trans_name,s.amount=parseFloat(t.occur_balance).toFixed(2),s.state=t.entrust_name,s.code=t.entrust_status,t.ctime&&(t.ctime+="",t.ctime.length>=8&&(s.year=t.ctime.substr(0,4),s.date=t.ctime.substr(4,2).replace(/^0/g,"")+"月"+t.ctime.substr(6,2).replace(/^0/g,"")+"日"),14==t.ctime.length&&(s.time=t.ctime.substr(8,2)+":"+t.ctime.substr(10,2)+":"+t.ctime.substr(12,2))),e.push(s)}),e},renderHtml:function(t,e){var s=this,i="";t.length&&(e&&$("tr[data-year]").last().data("year")==t[0].year||(i+='<tr class="year-title"><td colspan="3">'+(t[0].year||"----")+"年</td></tr>"),_.each(t,function(e,r){var a="";r>0&&t[r-1].year!=e.year&&(a+='<tr class="year-title"><td colspan="3">'+e.year||"----年</td></tr>"),a+='<tr data-year="'+(e.year||" ")+'" class="odd">',a+='<td class="op">'+e.type,a+="PAMID"===s.tid?0==e.code?'<div class="tiny">成功</div>':99==e.code?'<div class="tiny">处理中</div>':'<div class="tiny"><i class="err"></i>失败</div>':'<div class="tiny">'+e.state+"</div>",a+="</td>",a+='<td class="amount">'+e.amount+"<br/>&nbsp;</td>",a+='<td class="time">'+(e.date||"--月--日")+'<div class="tiny">'+(e.time||"&nbsp;")+"</div></td>",a+="</tr>","PAMID"===s.tid&&0!=e.code&&99!=e.code&&(a+='<tr class ="even">',a+='<td colspan="3">',a+="<div>"+e.state+"</div>",a+="</td>",a+="</tr>"),i+=a})),t.length<20?(i+=e||0!=t.length?'<tr class="update-history"><td colspan="3">无更多记录</td></tr>':'<tr><td class="noData" colspan="4"><div class="img"></div><p>暂无转账记录</p></td></tr>',this.last_pos="end"):20==t.length&&(i+='<tr class="update-history"><td colspan="3">加载中...</td></tr>'),e?$(".transfer-history .update-history").replaceWith(i):$(".transfer-history tbody").html(i)},initScroll:function(){function t(t){n||t.preventDefault()}function e(){$(".transfer-history .year-title").each(function(t){$(this).offset().top<35?0==$("#sticky-year"+t).length&&($(this).clone().attr("id","sticky-year"+t).appendTo(".clone"),$("#sticky-year"+t).prev().hide()):$("#sticky-year"+t).prev().show().end().remove()})}var s=this;if(window.iScroll&&!this.myScroll){var i=$("#pullDown"),r=$(".pullDownText"),a=i.outerHeight(),n=navigator.userAgent.indexOf("iPhone")>-1;$(".pullDownTime span").html(moment(new Date).format("YYYY-MM-DD HH:mm:ss")),this.myScroll=new window.iScroll("wrapper",{useTransition:!n,onBeforeScrollStart:t,topOffset:a,preventDefault:!n,onRefresh:function(){i.hasClass("loading")&&(i.removeClass("loading"),r.html("下拉刷新"))},onScrollMove:function(){this.y>5&&!i.hasClass("flip")?(i.addClass("flip"),r.html("释放刷新"),this.minScrollY=0):this.y<5&&i.hasClass("flip")&&(i.removeClass("flip"),r.html("下拉刷新"),this.minScrollY=-a),e()},onScrollEnd:function(){i.hasClass("flip")&&this.y>=0?(i.addClass("loading"),r.html("数据载入中..."),s.getTransferList()):e(),this.y<this.maxScrollY+10&&"end"!=s.last_pos&&s.last_pos&&s.getTransferList(s.last_pos)}})}}}});