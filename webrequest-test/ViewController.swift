//
//  ViewController.swift
//  webrequest-test
//
//  Created by Gil Aguilar on 2/22/16.
//  Copyright © 2016 redeye-dev. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    
    @IBOutlet weak var container: UIView! 
    var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        webView = WKWebView()
        container.addSubview(webView)
        //Debugging the rendering of the page on the iPhone and the 
        //Image View itself
        //print(container.bounds.width)
        
    }
    
    override func viewDidAppear(animated: Bool) {
        let frame = CGRectMake(0,0, container.bounds.width, container.bounds.height)
        webView.frame = frame
        
        loadRequest("https://developer.apple.com/swift/blog/")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func loadRequest(urlStr: String) {
        
        let url = NSURL(string: urlStr)!
        let request = NSURLRequest(URL: url)
        webView.loadRequest(request)


    }
    
    
    @IBAction func loadSteak(sender: AnyObject) {
        loadRequest("http://www.allenbrothers.com/wet-aged-beef.html")
    }

    @IBAction func loadGossip(sender: AnyObject) {
        loadRequest("http://www.tmz.com/")
    }
    
    @IBAction func loadSwift(sender: AnyObject) {
        loadRequest("https://developer.apple.com/swift/blog/")
        
    }

}

