//
//  AboutVC.swift
//  Bull’s Eye game
//
//  Created by Pandos on 17.11.2021.
//

import UIKit
import WebKit

class AboutVC: UIViewController {
    
    
    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let url = Bundle.main.url(forResource: "BullsEye", withExtension: "html") {
            let request = URLRequest(url: url)
            webView.load(request)
        }
            
    }
    
    @IBAction func close() {
        dismiss(animated: true, completion: nil)
    }
}
