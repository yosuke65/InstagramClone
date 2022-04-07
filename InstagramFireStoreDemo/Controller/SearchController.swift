//
//  SearchController.swift
//  InstagramFireStoreDemo
//
//  Created by Yosuke Sakurai on 3/29/22.
//

import UIKit

private let reuseIdentifier = "UserCell"

class SearchController : UITableViewController{
    
    // MARK: - Properties
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureTabelView()
    
    }
    
    // MARK: - Helpers
    
    func configureTabelView() {
        view.backgroundColor = .white
        
        tableView.register(UserCell.self, forCellReuseIdentifier: reuseIdentifier)
        tableView.rowHeight = 64
    }
}

// MARK: - UITableViewDataSource

extension SearchController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath)
        cell.backgroundColor = .white
        return cell
    }
}
