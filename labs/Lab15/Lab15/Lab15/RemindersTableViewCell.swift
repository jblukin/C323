//
//  RemindersTableViewCellController.swift
//  Lab15
//
//  Created by Jonah Lukin on 3/3/20.
//  Copyright © 2020 C323 / Spring2020. All rights reserved.
//

import UIKit

class RemindersTableViewCell: UITableViewCell {

	@IBOutlet weak var reminderLabel: UILabel!
	@IBOutlet weak var categoryLabel: UILabel!
	@IBOutlet weak var dateTimeLabel: UILabel!
	@IBOutlet weak var completedFlagLabel: UILabel!
	
	
	override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
