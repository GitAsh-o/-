//
//  TasksTableViewCell.swift
//  課題プロダクト
//
//  Created by 大沼朝陽 on 2023/09/08.
//

import UIKit

class TaskTableViewCell: UITableViewCell {
    
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var dateLabel: UILabel!
    @IBOutlet var markImageView: UIImageView!
    
    var now: Date = Date()
    var tomorrow: Date = Date(timeIntervalSinceNow: +60*60*24)

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
    func setCell(title: String, isMarked: Bool, date1: Date){
        titleLabel.text = title
        if isMarked {
            markImageView.image = UIImage(systemName: "star.fill")
        } else {
            markImageView.image = UIImage(systemName: "star")
        }
        if now > date1{
            dateLabel.text = "アウト！"
            dateLabel.textColor = UIColor.red
        }else if date1 > tomorrow {
            dateLabel.text = "余裕あり"
            dateLabel.textColor = UIColor.black
        }else {
            dateLabel.text = "あと1日"
            dateLabel.textColor = UIColor.orange
        }
    }
    
    
    
    
}
