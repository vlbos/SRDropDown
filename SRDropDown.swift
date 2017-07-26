
//
//  Copyright © 2017 TEst. All rights reserved.
//

import UIKit

class SRDropDown: UIView,UITableViewDelegate,UITableViewDataSource  {
    
    
    var table: UITableView!
    var textfield:UITextField!
    var arrayDetails:Array<Any>!
    var arrayDescription:Array<Any>!
    var animateDirection:String!
    
    //MARK: - Init
    init() {
        super.init(frame: CGRect.zero)
    }
    
    required init?(coder aDecoder: NSCoder)
    {
        super.init(coder: aDecoder)
    }
    
    override init(frame: CGRect)
    {
        super.init(frame: frame)
    }
    
    
    //MARK: - Public Methods
    
    func showDropDown (textfield: UITextField , height : CGFloat , arrayDetails : Array<Any> , arrayDescription : Array<Any> ,direction : String )  {
        
        self.textfield = textfield;
        self.animateDirection = direction;
        self.arrayDetails = arrayDetails;
        self.arrayDescription = arrayDescription;
        
        self.frame = CGRect(x:textfield.frame.origin.x,y:textfield.frame.origin.y+textfield.frame.height,width:textfield.frame.width,height:100)
        
        self.table = UITableView.init(frame: CGRect(x:0,y:0,width:textfield.frame.width,height:100))
        
        self.table.register(UITableViewCell.self, forCellReuseIdentifier: "MyCell")
        self.table.isScrollEnabled = true;
        self.table.delegate = self
        self.table.dataSource = self
        self.table.flashScrollIndicators()
        
        textfield.superview?.addSubview(self)
        
        self.addSubview(table)
        
    }
    
    //MARK: - Table View Delegate & Datasource
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return self.arrayDetails.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath as IndexPath)
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 40;
    }
    
}
