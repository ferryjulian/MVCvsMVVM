//
//  MVCTableViewCell.swift
//  MVCvsMVVM
//
//  Created by Ferry Julian on 18/03/23.
//

import UIKit

class MVCTableViewCell: UITableViewCell {
    
    static let identifier = "MVCTableViewCell"
    
    var mvcModel: MVCModel! {
        didSet {
            textLabel?.text = "\(mvcModel.firstName) \(mvcModel.lastName)"
            if mvcModel.skillLavel <= 20 {
                detailTextLabel?.text = "Newbie Programmer"
            } else if mvcModel.skillLavel <= 50 {
                detailTextLabel?.text = "Medior Programmer"
            } else {
                detailTextLabel?.text = "Suhu Programmer"
            }
        }
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .subtitle, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
