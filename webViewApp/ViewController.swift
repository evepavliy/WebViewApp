//
//  ViewController.swift
//  webViewApp
//
//  Created by Ievgeniia Pavliuchyk on 28/02/2019.
//  Copyright © 2019 Ievgeniia Pavliuchyk. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let url = URL(string: "https://www.google.com ")
        
        let request = URLRequest (url: url!)
        
        webView.load(request)
    }

    @IBAction func back(_ sender: Any) {
    }
    
    @IBAction func forward(_ sender: Any) {
    }
    
    @IBAction func close(_ sender: Any) {
    }
    
    @IBAction func refresh(_ sender: Any) {
    }
}

