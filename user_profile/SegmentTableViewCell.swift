//
//  segmentTableViewCell.swift
//  user_profile
//
//  Created by LY Kimhong on 12/4/17.
//  Copyright © 2017 LY Kimhong. All rights reserved.
//

import UIKit

class SegmentTableViewCell: UITableViewCell {
    weak var profilePage: TableViewController! = nil
    @IBOutlet weak var segment: UISegmentedControl!
    
    @IBAction func didChangeSegment(_ sender: Any) {
        profilePage.tableView.reloadData()
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
