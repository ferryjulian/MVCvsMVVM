//
//  MVVMTableViewController.swift
//  MVCvsMVVM
//
//  Created by Ferry Julian on 18/03/23.
//

import UIKit

class MVVMTableViewController: UITableViewController {

    var data: [MVVMModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "MVVM"
        tableView.register(MVVMTableViewCell.self, forCellReuseIdentifier: MVVMTableViewCell.identifier)
        fetchData()
    }

    fileprivate func fetchData() {
        Service.fetchMVVMData { (result) in
            switch result {
            case .success(let data):
                self.data = data
                self.tableView.reloadData()
            case .failure(let err):
                print(err.localizedDescription)
            }
        }
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return data.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: MVVMTableViewCell.identifier, for: indexPath) as! MVVMTableViewCell
        cell.mvvmViewModel = MVVMViewModel(data[indexPath.row])
        return cell
        
    }
}
