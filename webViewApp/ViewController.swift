//
//  ViewController.swift
//  webViewApp
//
//  Created by Ievgeniia Pavliuchyk on 28/02/2019.
//  Copyright © 2019 Ievgeniia Pavliuchyk. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate {

    @IBOutlet weak var webView: WKWebView!
    
    @IBOutlet weak var actInd: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let url = URL(string: "https://www.google.com")
        
        let request = URLRequest (url: url!)
        
        webView.load(request)
        webView.addSubview(actInd) // activity indicator added to the view
        actInd.stopAnimating()
        
        webView.navigationDelegate = self
        
        actInd.hidesWhenStopped = true
    }

    @IBAction func back(_ sender: Any) {
        
        if webView.canGoBack {
            
            webView.goBack()
            
        }
    }
    
    @IBAction func forward(_ sender: Any) {
        
        if webView.canGoForward {
            
            webView.goForward()
            
        }
    }
    
    @IBAction func close(_ sender: Any) {
        
        webView.stopLoading()
        
    }
    
    func webView(_ webView: WKWebView, didCommit navigation: WKNavigation!) {
        
        actInd.startAnimating()
        
    }
    
    @IBAction func refresh(_ sender: Any) {
        
        webView.reload()
        
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {  // what to do when loading is done
        
        actInd.stopAnimating()
        
    }
    
    func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error) {
        
        actInd.stopAnimating()
        
    }
}

