define([],function(){return function(s){var e,a=[],n=s||{};return function(s,n){a.push('<!--Created by flynngao on 15/2/28.--><div class="price-info"><label class="stock-current"><span class="current-text">'+jade.escape(null==(e=n?"最新利率(%)":"最新")?"":e)+"</span><span"+jade.cls(["num",s.percentage>0?"stock_up":s.percentage<0?"stock_down":""],[null,!0])+">"+jade.escape(null==(e=s.current||"--")?"":e)+"</span>"),n||a.push("<span"+jade.cls(["per",s.percentage>0?"stock_up":s.percentage<0?"stock_down":""],[null,!0])+">("+jade.escape(null==(e=s.percentStr)?"":e)+"%)</span>"),a.push("</label>"),n||a.push('<label class="rise-stop"><span class="price-text">涨停</span><span class="num stock_up">'+jade.escape(null==(e=s.rise_stop||"--")?"":e)+'</span></label><label class="fall-stop"><span class="price-text">跌停</span><span class="num stock_down">'+jade.escape(null==(e=s.fall_stop||"--")?"":e)+"</span></label>"),a.push("</div>")}.call(this,"data"in n?n.data:"undefined"!=typeof data?data:void 0,"isPurchase"in n?n.isPurchase:"undefined"!=typeof isPurchase?isPurchase:void 0),a.join("")}});