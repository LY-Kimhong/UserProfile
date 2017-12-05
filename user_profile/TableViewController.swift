//
//  TableViewController.swift
//  user_profile
//
//  Created by LY Kimhong on 12/4/17.
//  Copyright © 2017 LY Kimhong. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    var content2 : Content2TableViewController! = nil
    var segment : UISegmentedControl! = nil
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.tableFooterView = UIView() //hide empty cells
        content2 = Content2TableViewController()

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
        return 3
        
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        var cell: UITableViewCell!
        // stuff in UIView
        if indexPath.row == 0 {
            cell = tableView.dequeueReusableCell(withIdentifier: "PROFILE_CELL", for: indexPath)
        }
        else if indexPath.row == 1{
        
            cell = tableView.dequeueReusableCell(withIdentifier: "SEGMENT_CELL", for: indexPath) as! SegmentTableViewCell
            (cell as! SegmentTableViewCell).profilePage = self
            self.segment = (cell as! SegmentTableViewCell).segment
            
        }
        else{
            if segment.selectedSegmentIndex == 0{
                cell = tableView.dequeueReusableCell(withIdentifier: "CONTENT_CELL", for: indexPath)
            }
            else if segment.selectedSegmentIndex == 1{
                cell = tableView.dequeueReusableCell(withIdentifier: "CONTENT2_CELL", for: indexPath)
            }
        }

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
