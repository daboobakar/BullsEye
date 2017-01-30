//
//  AboutViewController.swift
//  BullsEye
//
//  Created by Danyal Aboobakar on 23/01/2017.
//  Copyright © 2017 Danyal Aboobakar. All rights reserved.
//

import UIKit

class AboutViewController: UIViewController {
    
    @IBOutlet weak var webView: UIWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.webView.scrollView.isScrollEnabled = false
//        self.webView.
        
        if let url = Bundle.main.url(forResource: "BullsEye",
                                     withExtension: "html") {
            if let htmlData = try? Data(contentsOf: url) {
                let baseURL = URL(fileURLWithPath: Bundle.main.bundlePath)
                webView.load(htmlData, mimeType: "text/html",
                             textEncodingName: "UTF-8", baseURL: baseURL)
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func closeView(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }


}
