//
//  ViewController.swift
//  AgingPeople
//
//  Created by admin on 10/12/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
   
    
    var names = ["George" , "Betty" , "Fran" , "Joe" , "Helda" , "Winifred" , "Zed" , "Sara" , "Jeffy" , "Abraham" , "Anna" , "Melinda"]
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
       
    }
}
    extension ViewController: UITableViewDataSource, UITableViewDelegate {
         
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return names.count
        }
       
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "tableViewCell", for: indexPath) as! TableViewCell
            let randomAge = Int.random(in: 5...95)
            cell.nameLabel?.text = names[indexPath.row]
            cell.ageLabel?.text = "\(randomAge) years old"
            
            return cell
        }
       
    }

