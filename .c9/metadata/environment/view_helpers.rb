{"filter":false,"title":"view_helpers.rb","tooltip":"/view_helpers.rb","undoManager":{"mark":9,"position":9,"stack":[[{"start":{"row":7,"column":5},"end":{"row":8,"column":0},"action":"insert","lines":["",""],"id":2},{"start":{"row":8,"column":0},"end":{"row":8,"column":2},"action":"insert","lines":["  "]},{"start":{"row":8,"column":2},"end":{"row":9,"column":0},"action":"insert","lines":["",""]},{"start":{"row":9,"column":0},"end":{"row":9,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":9,"column":2},"end":{"row":15,"column":5},"action":"insert","lines":["def to_currency(amount)","    if amount.to_s.match(/\\.\\d\\z/)","      \"$#{amount}0\"","    else","      \"$#{amount}\"","    end","  end"],"id":3}],[{"start":{"row":8,"column":0},"end":{"row":8,"column":2},"action":"remove","lines":["  "],"id":4}],[{"start":{"row":9,"column":17},"end":{"row":9,"column":18},"action":"insert","lines":["_"],"id":5},{"start":{"row":9,"column":18},"end":{"row":9,"column":19},"action":"insert","lines":["n"]},{"start":{"row":9,"column":19},"end":{"row":9,"column":20},"action":"insert","lines":["o"]},{"start":{"row":9,"column":20},"end":{"row":9,"column":21},"action":"insert","lines":["_"]}],[{"start":{"row":9,"column":6},"end":{"row":9,"column":21},"action":"remove","lines":["to_currency_no_"],"id":6},{"start":{"row":9,"column":6},"end":{"row":9,"column":27},"action":"insert","lines":["to_currency_no_dollar"]}],[{"start":{"row":11,"column":7},"end":{"row":11,"column":8},"action":"remove","lines":["$"],"id":7}],[{"start":{"row":13,"column":7},"end":{"row":13,"column":8},"action":"remove","lines":["$"],"id":8}],[{"start":{"row":3,"column":7},"end":{"row":3,"column":8},"action":"remove","lines":["$"],"id":9}],[{"start":{"row":5,"column":7},"end":{"row":5,"column":8},"action":"remove","lines":["$"],"id":10}],[{"start":{"row":9,"column":0},"end":{"row":15,"column":5},"action":"remove","lines":["  def to_currency_no_dollar(amount)","    if amount.to_s.match(/\\.\\d\\z/)","      \"#{amount}0\"","    else","      \"#{amount}\"","    end","  end"],"id":11},{"start":{"row":8,"column":0},"end":{"row":9,"column":0},"action":"remove","lines":["",""]},{"start":{"row":7,"column":5},"end":{"row":8,"column":0},"action":"remove","lines":["",""]}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":7,"column":5},"end":{"row":7,"column":5},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":{"row":7,"state":"start","mode":"ace/mode/ruby"}},"timestamp":1570220186590,"hash":"256b80d9a190c3405235af44301615da26120d24"}