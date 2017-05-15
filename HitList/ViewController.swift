//
//  ViewController.swift
//  HitList
//
//  Created by Ainor Syahrizal on 15/05/2017.
//  Copyright © 2017 Ainor Syahrizal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var names: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        title = "The List"
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")

    }

    @IBAction func addName(_ sender: UIBarButtonItem) {
    }
 

}

// MARK: UITableViewDataSource
extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
    cell.textLabel?.text = names[indexPath.row]
        return cell
    }
    
}

