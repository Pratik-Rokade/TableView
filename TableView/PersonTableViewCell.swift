//
//  PersonTableViewCell.swift
//  TableView
//
//  Created by Pratik's Macbook on 21/07/21.
//
//MARK:we wanat to use this cocha touch file to give 
import UIKit

class PersonTableViewCell: UITableViewCell {

    @IBOutlet weak var carName: UILabel!
    @IBOutlet weak var carImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
