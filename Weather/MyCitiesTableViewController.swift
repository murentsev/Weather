//
//  MyCitiesTableViewController.swift
//  Weather
//
//  Created by Алексей Муренцев on 24.06.2020.
//  Copyright © 2020 Алексей Муренцев. All rights reserved.
//

import UIKit

class MyCitiesTableViewController: UITableViewController {
    
    @IBAction func addCity(segue: UIStoryboardSegue) {
        guard
            let allCitiesController = segue.source as? AllCitiesTableViewController,
            let indexPath = allCitiesController.tableView.indexPathForSelectedRow
            else { return }
        
        let city = allCitiesController.cities[indexPath.row]
        guard !cities.contains(city) else { return }
        cities.append(city)
        tableView.reloadData()
    }
    
    var cities: [String] = []

    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return cities.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        cell.textLabel?.text = cities[indexPath.row]

        return cell
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            cities.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
}
