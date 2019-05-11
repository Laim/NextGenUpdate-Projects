//
//  ViewController.swift
//  NGUShoutBox
//
//  Created by Laim McKenzie on 10/04/2016.
//  Copyright © 2016 Laim McKenzie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var BrowserView: UIWebView!
    
    @IBOutlet weak var BrowserActivity: UIActivityIndicatorView!
    
    @IBOutlet weak var BrowserHome: UIBarButtonItem!
    
    let url = URL (string: "http://nextgenupdate.com/forums/mobile_chat.php");
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //If the indicator has stopped animating, hide it.
        BrowserActivity.hidesWhenStopped = true;
        
        //Loads the NGU ShoutBox
        let requestObj = URLRequest(url: url!);
        BrowserView.loadRequest((requestObj))
        
        /*
         Button Icons
        self.BrowserHome.title = NSString(string: "\u{26ed}") as String
        if let font = UIFont(name: "Helvetica", size: 18.0) {
            self.BrowserHome.setTitleTextAttributes([NSFontAttributeName: font], forState: UIControlState.Normal)
        }
         */
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Activity Indicator Code - Start //
    func webViewDidStartLoad(_ BrowserView: UIWebView!) {
        BrowserActivity.startAnimating();
    }
    
    func webViewDidFinishLoad(_ BrowserView: UIWebView!) {
        BrowserActivity.stopAnimating();
    }
    // Activity Indicator Code - End //
    
    // Home Button Code //
    @IBAction func browserHome(_ sender : AnyObject) {
        let requestObj = URLRequest(url: url!);
        BrowserView.loadRequest((requestObj))

    }
    
    // Open any links from the WebView in Safari instead. 
    func webView(_ BrowserView: UIWebView, shouldStartLoadWithRequest request: URLRequest, navigationType: UIWebViewNavigationType) -> Bool {
        
        if navigationType == UIWebViewNavigationType.linkClicked{
            UIApplication.shared.openURL(request.url!)
            return false
        }
        
        return true
    }
    
}
































