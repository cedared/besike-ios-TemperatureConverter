//
//  ViewController.swift
//  Temperature Converter
//
//  Created by Albert Young on 14/10/24.
//  Copyright (c) 2014年 2bapm. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var titleLable: UILabel!
    @IBOutlet weak var celsiusLabel: UILabel!
    @IBOutlet weak var fahrenheitLabel: UILabel!
    @IBOutlet weak var kelvinLabel: UILabel!
    @IBOutlet weak var temperatureSlider: UISlider!
    
    func updateTemperatureDisplay(){
        var celsiusValue: Float = temperatureSlider.value
        var fahrenheitValue: Float = (celsiusValue * 9/5) + 32
        var kelvinValue: Float = celsiusValue + 273.15
        
        celsiusLabel.text = String(format: "%.1f", arguments: [celsiusValue]) + "C"
        fahrenheitLabel.text = String(format: "%.1f", arguments: [fahrenheitValue]) + "F"
        kelvinLabel.text = String(format: "%.2f", arguments: [kelvinValue]) + "K"
    }
    
    
    @IBAction func temperatureSliderChanged(sender: UISlider){
        self.updateTemperatureDisplay()
        
    }
    
//    override func viewWillLayoutSubviews() {
//        super.viewWillLayoutSubviews()
//        let screen = UIScreen.mainScreen()
//        let screenWidth = screen.bounds.width
//        let screenHight = screen.bounds.height
//        let screenTopLayout = topLayoutGuide.length
//        
//        titleLable.frame = CGRect(x: 16,y: (screenTopLayout + 16),width: (screenWidth - 32),height: 21)
//        titleLable.backgroundColor = UIColor.grayColor()
//        titleLable.textAlignment = NSTextAlignment.Center
//        // Always return the size of the screen in portraits orientation
//        println("Screen fixed bounds: \(screen.fixedCoordinateSpace.bounds.width)")
//        // Since iOS8, this is the size of the screen in its current orientation
//        println("Screen bounds: \(screen.bounds)")
//        
//        println("Top layout guide: \(topLayoutGuide.length)")
//    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        temperatureSlider.minimumValue = 0
        temperatureSlider.maximumValue = 100
        temperatureSlider.value = 30
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

