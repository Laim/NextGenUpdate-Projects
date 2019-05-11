//
//  TermsOfServiceViewController.swift
//  NGUShoutBox
//
//  Created by Laim McKenzie on 17/04/2016.
//  Copyright © 2016 Laim McKenzie. All rights reserved.
//

import UIKit

class TermsOfServiceViewController: UIViewController {


    @IBOutlet weak var ToSBrowser: UIWebView!
    
       let url = URL (string: "http://megafuckinglolz.com/projects/ios/ngusb/docs/tos.html");
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let requestObjTos = URLRequest(url: url!);
        ToSBrowser.loadRequest((requestObjTos))
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
