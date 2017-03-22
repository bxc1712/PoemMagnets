//
//  WordListTableVC.swift
//  PoelarMagnets
//
//  Created by Daniel Martin (RIT Student) on 3/22/17.
//  Copyright © 2017 Daniel Martin. All rights reserved.
//

import UIKit

class BookmarksTableVC: UITableViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Word Packs"
        
        // SHOW ALL OF data
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return AppData.shared.lists.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "simpleCell", for: indexPath)
        
        // Configure the cell...
        cell.textLabel!.text = AppData.shared.lists[indexPath.row]
        return cell
    }
    
    
    
}
