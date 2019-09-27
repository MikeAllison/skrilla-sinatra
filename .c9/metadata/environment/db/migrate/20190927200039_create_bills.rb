{"filter":false,"title":"20190927200039_create_bills.rb","tooltip":"/db/migrate/20190927200039_create_bills.rb","undoManager":{"mark":25,"position":25,"stack":[[{"start":{"row":1,"column":12},"end":{"row":2,"column":0},"action":"insert","lines":["",""],"id":2},{"start":{"row":2,"column":0},"end":{"row":2,"column":4},"action":"insert","lines":["    "]}],[{"start":{"row":2,"column":4},"end":{"row":4,"column":7},"action":"insert","lines":["create_table :merchants do |t|","      t.string :name","    end"],"id":3}],[{"start":{"row":2,"column":18},"end":{"row":2,"column":27},"action":"remove","lines":["merchants"],"id":4},{"start":{"row":2,"column":18},"end":{"row":2,"column":19},"action":"insert","lines":["b"]},{"start":{"row":2,"column":19},"end":{"row":2,"column":20},"action":"insert","lines":["i"]},{"start":{"row":2,"column":20},"end":{"row":2,"column":21},"action":"insert","lines":["l"]},{"start":{"row":2,"column":21},"end":{"row":2,"column":22},"action":"insert","lines":["l"]},{"start":{"row":2,"column":22},"end":{"row":2,"column":23},"action":"insert","lines":["s"]}],[{"start":{"row":3,"column":20},"end":{"row":4,"column":0},"action":"insert","lines":["",""],"id":5},{"start":{"row":4,"column":0},"end":{"row":4,"column":6},"action":"insert","lines":["      "]}],[{"start":{"row":4,"column":6},"end":{"row":7,"column":34},"action":"insert","lines":["validates_presence_of :next_payment_date","  validates_presence_of :amount","  validates_presence_of :description","  validates_presence_of :frequency"],"id":6}],[{"start":{"row":2,"column":30},"end":{"row":3,"column":0},"action":"insert","lines":["",""],"id":7},{"start":{"row":3,"column":0},"end":{"row":3,"column":6},"action":"insert","lines":["      "]}],[{"start":{"row":3,"column":6},"end":{"row":6,"column":28},"action":"insert","lines":["t.date :date","      t.decimal :amount, precision: 10, scale: 2","      t.integer :account_id","      t.integer :merchant_id"],"id":8}],[{"start":{"row":6,"column":28},"end":{"row":7,"column":0},"action":"insert","lines":["",""],"id":9},{"start":{"row":7,"column":0},"end":{"row":7,"column":6},"action":"insert","lines":["      "]}],[{"start":{"row":3,"column":14},"end":{"row":3,"column":18},"action":"remove","lines":["date"],"id":10},{"start":{"row":3,"column":14},"end":{"row":3,"column":31},"action":"insert","lines":["next_payment_date"]}],[{"start":{"row":4,"column":17},"end":{"row":4,"column":23},"action":"remove","lines":["amount"],"id":11},{"start":{"row":4,"column":17},"end":{"row":4,"column":23},"action":"insert","lines":["amount"]}],[{"start":{"row":5,"column":8},"end":{"row":5,"column":15},"action":"remove","lines":["integer"],"id":12},{"start":{"row":5,"column":8},"end":{"row":5,"column":9},"action":"insert","lines":["s"]},{"start":{"row":5,"column":9},"end":{"row":5,"column":10},"action":"insert","lines":["t"]},{"start":{"row":5,"column":10},"end":{"row":5,"column":11},"action":"insert","lines":["r"]},{"start":{"row":5,"column":11},"end":{"row":5,"column":12},"action":"insert","lines":["i"]},{"start":{"row":5,"column":12},"end":{"row":5,"column":13},"action":"insert","lines":["n"]},{"start":{"row":5,"column":13},"end":{"row":5,"column":14},"action":"insert","lines":["g"]}],[{"start":{"row":5,"column":16},"end":{"row":5,"column":26},"action":"remove","lines":["account_id"],"id":13},{"start":{"row":5,"column":16},"end":{"row":5,"column":27},"action":"insert","lines":["description"]}],[{"start":{"row":6,"column":0},"end":{"row":12,"column":34},"action":"remove","lines":["      t.integer :merchant_id","      ","      t.string :name","      validates_presence_of :next_payment_date","  validates_presence_of :amount","  validates_presence_of :description","  validates_presence_of :frequency"],"id":14}],[{"start":{"row":5,"column":27},"end":{"row":6,"column":0},"action":"remove","lines":["",""],"id":15}],[{"start":{"row":3,"column":0},"end":{"row":4,"column":48},"action":"remove","lines":["      t.date :next_payment_date","      t.decimal :amount, precision: 10, scale: 2"],"id":16},{"start":{"row":3,"column":0},"end":{"row":4,"column":0},"action":"remove","lines":["",""]}],[{"start":{"row":3,"column":27},"end":{"row":4,"column":0},"action":"insert","lines":["",""],"id":17},{"start":{"row":4,"column":0},"end":{"row":4,"column":6},"action":"insert","lines":["      "]},{"start":{"row":4,"column":6},"end":{"row":4,"column":7},"action":"insert","lines":["t"]},{"start":{"row":4,"column":7},"end":{"row":4,"column":8},"action":"insert","lines":["."]},{"start":{"row":4,"column":8},"end":{"row":4,"column":9},"action":"insert","lines":["i"]},{"start":{"row":4,"column":9},"end":{"row":4,"column":10},"action":"insert","lines":["n"]},{"start":{"row":4,"column":10},"end":{"row":4,"column":11},"action":"insert","lines":["t"]},{"start":{"row":4,"column":11},"end":{"row":4,"column":12},"action":"insert","lines":["e"]},{"start":{"row":4,"column":12},"end":{"row":4,"column":13},"action":"insert","lines":["r"]}],[{"start":{"row":4,"column":13},"end":{"row":4,"column":14},"action":"insert","lines":[" "],"id":18}],[{"start":{"row":4,"column":14},"end":{"row":4,"column":15},"action":"insert","lines":[":"],"id":19},{"start":{"row":4,"column":15},"end":{"row":4,"column":16},"action":"insert","lines":["r"]},{"start":{"row":4,"column":16},"end":{"row":4,"column":17},"action":"insert","lines":["e"]},{"start":{"row":4,"column":17},"end":{"row":4,"column":18},"action":"insert","lines":["q"]}],[{"start":{"row":4,"column":17},"end":{"row":4,"column":18},"action":"remove","lines":["q"],"id":20},{"start":{"row":4,"column":16},"end":{"row":4,"column":17},"action":"remove","lines":["e"]},{"start":{"row":4,"column":15},"end":{"row":4,"column":16},"action":"remove","lines":["r"]}],[{"start":{"row":4,"column":15},"end":{"row":4,"column":16},"action":"insert","lines":["f"],"id":21},{"start":{"row":4,"column":16},"end":{"row":4,"column":17},"action":"insert","lines":["r"]},{"start":{"row":4,"column":17},"end":{"row":4,"column":18},"action":"insert","lines":["e"]},{"start":{"row":4,"column":18},"end":{"row":4,"column":19},"action":"insert","lines":["q"]}],[{"start":{"row":4,"column":15},"end":{"row":4,"column":19},"action":"remove","lines":["freq"],"id":22},{"start":{"row":4,"column":15},"end":{"row":4,"column":24},"action":"insert","lines":["frequency"]}],[{"start":{"row":4,"column":13},"end":{"row":4,"column":14},"action":"insert","lines":["g"],"id":23},{"start":{"row":4,"column":14},"end":{"row":4,"column":15},"action":"insert","lines":["e"]},{"start":{"row":4,"column":15},"end":{"row":4,"column":16},"action":"insert","lines":["r"]}],[{"start":{"row":4,"column":12},"end":{"row":4,"column":13},"action":"remove","lines":["r"],"id":24}],[{"start":{"row":4,"column":17},"end":{"row":4,"column":26},"action":"remove","lines":["frequency"],"id":25},{"start":{"row":4,"column":17},"end":{"row":4,"column":18},"action":"insert","lines":["b"]},{"start":{"row":4,"column":18},"end":{"row":4,"column":19},"action":"insert","lines":["i"]},{"start":{"row":4,"column":19},"end":{"row":4,"column":20},"action":"insert","lines":["l"]},{"start":{"row":4,"column":20},"end":{"row":4,"column":21},"action":"insert","lines":["l"]},{"start":{"row":4,"column":21},"end":{"row":4,"column":22},"action":"insert","lines":["_"]},{"start":{"row":4,"column":22},"end":{"row":4,"column":23},"action":"insert","lines":["f"]},{"start":{"row":4,"column":23},"end":{"row":4,"column":24},"action":"insert","lines":["r"]},{"start":{"row":4,"column":24},"end":{"row":4,"column":25},"action":"insert","lines":["e"]}],[{"start":{"row":4,"column":25},"end":{"row":4,"column":26},"action":"insert","lines":["q"],"id":26},{"start":{"row":4,"column":26},"end":{"row":4,"column":27},"action":"insert","lines":["u"]},{"start":{"row":4,"column":27},"end":{"row":4,"column":28},"action":"insert","lines":["e"]},{"start":{"row":4,"column":28},"end":{"row":4,"column":29},"action":"insert","lines":["n"]},{"start":{"row":4,"column":29},"end":{"row":4,"column":30},"action":"insert","lines":["c"]},{"start":{"row":4,"column":30},"end":{"row":4,"column":31},"action":"insert","lines":["y"]}],[{"start":{"row":4,"column":31},"end":{"row":4,"column":32},"action":"insert","lines":["_"],"id":27},{"start":{"row":4,"column":32},"end":{"row":4,"column":33},"action":"insert","lines":["i"]},{"start":{"row":4,"column":33},"end":{"row":4,"column":34},"action":"insert","lines":["d"]}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":5,"column":7},"end":{"row":5,"column":7},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1569616453150,"hash":"d95a922d306a32dfd22e3a58ba391d19fbf4de78"}