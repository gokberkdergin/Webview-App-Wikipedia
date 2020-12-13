//
//  ViewController.swift
//  Deneme
//
//  Created by Gökberk on 5.12.2020.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate {

    @IBOutlet weak var webView: WKWebView!
    
    var imageView = UIImageView()
    

    
    override func viewDidLoad() {
        
        super.viewDidLoad()
      
        
        //var image = UIImage(named: "youtube")
        //imageView = UIImageView(image: image)
        

        view.addSubview(imageView)
        let url = URL(string: "https://tr.wikipedia.org/wiki/Anasayfa/")!
            webView.load(URLRequest(url: url))
        
        
    }
    override func loadView() {
        
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    
   
    }
    

    
    
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        imageView.isHidden = true
        print("didfinish")
     
    }
    

}

