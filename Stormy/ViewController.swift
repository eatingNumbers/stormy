//
//  ViewController.swift
//  Stormy
//
//  Created by Dean Laurea on 10/21/15.
//  Copyright © 2015 Dean Laurea. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if let plistPath = NSBundle.mainBundle().pathForResource("CurrentWeather", ofType: "plist"),
            let weatherDictionary = NSDictionary(contentsOfFile: plistPath),
            let CurrentWeatherDictionary = weatherDictionary["currently"] as? [String: AnyObject] {
        
            let currentWeather = CurrentWeather(weatherDictionary: CurrentWeatherDictionary)
        
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}





