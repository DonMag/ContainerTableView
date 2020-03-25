//
//  ViewController.swift
//  ContainerTableView
//
//  Created by Don Mag on 3/25/20.
//  Copyright © 2020 Don Mag. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate {
	
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		
		// When using UIContainerView, prepare for segue will be called on load
		
		// un-comment this block to use SELF as the delegate
		//	for the tableView in the embedded tableViewController
		
		//if let vc = segue.destination as? MyStaticTableViewController {
		//	vc.tableView.delegate = self
		//}
		
	}
	
	// this will only be called if .delegate is set as shown above
	func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		print("didSelectRowAt called in \"Parent\" for indexPath:", indexPath)
	}
	
}

class MyStaticTableViewController: UITableViewController {
	
	// this will NOT be called if .delegate is set as the "parent" view controller
	override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		print("didSelectRowAt called in \"Table View Controller\" for indexPath:", indexPath)
	}
	
}
