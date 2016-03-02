import UIKit

class WebViewController: UIViewController, UIWebViewDelegate {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let web = UIWebView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: 50))
        let url = NSURL (string: "http://openx.palitra.ge/baner/VTB_mobilepay/VTB_600X90.html")
        let requestObj = NSURLRequest(URL: url!)
        web.scalesPageToFit = true
        web.scrollView.scrollEnabled = false
        web.delegate = self
        web.loadRequest(requestObj)
        view.addSubview(web)
    }
    
    func webViewDidStartLoad(webView: UIWebView) {
        print("start loading...")
    }
    
    func webViewDidFinishLoad(webView: UIWebView) {
        var newBounds = webView.bounds;
        newBounds.size.height = webView.scrollView.contentSize.height;
        webView.bounds = newBounds;
//        webView.scrollView.scrollEnabled = false
//        let contentSize = webView.scrollView.contentSize
//        let viewSize = webView.bounds.size
//        
//        let rw = min( viewSize.width / contentSize.width, viewSize.height / contentSize.height)
//        
//        webView.scrollView.contentSize = CGSize(width: webView.scrollView.contentSize.width * rw, height: webView.scrollView.contentSize.height * rw)
//        webView.frame = webView.scrollView.bounds
//        print(webView.scrollView.contentSize)
//        print(webView.frame)
    }
    
}
