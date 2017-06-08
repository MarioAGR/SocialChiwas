//
//  recomTableViewCell.swift
//  finalProject
//
//  Created by Mario Alberto Guillén Rivas on 04/06/17.
//  Copyright © 2017 Mario Alberto Guillén Rivas. All rights reserved.
//

import UIKit

class recomTableViewCell: UITableViewCell {

    //Para usar en la tabla
    @IBOutlet weak var nameR: UILabel!
    @IBOutlet weak var addressR: UILabel!
    @IBOutlet weak var telephoneR: UILabel!
    @IBOutlet weak var scheduleR: UILabel!
    @IBOutlet weak var imgRB: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
