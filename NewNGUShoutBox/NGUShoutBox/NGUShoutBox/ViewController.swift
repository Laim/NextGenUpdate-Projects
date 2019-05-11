//
//  ViewController.swift
//  NGUShoutBox
//
//  Created by Laim McKenzie on 17/04/2016.
//  Copyright © 2016 Laim McKenzie. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIWebViewDelegate {
    
    @IBOutlet weak var BrowserView: UIWebView!
    @IBOutlet weak var BrowserHome: UIBarButtonItem!
    @IBOutlet weak var BrowserActivity: UIActivityIndicatorView!
    
    let url = URL (string: "http://www.nextgenupdate.com/forums/mobile_chat.php");
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.barTintColor = UIColor(red:0.16, green:0.67, blue:0.89, alpha:1.0)
        BrowserView.delegate = self
        
        // Loads the Chat
        let requestObj = URLRequest(url: url!);
        BrowserView.loadRequest((requestObj))
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Home Button Code //
    @IBAction func browserHome(_ sender : AnyObject) {
        let requestObj = URLRequest(url: url!);
        BrowserView.loadRequest((requestObj))
        
    }
    
    // Activity Indicator Code - Start //
    func webViewDidStartLoad(_ BrowserView: UIWebView) {
        BrowserActivity.startAnimating();
    }
    
    func webViewDidFinishLoad(_ BrowserView: UIWebView) {
        BrowserActivity.stopAnimating();
    }
    // Activity Indicator Code - End //

    
    // Open any links from the WebView in Safari instead.
    func webView(_ BrowserView: UIWebView, shouldStartLoadWith request: URLRequest, navigationType: UIWebViewNavigationType) -> Bool {
        
        if navigationType == UIWebViewNavigationType.linkClicked{
            UIApplication.shared.openURL(request.url!)
            return false
        }

        return true

    }


}

