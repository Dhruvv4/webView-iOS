//
//  ViewController.swift
//  webView-dev
//
//  Created by Dhruv Vaghela on 15/02/18.
//  Copyright © 2018 Dhruv Vaghela. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var textFld: UITextField!
    @IBOutlet weak var webView: UIWebView!
    @IBOutlet weak var backBtn: UIButton!
    @IBOutlet weak var forwardBtn: UIButton!
    @IBOutlet weak var reloadBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textFld.delegate = self
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    @IBAction func homeBtnWasPressed(_ sender: UIButton) {
        let url = "www.google.in"
        let comeplete_url = "\(BASE_URL)\(url)"
        webView.loadRequest(URLRequest(url: URL(string: comeplete_url)!))
    }
    @IBAction func goBtnWasPressed(_ sender: UIButton) {
        guard let url = textFld.text else { return }
        let completeUrl = "\(BASE_URL)\(url)"
        webView.loadRequest(URLRequest(url: URL(string: completeUrl)!))
        textFld.resignFirstResponder()
    }
    
    @IBAction func backBtnWasPressed(_ sender: UIButton) {
            webView.goBack()
    }
    
    @IBAction func forwardBtnWasPressed(_ sender: UIButton) {
        webView.goForward()
    }
    
    @IBAction func reloadBtnWasPressed(_ sender: UIButton) {
        webView.reload()
    }
}










