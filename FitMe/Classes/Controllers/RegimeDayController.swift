//
//  RegimeDayController.swift
//  FitMe
//
//  Created by Admin on 01.06.15.
//  Copyright (c) 2015 invalid404. All rights reserved.
//

import UIKit

class RegimeDayController: UITableViewController {
    let mealCellIdentifier = "mealCell"
//    var mealCells = [Meal]()
    var regime = RegimeDay()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return regime.mealsList.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(mealCellIdentifier) as! MealCellView
        
        let meal = regime.mealsList[indexPath.row]
        cell.mealName.text = meal.mealName
        cell.proteinCount.text = String(meal.proteinCount)
        cell.fatsCount.text = String(meal.fatsCount)
        cell.carboCount.text = String(meal.carboCount)
        cell.kilocalorieCount.text = String(meal.kilocalorieCount)
        
        return cell
    }
    
    @IBAction func addMealClicked(sender: AnyObject) {
        
        showAddMealForm()
    }
    

    
}
