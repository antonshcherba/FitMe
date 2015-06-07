//
//  RegimeDay.swift
//  FitMe
//
//  Created by Admin on 04.06.15.
//  Copyright (c) 2015 invalid404. All rights reserved.
//

import Foundation

class RegimeDay {
    var mealsList = [Meal]()
    
    init() {
        var meal = Meal()
        meal.mealName = "Завтрак"
        meal.proteinCount = 999
        meal.fatsCount = 888
        meal.carboCount = 777
        meal.kilocalorieCount = 2400
        mealsList += [meal]
        meal = Meal()
        meal.mealName = "Обед"
        meal.fatsCount = 52
        meal.proteinCount = 500
        mealsList += [meal]
    }
    
    func addMeal(meal: Meal) {
        self.mealsList += [meal]
    }
}
