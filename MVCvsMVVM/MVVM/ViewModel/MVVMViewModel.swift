//
//  MVVMViewModel.swift
//  MVCvsMVVM
//
//  Created by Ferry Julian on 18/03/23.
//

import Foundation

struct MVVMViewModel {
    let name: String
    let level: String
    
    init(_ mvvmModel: MVVMModel) {
        name = "\(mvvmModel.firstName) \(mvvmModel.lastName)"
        if mvvmModel.skillLavel <= 20 {
            level = "Newbie Programmer"
        } else if mvvmModel.skillLavel <= 50 {
            level = "Medior Programmer"
        } else {
            level = "Suhu Programmer"
        }
    }
}
