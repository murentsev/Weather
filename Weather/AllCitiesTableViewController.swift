//
//  AllCitiesTableViewController.swift
//  Weather
//
//  Created by Алексей Муренцев on 24.06.2020.
//  Copyright © 2020 Алексей Муренцев. All rights reserved.
//

import UIKit

class AllCitiesTableViewController: UITableViewController {

    
    let cities: [String] = [
    "Moscow",
    "London",
    "New-York"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return cities.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! AllCitiesCell
        
        cell.cityLable.text = cities[indexPath.row]

        return cell
    }
    
}
