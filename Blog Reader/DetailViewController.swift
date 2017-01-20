//
//  DetailViewController.swift
//  Blog Reader
//
//  Created by Shailendra Suriyal on 17/01/17.
//  Copyright © 2017 RealDev. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var webView: UIWebView!

    func configureView() {
        // Update the user interface for the detail item.
        
        self.title = self.detailItem?.title
        
        if let detail = self.detailItem {
            
            if let blogWebView = self.webView {
                blogWebView.loadHTMLString(detail.content!, baseURL: nil)
            }
            
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var detailItem: Event? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }


}

