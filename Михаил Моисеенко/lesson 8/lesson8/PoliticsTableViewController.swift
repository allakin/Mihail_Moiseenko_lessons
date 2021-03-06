//
//  PoliticsTableViewController.swift
//  lesson8
//
//  Created by Павел Анплеенко on 07/08/16.
//  Copyright © 2016 Pavel Anpleenko. All rights reserved.
//

import UIKit

class PoliticsTableViewController: UITableViewController {
	
	// MARK: - Base var classes
	var politicsNames = ["Владимир Путин", "Ангела Мерсель", "Франсуа Аллант", "Синзо Абэ"]
	var politicsImage = ["putin", "merkel", "olland", "abe"]
	var politicsVosrast = ["45", "55", "35", "30"]
	var politicsDoljnoct = ["Президент", "Канслер", "Премье министр", "Премьер министр"]
	

	override func viewDidLoad() {
		super.viewDidLoad()
		
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
	// возвращает количество секций в таблице
	override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
		return 1
	}
	
	// MARK: - NumberOfRowsInSection
	override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return politicsNames.count
	}
	
	// MARK: - cellForRowAtIndexPath
	// вывовидтся информация в ячейках
	override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
		let cellIndeficator = "Cell"
		let cell = tableView.dequeueReusableCellWithIdentifier(cellIndeficator, forIndexPath: indexPath) as! CustomTableViewCell
		cell.nameLabel.text = politicsNames[indexPath.row]
		cell.politicsImage.image = UIImage(named: politicsImage[indexPath.row])
		cell.vosrast.text = politicsVosrast[indexPath.row]
		cell.dolzhnoctLabel.text = politicsDoljnoct[indexPath.row]
		return cell
	}
	
	override func prefersStatusBarHidden() -> Bool {
		return true
	}

	
	// MARK: - didSelectRowAtIndexPath
	// обраруживать выбор стоки
	override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
		let optionMenu = UIAlertController(title: nil, message: "Выберете действия", preferredStyle: .ActionSheet)
		let cancelAction = UIAlertAction(title: "Отмена", style: .Cancel, handler: nil)
		optionMenu.addAction(cancelAction)
		presentViewController(optionMenu, animated: true, completion: nil)
		
		let callActionHandler = {(action: UIAlertAction) -> Void in
			let alertMesseage = UIAlertController(title: "Сервис временно не доступен", message: "Извините", preferredStyle: .Alert)
			let okAlert = UIAlertAction(title: "OK", style: .Default, handler: nil)
			alertMesseage.addAction(okAlert)
			self.presentViewController(alertMesseage, animated: true, completion: nil)
		}
		
		let callAction = UIAlertAction(title: "Позвонить " + " +7 909463839\(indexPath.row)", style: .Default, handler: callActionHandler)
		optionMenu.addAction(callAction)
		let ilkeACtion = UIAlertAction(title: "Поддержать его", style: .Default, handler: {(action: UIAlertAction) -> Void in
			let cell = tableView.cellForRowAtIndexPath(indexPath)
			cell?.accessoryType = .Checkmark
		})
		optionMenu.addAction(ilkeACtion)
	}
	
	
	/*
	// Override to support conditional editing of the table view.
	override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
					// Return false if you do not want the specified item to be editable.
					return true
	}
	*/

	/*
	// Override to support editing the table view.
	override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
					if editingStyle == .Delete {
									// Delete the row from the data source
									tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
					} else if editingStyle == .Insert {
									// Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
					}    
	}
	*/

	/*
	// Override to support rearranging the table view.
	override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

	}
	*/

	/*
	// Override to support conditional rearranging of the table view.
	override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
					// Return false if you do not want the item to be re-orderable.
					return true
	}
	*/

	/*
	// MARK: - Navigation

	// In a storyboard-based application, you will often want to do a little preparation before navigation
	override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
					// Get the new view controller using segue.destinationViewController.
					// Pass the selected object to the new view controller.
	}
	*/

}
