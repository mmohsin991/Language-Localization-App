//
//  ViewController.swift
//  Language Localization App
//
//  Created by Mohsin on 01/07/2015.
//  Copyright (c) 2015 PanaCloud. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var localeLabel : UILabel!

    @IBOutlet var labels : [UILabel]!

    @IBOutlet weak var gdMoring: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        self.gdMoring.text = NSLocalizedString("GOOD_MORNING", comment: "Good Morning")
        
        
        let locale = NSLocale.currentLocale()
        let currentLangID = (NSLocale.preferredLanguages() as [String])[0]
        let displayLang = locale.displayNameForKey(NSLocaleLanguageCode, value: currentLangID)
        let capitalized = displayLang?.capitalizedStringWithLocale(locale)
        
        localeLabel.text = capitalized
        
        labels[0].text = NSLocalizedString("One", comment: "The number 1")
        labels[1].text = NSLocalizedString("Two", comment: "The number 2")
        labels[2].text = NSLocalizedString("Three", comment: "The number 3")

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

