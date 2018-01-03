//
//  MainViewController.swift
//  MovieSearch
//
//  Created by Ilias Basha on 1/3/18.
//  Copyright © 2018 Sohail. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet var tableView: UITableView!
    private let client = MovieClient()
    var movies: [Movie]? {
        didSet {
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupNavBar()
        tableView.delegate = self
        tableView.dataSource = self
        
        client.getFeed(from: .nowPlaying) { (result) in
            switch result {
            case .success(let movieFeedResult):
                guard let movieResults = movieFeedResult?.results else { return }
                self.movies = movieResults
                print(movieResults)
            case .failure(let error):
                print("there was an error: \(error)")
            }
        }
    }


    func setupNavBar() {
        navigationController?.navigationBar.prefersLargeTitles = true
        let searchController = UISearchController(searchResultsController: nil)
        navigationItem.searchController = searchController
        navigationItem.hidesSearchBarWhenScrolling = true
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

extension MainViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "movieCell", for: indexPath)
        guard let movies = movies else { return UITableViewCell() }
        let movie = movies[indexPath.row]
        cell.textLabel?.text = movie.title
        return cell
    }
}
