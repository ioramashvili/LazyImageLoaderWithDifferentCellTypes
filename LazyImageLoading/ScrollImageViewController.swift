import UIKit

class ScrollImageViewController: UIViewController, UITextViewDelegate, UIScrollViewDelegate {
    
    @IBOutlet weak var articleText: UITextView!
    @IBOutlet weak var scalableView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        articleText.backgroundColor = UIColor.whiteColor()
        print("scalableView bounds ", scalableView.bounds)
    }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return UIStatusBarStyle.LightContent
    }
    
    override func viewDidAppear(animated: Bool) {
        UIView.animateWithDuration(1.2, delay: 0, usingSpringWithDamping: 0.7, initialSpringVelocity: 0.9, options: UIViewAnimationOptions.CurveEaseOut, animations: { () -> Void in
            
            self.articleText.contentInset.top = self.scalableView.bounds.height
            self.articleText.contentOffset.y = -self.scalableView.bounds.height
            self.articleText.backgroundColor = UIColor.clearColor()
            
            
            }) { (bool: Bool) -> Void in
                       self.articleText.delegate = self
                print("now article text is delegate")
        }
        
        
    }
    
    func scrollViewDidScroll(scrollView: UIScrollView) {
        
        let offset = -scrollView.contentOffset.y
        let diff = offset - scrollView.contentInset.top
        var headerTransform = CATransform3DIdentity
        
        print("diff ", diff, scrollView.contentInset.top)
        print("offset ", offset)
        if diff >= 0 {
            let differentScale = diff / scrollView.contentInset.top
            print("differentScale ", differentScale)
            headerTransform = CATransform3DScale(headerTransform, 1.0 + differentScale, 1.0 + differentScale, 0)
            
//            var headerScaleFactor: CGFloat =  1 - scrollView.contentInset.top / offset
//            var headerScaleFactor: CGFloat =  1 - view.frame.width * 0.5625 / offset
//            print("scale ", headerScaleFactor)
//            headerScaleFactor *= 2.0
//            headerTransform = CATransform3DScale(headerTransform, 1.0 + headerScaleFactor, 1.0 + headerScaleFactor, 0)
            
            scalableView.layer.transform = headerTransform
            scalableView.layer.opacity = 1
            let frame = scalableView.frame
//            print(scalableView.frame, frame.width / 2, frame.height / 2)
//            print(scalableView.layer.position)
            
            scalableView.layer.position.y = frame.height / 2
        }
        else {
            scalableView.layer.opacity = Float(offset / scrollView.contentInset.top)
        }
    }
}


