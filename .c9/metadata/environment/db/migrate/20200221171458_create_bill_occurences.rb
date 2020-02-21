{"filter":false,"title":"20200221171458_create_bill_occurences.rb","tooltip":"/db/migrate/20200221171458_create_bill_occurences.rb","undoManager":{"mark":23,"position":23,"stack":[[{"start":{"row":1,"column":12},"end":{"row":2,"column":0},"action":"insert","lines":["",""],"id":2},{"start":{"row":2,"column":0},"end":{"row":2,"column":4},"action":"insert","lines":["    "]}],[{"start":{"row":2,"column":4},"end":{"row":4,"column":23},"action":"insert","lines":["t.date :ending_date","      t.decimal :amount, precision: 10, scale: 2","      t.boolean :credit"],"id":3}],[{"start":{"row":3,"column":4},"end":{"row":3,"column":6},"action":"remove","lines":["  "],"id":4}],[{"start":{"row":4,"column":4},"end":{"row":4,"column":6},"action":"remove","lines":["  "],"id":5}],[{"start":{"row":2,"column":6},"end":{"row":2,"column":7},"action":"insert","lines":["p"],"id":6},{"start":{"row":2,"column":7},"end":{"row":2,"column":8},"action":"insert","lines":["o"]},{"start":{"row":2,"column":8},"end":{"row":2,"column":9},"action":"insert","lines":["s"]},{"start":{"row":2,"column":9},"end":{"row":2,"column":10},"action":"insert","lines":["t"]},{"start":{"row":2,"column":10},"end":{"row":2,"column":11},"action":"insert","lines":["_"]}],[{"start":{"row":2,"column":10},"end":{"row":2,"column":11},"action":"insert","lines":["i"],"id":7},{"start":{"row":2,"column":11},"end":{"row":2,"column":12},"action":"insert","lines":["n"]},{"start":{"row":2,"column":12},"end":{"row":2,"column":13},"action":"insert","lines":["g"]}],[{"start":{"row":2,"column":13},"end":{"row":2,"column":14},"action":"remove","lines":["_"],"id":8},{"start":{"row":2,"column":12},"end":{"row":2,"column":13},"action":"remove","lines":["g"]},{"start":{"row":2,"column":11},"end":{"row":2,"column":12},"action":"remove","lines":["n"]},{"start":{"row":2,"column":10},"end":{"row":2,"column":11},"action":"remove","lines":["i"]},{"start":{"row":2,"column":9},"end":{"row":2,"column":10},"action":"remove","lines":["t"]},{"start":{"row":2,"column":8},"end":{"row":2,"column":9},"action":"remove","lines":["s"]},{"start":{"row":2,"column":7},"end":{"row":2,"column":8},"action":"remove","lines":["o"]},{"start":{"row":2,"column":6},"end":{"row":2,"column":7},"action":"remove","lines":["p"]}],[{"start":{"row":2,"column":17},"end":{"row":2,"column":18},"action":"remove","lines":["g"],"id":9},{"start":{"row":2,"column":16},"end":{"row":2,"column":17},"action":"remove","lines":["n"]},{"start":{"row":2,"column":15},"end":{"row":2,"column":16},"action":"remove","lines":["i"]},{"start":{"row":2,"column":14},"end":{"row":2,"column":15},"action":"remove","lines":["d"]},{"start":{"row":2,"column":13},"end":{"row":2,"column":14},"action":"remove","lines":["n"]},{"start":{"row":2,"column":12},"end":{"row":2,"column":13},"action":"remove","lines":["e"]}],[{"start":{"row":2,"column":12},"end":{"row":2,"column":13},"action":"insert","lines":["p"],"id":10},{"start":{"row":2,"column":13},"end":{"row":2,"column":14},"action":"insert","lines":["p"]}],[{"start":{"row":2,"column":13},"end":{"row":2,"column":14},"action":"remove","lines":["p"],"id":11}],[{"start":{"row":2,"column":13},"end":{"row":2,"column":14},"action":"insert","lines":["o"],"id":12},{"start":{"row":2,"column":14},"end":{"row":2,"column":15},"action":"insert","lines":["s"]},{"start":{"row":2,"column":15},"end":{"row":2,"column":16},"action":"insert","lines":["t"]},{"start":{"row":2,"column":16},"end":{"row":2,"column":17},"action":"insert","lines":["i"]},{"start":{"row":2,"column":17},"end":{"row":2,"column":18},"action":"insert","lines":["n"]},{"start":{"row":2,"column":18},"end":{"row":2,"column":19},"action":"insert","lines":["g"]}],[{"start":{"row":1,"column":12},"end":{"row":2,"column":0},"action":"insert","lines":["",""],"id":13},{"start":{"row":2,"column":0},"end":{"row":2,"column":4},"action":"insert","lines":["    "]}],[{"start":{"row":2,"column":4},"end":{"row":2,"column":30},"action":"insert","lines":["create_table :bills do |t|"],"id":14}],[{"start":{"row":3,"column":4},"end":{"row":3,"column":6},"action":"insert","lines":["  "],"id":15}],[{"start":{"row":4,"column":4},"end":{"row":4,"column":6},"action":"insert","lines":["  "],"id":16}],[{"start":{"row":5,"column":4},"end":{"row":5,"column":6},"action":"insert","lines":["  "],"id":17}],[{"start":{"row":6,"column":2},"end":{"row":7,"column":0},"action":"insert","lines":["",""],"id":18},{"start":{"row":7,"column":0},"end":{"row":7,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":6,"column":2},"end":{"row":6,"column":4},"action":"insert","lines":["  "],"id":19}],[{"start":{"row":6,"column":4},"end":{"row":6,"column":5},"action":"insert","lines":["e"],"id":20},{"start":{"row":6,"column":5},"end":{"row":6,"column":6},"action":"insert","lines":["n"]},{"start":{"row":6,"column":6},"end":{"row":6,"column":7},"action":"insert","lines":["d"]}],[{"start":{"row":2,"column":18},"end":{"row":2,"column":23},"action":"remove","lines":["bills"],"id":21},{"start":{"row":2,"column":18},"end":{"row":2,"column":19},"action":"insert","lines":["b"]},{"start":{"row":2,"column":19},"end":{"row":2,"column":20},"action":"insert","lines":["i"]},{"start":{"row":2,"column":20},"end":{"row":2,"column":21},"action":"insert","lines":["l"]},{"start":{"row":2,"column":21},"end":{"row":2,"column":22},"action":"insert","lines":["l"]},{"start":{"row":2,"column":22},"end":{"row":2,"column":23},"action":"insert","lines":["_"]}],[{"start":{"row":2,"column":18},"end":{"row":2,"column":23},"action":"remove","lines":["bill_"],"id":22},{"start":{"row":2,"column":18},"end":{"row":2,"column":34},"action":"insert","lines":["bill_occurrences"]}],[{"start":{"row":2,"column":34},"end":{"row":2,"column":35},"action":"insert","lines":["r"],"id":23},{"start":{"row":2,"column":35},"end":{"row":2,"column":36},"action":"insert","lines":["a"]},{"start":{"row":2,"column":36},"end":{"row":2,"column":37},"action":"insert","lines":["k"]},{"start":{"row":2,"column":37},"end":{"row":2,"column":38},"action":"insert","lines":["e"]}],[{"start":{"row":2,"column":37},"end":{"row":2,"column":38},"action":"remove","lines":["e"],"id":24},{"start":{"row":2,"column":36},"end":{"row":2,"column":37},"action":"remove","lines":["k"]},{"start":{"row":2,"column":35},"end":{"row":2,"column":36},"action":"remove","lines":["a"]},{"start":{"row":2,"column":34},"end":{"row":2,"column":35},"action":"remove","lines":["r"]}],[{"start":{"row":3,"column":21},"end":{"row":3,"column":22},"action":"remove","lines":["_"],"id":25},{"start":{"row":3,"column":20},"end":{"row":3,"column":21},"action":"remove","lines":["g"]},{"start":{"row":3,"column":19},"end":{"row":3,"column":20},"action":"remove","lines":["n"]},{"start":{"row":3,"column":18},"end":{"row":3,"column":19},"action":"remove","lines":["i"]},{"start":{"row":3,"column":17},"end":{"row":3,"column":18},"action":"remove","lines":["t"]},{"start":{"row":3,"column":16},"end":{"row":3,"column":17},"action":"remove","lines":["s"]},{"start":{"row":3,"column":15},"end":{"row":3,"column":16},"action":"remove","lines":["o"]},{"start":{"row":3,"column":14},"end":{"row":3,"column":15},"action":"remove","lines":["p"]}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":5,"column":19},"end":{"row":5,"column":19},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1582306865388,"hash":"821084735aa45ea25f79fa49452df64159f00339"}