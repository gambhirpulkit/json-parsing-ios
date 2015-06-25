//
//  TestDesc.swift
//  jsonParseArre
//
//  Created by Dignitas Digital on 6/25/15.
//  Copyright (c) 2015 Dignitas Digital. All rights reserved.
//

import Foundation
import UIKit

class TestDesc: UIViewController {
    
    @IBOutlet var TextView: UITextView!
    
    var FirstString = String()
    
    override func viewDidLoad() {
        
        TextView.text = FirstString
    }
}