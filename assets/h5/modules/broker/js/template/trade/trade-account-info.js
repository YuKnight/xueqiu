define([],function(){return function(a){var n,e=[],t=a||{};return function(a){e.push('<!--Created by flynngao on 15/2/6.\n--><div class="performance"><div class="performance-info"><div class="title">今日参考盈亏</div><div'+jade.cls(["day-income",""+a.dayIncomeStyle],[null,!0])+">"),e.push("-"==a.day_income_balance||"-%"==a.day_income_rate?'<div class="day-income-balance no-balance">暂无收益</div>':'<div class="day-income-rate">'+jade.escape(null==(n=a.day_income_rate)?"":n)+'</div><div class="day-income-balance">'+jade.escape(null==(n=a.day_income_balance)?"":n)+"</div>"),e.push('</div></div><div class="balance-info"><span class="chart"></span><span class="infos"><div class="info"><i style="background:#4486ed"></i><span>市值'),e.push(0!==a.accountInfo.asset_balance?"<strong>"+jade.escape(null==(n=(a.accountInfo.market_value/a.accountInfo.asset_balance*100).toFixed(2))?"":n)+"</strong>":"<strong>-</strong>"),e.push('%</span></div><div class="info"><i style="background:#6bb232"></i><span>现金'),e.push(0!==a.accountInfo.asset_balance?"<strong>"+jade.escape(null==(n=(100*(1-a.accountInfo.market_value/a.accountInfo.asset_balance)).toFixed(2))?"":n)+"</strong>":"<strong>-</strong>"),e.push('%</span></div></span></div></div><div class="other-info"><div class="info-block"><div class="title">浮动盈亏</div><div'+jade.cls(["nums",""+a.totalIncomeStyle],[null,!0])+">"+jade.escape(null==(n=a.total_income_balance)?"":n)+'</div></div><div class="info-block"><div class="title">总资产</div><div class="nums">'+jade.escape(null==(n=a.accountInfo.asset_balance.toFixed(2))?"":n)+'</div></div><div class="info-block"><div class="title">总市值</div><div class="nums">'+jade.escape(null==(n=a.accountInfo.market_value.toFixed(2))?"":n)+'</div></div><div class="info-block last"><div class="title">可用</div><div class="nums">'+jade.escape(null==(n=a.accountInfo.enable_balance.toFixed(2))?"":n)+'</div></div></div><script>(function () {\n  //饼图逻辑\n  Raphael.fn.pieChart = function (cx, cy, r, data) {\n    var paper = this,\n            rad = Math.PI / 180,\n            chart = this.set();\n\n    function sector(cx, cy, r, startAngle, endAngle, params) {\n      var x1 = cx + r * Math.cos(-startAngle * rad),\n              x2 = cx + r * Math.cos(-endAngle * rad),\n              y1 = cy + r * Math.sin(-startAngle * rad),\n              y2 = cy + r * Math.sin(-endAngle * rad);\n\n      return paper.path(["M", cx, cy, "L", x1, y1, "A", r, r, 0, +(endAngle - startAngle > 180), 0, x2, y2, "z"]).attr(params);\n    }\n\n    var angle = 90,\n            total = 0,\n            start = 0,\n            timer = null,\n            process = function (j) {\n              var value = data[j].weight,\n                      angleplus = 359.9 * value / total,\n                      popangle = angle + (angleplus / 2),\n                      ms = 500,\n                      delta = 30,\n                      bcolor = Raphael.hsb("#fff", 1, 1),\n                      p = sector(cx, cy, r, angle, angle + angleplus, {\n                        fill: data[j].color,\n                        stroke: "#fff",\n                        "stroke-width": 1\n                      });\n              angle += angleplus;\n              chart.push(p);\n              start += .1;\n            };\n    for (var i = 0, ii = data.length; i < ii; i++) {\n      total += data[i].weight;\n    }\n    for (i = 0; i < ii; i++) {\n      process(i);\n    }\n    paper.circle(cx, cy, r * 0.6).attr({\n      \'fill\': "#fff",\n      \'stroke\': \'#fff\'\n    });\n\n\n    return chart;\n  };\n\n  var $container = $(\'.chart\');\n\n  var pheight = 60;\n  var pwidth = 60;\n  var radius = pwidth < pheight ? pwidth / 2 : pheight / 2;\n  var paper = new Raphael($container[0], pwidth, pheight);\n  var market_value = '+jade.escape(null==(n=a.accountInfo.market_value||0)?"":n)+";\n  var asset_balance = "+jade.escape(null==(n=a.accountInfo.asset_balance||0)?"":n)+';\n\n  if (market_value == 0 && asset_balance == 0) {\n    paper.pieChart(pwidth / 2, pheight / 2, radius,\n            [{\n              weight: 100,\n              color: "#ccc"\n            }, {\n              weight: 0,\n              color: "#6bb232"\n            }]);\n\n  } else {\n    paper.pieChart(pwidth / 2, pheight / 2, radius,\n            [{\n              weight: '+jade.escape(null==(n=a.accountInfo.market_value/a.accountInfo.asset_balance*100)?"":n)+',\n              color: "#4486ed"\n            }, {\n              weight: '+jade.escape(null==(n=100*(1-a.accountInfo.market_value/a.accountInfo.asset_balance))?"":n)+',\n              color: "#6bb232"\n            }]);\n  }\n\n})()</script>')}.call(this,"data"in t?t.data:"undefined"!=typeof data?data:void 0),e.join("")}});