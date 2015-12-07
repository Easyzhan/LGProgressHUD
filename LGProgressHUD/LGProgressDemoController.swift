//
//  LGProgressDemoController.swift
//  LGProgressHUD
//
//  Created by jamy on 12/5/15.
//  Copyright © 2015 jamy. All rights reserved.
//

import UIKit

class LGProgressDemoController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "LGProgressHUD"
        tableView.tableFooterView = UIView(frame: CGRectZero)
        
        let disbutton = UIBarButtonItem(title: "dismiss", style: .Done, target: self, action: "dismiss")
        navigationItem.rightBarButtonItem = disbutton
    }
    
    func dismiss() {
        LGProgressHUD.dismiss(self.view)
    }
    
    // MARK: - Table view data source

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 10
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("progress", forIndexPath: indexPath)
        
        switch indexPath.row{
        case 0:
           cell.textLabel?.text = "hud for system mode"
        case 1:
            cell.textLabel?.text = "hud for custom mode"
        case 2:
            cell.textLabel?.text = "hud for success no title"
        case 3:
            cell.textLabel?.text = "hud for success with title"
        case 4:
            cell.textLabel?.text = "hud for warning"
        case 5:
            cell.textLabel?.text = "hud for fail!"
        case 6:
            cell.textLabel?.text = "hud for custom image"
        case 7:
            cell.textLabel?.text = "hud for show in key window"
        case 8:
            cell.textLabel?.text = "hud for hidden after delay"
        case 9:
            cell.textLabel?.text = "hud for change other"
        default:
            break
        }
        
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        switch indexPath.row {
        case 0:
           LGProgressHUD.showHud(IndeficatorType: LGProgressIndeficatorType.System, view: self.view)
        case 1:
            LGProgressHUD.showHud(IndeficatorType: LGProgressIndeficatorType.Custom, view: self.view)
        case 2:
            LGProgressHUD.showHud(style: showStyle.Success, view: self.view)
        case 3:
            LGProgressHUD.showHud("connectting to service...", style: showStyle.Success, view: self.view)
        case 4:
            LGProgressHUD.showHud(style: showStyle.Warning, view: self.view)
        case 5:
            LGProgressHUD.showHud("network error!!!", style: showStyle.Error, view: self.view)
        case 6:
            LGProgressHUD.showHud("add a custom image hear", style: showStyle.CustomImage(imageName: "info"), view: self.view)
        case 7:
            LGProgressHUD.showHud("show in key windows", style: showStyle.Success)
        case 8:
            LGProgressHUD.showHud(2.0, title: "hidden after delay", style: showStyle.Warning, view: self.view)
        case 9:
            LGProgressHUD.showHud("hud for change other", style: showStyle.Warning, view: self.view)
            performSelector("changeOther", withObject: nil, afterDelay: 3.0)
        default:
            break
        }
    }
    
    func changeOther() {
        LGProgressHUD.showHud("change success", style: showStyle.Success, view: self.view)
    }
}

