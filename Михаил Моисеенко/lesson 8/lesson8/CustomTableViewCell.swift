//
//  CustomTableViewCell.swift
//  lesson8
//
//  Created by Павел Анплеенко on 08/08/16.
//  Copyright © 2016 Pavel Anpleenko. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

	@IBOutlet weak var dolzhnoctLabel: UILabel!
	@IBOutlet weak var vosrast: UILabel!
	@IBOutlet weak var nameLabel: UILabel!
	@IBOutlet weak var politicsImage: UIImageView!
	
	override func awakeFromNib() {
					super.awakeFromNib()
					// Initialization code
	}

	override func setSelected(selected: Bool, animated: Bool) {
					super.setSelected(selected, animated: animated)

					// Configure the view for the selected state
	}

}
