//
//  MVVMTableViewCell.swift
//  MVCvsMVVM
//
//  Created by Ferry Julian on 18/03/23.
//

import UIKit

class MVVMTableViewCell: UITableViewCell {
    
    static let identifier = "MVVMTableViewCell"
    
    var mvvmViewModel: MVVMViewModel! {
        didSet {
            textLabel?.text = mvvmViewModel.name
            detailTextLabel?.text = mvvmViewModel.level
        }
    }

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .subtitle, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
