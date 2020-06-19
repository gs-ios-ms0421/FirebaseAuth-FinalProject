//
//  TermsViewController.swift
//  GsTodo
//
//  Created by 鈴江元尚 on 2020/06/14.
//  Copyright © 2020 yamamototatsuya. All rights reserved.
//

import UIKit
import WebKit

class TermsViewController: UIViewController,WKNavigationDelegate,WKUIDelegate {
    
    @IBOutlet weak var wkWebView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.wkWebView.navigationDelegate = self
        self.wkWebView.uiDelegate = self
        //表示したいWebページのURLを入れてローディング
        self.loadWebView("https://policies.google.com/terms?hl=ja")
        // スワイプで進む、戻るを有効にする
        self.wkWebView.allowsBackForwardNavigationGestures = true
    }
    
    //wkWebViewの読み込み
    func loadWebView(_ urlString:String){
        //String型の引数の値をURL型にキャスト
        let myURL = URL(string: urlString)
        //URL型をURLRequest型にキャスト
        let myRequest = URLRequest(url: myURL!)
        //ローディング
        self.wkWebView.load(myRequest)
    }
    
    func webView(_ webView: WKWebView, didCommit navigation: WKNavigation!) {
        print("WebビューがWebコンテンツの受信を開始したときに呼ばれる")
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        print("ナビゲーションが完了したときに呼ばれる")
    }
    
    

}
