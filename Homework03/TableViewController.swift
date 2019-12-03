//
//  TableViewController.swift
//  Homework03
//
//  Created by SQ on 12/3/19.
//  Copyright © 2019 SQ. All rights reserved.
//

import UIKit

struct Posting {
    var profile: UIImage?
    var name : String?
    var place : String?
    var postImage : UIImage?
    var status : String?
    var likeAmount : Int?
    var commentAmount : Int?
    var shareAmount : Int?
    
}

class TableViewController: UITableViewController {
    var str = "KSHRD is Korea Software HRD Center. Basic course 40 students. Advacnce course 25 students."
        var data = [
            Posting(profile: UIImage(named: "1"), name: "ABC UC", place: "Now Phnom Penh", postImage: UIImage(named: "2"), status: "KSHRD is Korea Software HRD Center. Basic course 40 students. Advacnce course 25 students. KSHRD is Korea Software HRD Center. Basic course 40 students. Advacnce course 25 students.", likeAmount: 10, commentAmount: 20, shareAmount: 30),
            Posting(profile: UIImage(named: "3"), name: "Sok Hok", place: "Sep 01, 2019", postImage: nil, status: "KSHRD", likeAmount: 1, commentAmount: 1, shareAmount: 0),
            Posting(profile: UIImage(named: "4"), name: "Nita", place: "Kompot 2019", postImage: UIImage(named: "5"), status: "KSHRD is Korea Software HRD Center. Basic course 40 students. Advacnce course 25 students.", likeAmount: 0, commentAmount: 20, shareAmount: 1),
            Posting(profile: UIImage(named: "5"), name: "Mazer", place: "Aug 10, 2019", postImage: nil, status: "Korea Software HRD Center.", likeAmount: 1, commentAmount: 1, shareAmount: 0),
            Posting(profile: UIImage(named: "6"), name: "Kitty", place: "Jan 01, 2019", postImage: nil, status: "KSHRD is Korea Software HRD Center. Basic course 40 students. Advacnce course 25 students.", likeAmount: 0, commentAmount: 20, shareAmount: 1)
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return data.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if (data[indexPath.row].postImage == nil){
            let cell = Bundle.main.loadNibNamed("PostStatusTableViewCell", owner: self, options: nil)?.first as! PostStatusTableViewCell
                cell.profileImageView.image = data[indexPath.row].profile
                cell.smallProfileImageView.image = data[indexPath.row].profile
            cell.usernameLabel.text = data[indexPath.row].name
                cell.placeLabel.text = data[indexPath.row].place
                cell.statusLabel.text = data[indexPath.row].status
                let like = data[indexPath.row].likeAmount
                let comment = data[indexPath.row].commentAmount
                let share = data[indexPath.row].shareAmount
                if ( like == 0){
                    cell.reactionImageView.isHidden = true
                    cell.likeLabel.isHidden = true
                }
                else{
                    cell.likeLabel.text = "\(like!) \(like==1 ? "Like":"Likes")"
                }
                if (comment == 0 && share == 0){
                    cell.commentShareLabel.isHidden = true
                }
                else{
                    if(comment == 0){
                        cell.commentShareLabel.text = "\(share!) \(share==1 ? "Share":"Shares")"
                    }
                    else if (share == 0){
                        cell.commentShareLabel.text = "\(comment!) \(comment==1 ? "Comment":"Comments")"
                    }
                    else{
                        cell.commentShareLabel.text = "\(comment!) \(comment==1 ? "Comment":"Comments") & \(share!) \(share==1 ? "Share":"Shares")"
                    }
                }
            return cell
        }
        else {
            let cell = Bundle.main.loadNibNamed("PostImageTableViewCell", owner: self, options: nil)?.first as! PostImageTableViewCell
            
            cell.profileImageView.image = data[indexPath.row].profile
            cell.smallProfileImageView.image = data[indexPath.row].profile
            cell.userNameLabel.text = data[indexPath.row].name
            cell.placeLabel.text = data[indexPath.row].place
            cell.statusLabel.text = data[indexPath.row].status
            cell.postImageView.image = data[indexPath.row].postImage
            let like = data[indexPath.row].likeAmount
            let comment = data[indexPath.row].commentAmount
            let share = data[indexPath.row].shareAmount
            if ( like == 0){
                cell.emojiImageView.isHidden = true
                cell.likeAmountLabel.isHidden = true
            }
            else{
                cell.likeAmountLabel.text = "\(like!) \(like==1 ? "Like":"Likes")"
            }
            if (comment == 0 && share == 0){
                cell.commentShareLabel.isHidden = true
            }
            else{
                if(comment == 0){
                    cell.commentShareLabel.text = "\(share!) \(share==1 ? "Share":"Shares")"
                }
                else if (share == 0){
                    cell.commentShareLabel.text = "\(comment!) \(comment==1 ? "Comment":"Comments")"
                }
                else{
                    cell.commentShareLabel.text = "\(comment!) \(comment==1 ? "Comment":"Comments") & \(share!) \(share==1 ? "Share":"Shares")"
                }
            }
            return cell
        }
    }

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
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
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
}
