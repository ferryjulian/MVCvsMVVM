//
//  Service.swift
//  MVCvsMVVM
//
//  Created by Ferry Julian on 18/03/23.
//

import Foundation

struct Service {
    static func fetchMVCData(_ completion: @escaping (Result<[MVCModel], Error>) -> ()) {
        completion(.success(mvcData))
    }
    
    static func fetchMVVMData(_ completion: @escaping (Result<[MVVMModel], Error>) -> ()) {
        completion(.success(mvvmData))
    }
}

let mvcData = [
    MVCModel(firstName: "Muhammad", lastName: "Syulhan", gender: "Laki-laki", age: 24, skillLavel: 70),
    MVCModel(firstName: "Putri", lastName: "Rahmadewi", gender: "Perempuan", age: 22, skillLavel: 40),
    MVCModel(firstName: "Ferry", lastName: "Julian", gender: "Laki-laki", age: 23, skillLavel: 18)
]

let mvvmData = [
    MVVMModel(firstName: "Muhammad", lastName: "Syulhan", gender: "Laki-laki", age: 24, skillLavel: 70),
    MVVMModel(firstName: "Putri", lastName: "Rahmadewi", gender: "Perempuan", age: 22, skillLavel: 40),
    MVVMModel(firstName: "Ferry", lastName: "Julian", gender: "Laki-laki", age: 23, skillLavel: 18),
]
