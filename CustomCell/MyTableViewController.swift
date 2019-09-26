//
//  MyTableViewController.swift
//  CustomCell
//
//  Created by COE-027 on 25/09/19.
//  Copyright © 2019 COE-027. All rights reserved.
//

import UIKit

class MyTableViewController: UITableViewController {
    
    var arr = [
        [
            "Image":#imageLiteral(resourceName: "b7c37c5a9e"),
            "Name": "Priya",
            "Email":"p123@gmail.com",
            "Mobile":"1234567890"
            
        ],
        [
            "Image":#imageLiteral(resourceName: "b7c37c5a9e"),
            "Name": "Yogesh",
            "Email":"y123@gmail.com",
            "Mobile":"9108765432"
            
        ],
        [
            "Image":#imageLiteral(resourceName: "b7c37c5a9e"),
            "Name": "Kajal",
            "Email":"k123@gmail.com",
            "Mobile":"9807654321"
            
        ],
    
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arr.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCoustomCell", for: indexPath) as! MycustomTableViewCell
        
        cell.imgview.image = arr[indexPath.row]["Image"] as? UIImage
        cell.lblName.text = arr[indexPath.row]["Name"] as? String
        cell.lblEmail.text = arr[indexPath.row]["Email"] as? String
        cell.lblName.text = arr[indexPath.row]["Name"] as? String

        // Configure the cell...

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
