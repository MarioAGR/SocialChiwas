//
//  CustomInfoWindow.swift
//  CustomInfoWindow
//
//  Created by Malek T. on 12/13/15.
//  Copyright © 2015 Medigarage Studios LTD. All rights reserved.
//

import UIKit
import Foundation

class CustomInfoWindow: UIView {

    @IBOutlet var completedYearLbl: UILabel!
    @IBOutlet var architectLbl: UILabel!
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

    @IBAction func btnFav(sender: UIButton) {
        print("Compartido")
    }
    @IBAction func btnCompartir(sender: AnyObject) {
        print("Compartido")
    }
    
    
    @IBAction func btnFavoritos(sender: AnyObject) {
        print("A favoritos")
    }
    func loadView() -> CustomInfoWindow{
        let customInfoWindow = NSBundle.mainBundle().loadNibNamed("CustomInfoWindow", owner: self, options: nil)?[0] as! CustomInfoWindow
        return customInfoWindow
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
