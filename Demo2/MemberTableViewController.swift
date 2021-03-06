//
//  MemberTableViewController.swift
//  Demo2
//
//  Created by Chi-Che Hsieh on 2018/7/16.
//  Copyright © 2018年 ppquitmax. All rights reserved.
//

import UIKit

class MemberTableViewController: UITableViewController {
    var members = [Member]()
    struct PropertyKey {
        static let memberCell = "memberCell"
    }
    
    @IBAction func unwindToMembersPage(segue: UIStoryboardSegue) {
        let source = segue.source as? EditViewController
        if let member = source?.member, let row = tableView.indexPathForSelectedRow?.row {
            members[row] = member
        }
        tableView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        members.append(Member(name: "日向仁", imageName: "member01", info: "abc123"))
        members.append(Member(name: "月城飛鳥", imageName: "member02", info: "abc456"))
        members.append(Member(name: "星山吼兒", imageName: "member03", info: "abc789"))
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
        return members.count
    }

    /**/
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "memberCell", for: indexPath) as? MemberTableViewCell

        // Configure the cell...
        let member = members[indexPath.row]
        cell?.nameLabel.text = member.name
        cell?.iconImage.image = UIImage(named: member.imageName)

        return cell!
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

    /**/
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if let row = tableView.indexPathForSelectedRow?.row {
            let infoViewController = segue.destination as? InfoViewController
            infoViewController?.member = members[row]
        }
    }

}
