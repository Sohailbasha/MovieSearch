//
//  MainViewController.swift
//  MovieSearch
//
//  Created by Ilias Basha on 1/3/18.
//  Copyright © 2018 Sohail. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupNavBar()
        tableView.delegate = self
        tableView.dataSource = self
    }


    func setupNavBar() {
        navigationController?.navigationBar.prefersLargeTitles = true
        let searchController = UISearchController(searchResultsController: nil)
        navigationItem.searchController = searchController
        navigationItem.hidesSearchBarWhenScrolling = false
    }
  

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
