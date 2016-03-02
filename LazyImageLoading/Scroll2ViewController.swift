import UIKit

class Scroll2ViewController: UIViewController , UITextViewDelegate, UIScrollViewDelegate {
    
    @IBOutlet weak var articleText: UITextView!
    @IBOutlet weak var scalableView: UIImageView!
    @IBOutlet weak var navigationBar: UINavigationBar!
    
    @IBOutlet weak var shareBarButtonItem: UIBarButtonItem!
    
    @IBOutlet weak var articleCategory: UIBarButtonItem!
    
    @IBOutlet weak var imageAboveView: UIView!
    
    let titleLabel = UILabel(frame: CGRectZero)
    let categoryLabel = UILabel(frame: CGRectZero)
    let imageOver = UIView()
    var cachedSize = CGSizeZero
    
    override func viewDidLoad() {
        super.viewDidLoad()
        articleText.backgroundColor = UIColor.whiteColor()
        print("scalableView bounds ", scalableView.bounds)
        
        let view = UIView(frame: CGRect(x: 11, y: 11, width: 22, height: 22))
        
        let whiteCircle = UIView(frame: CGRect(x: 12, y: 12, width: 16, height: 16))
        
        let redLayer = CAShapeLayer()
        redLayer.fillColor = UIColor.redColor().CGColor
        redLayer.path = UIBezierPath(ovalInRect: CGRect(x: 2, y: 2, width: 12, height: 12)).CGPath
        
        whiteCircle.backgroundColor = UIColor.whiteColor()
        whiteCircle.layer.cornerRadius = whiteCircle.frame.width / 2
        whiteCircle.layer.addSublayer(redLayer)
        
        let image = UIImageView(image: UIImage(named: "share"))
        view.addSubview(image)
        //        view.addSubview(whiteCircle)
        
        shareBarButtonItem.customView = view
        shareBarButtonItem.customView!.userInteractionEnabled = true
        
        let emptyImage = UIImage()
        navigationBar.shadowImage = emptyImage
        navigationBar.setBackgroundImage(emptyImage, forBarMetrics: UIBarMetrics.Default)
        
        
        
        // share counter
        titleLabel.backgroundColor = UIColor(named: "eBeBeBff")
        titleLabel.textColor = UIColor.blackColor()
        titleLabel.font = UIFont.systemFontOfSize(12)
        titleLabel.text = "25658"
        titleLabel.sizeToFit()
        titleLabel.textAlignment = NSTextAlignment.Center
        titleLabel.frame.size.height = CGFloat(22)
        titleLabel.frame.size.width = titleLabel.frame.size.width + 10
        titleLabel.frame.origin.x = -titleLabel.frame.width - 10
        
        view.addSubview(titleLabel)
        
        
        let triangle = CAShapeLayer()
        triangle.frame = CGRect(
            x: titleLabel.frame.width,
            y: titleLabel.frame.height / 3,
            width: titleLabel.frame.height / 3,
            height: titleLabel.frame.height / 3)
        triangle.fillColor = titleLabel.backgroundColor!.CGColor
        let path = UIBezierPath()
        path.moveToPoint(CGPoint(x: 0, y: triangle.bounds.size.height))
        path.addLineToPoint(CGPoint(x: triangle.bounds.size.width / 2, y: 0))
        path.addLineToPoint(CGPoint(x: triangle.bounds.size.width, y: triangle.bounds.size.height))
        path.closePath()
        triangle.path = path.CGPath
        titleLabel.layer.addSublayer(triangle)
        triangle.transform = CATransform3DMakeRotation(CGFloat(M_PI_2), 0, 0.0, 1.0)
        
        
        // for animation
        titleLabel.frame.origin.x -= 50
        titleLabel.alpha = 0
        
        // კატეგორია და ქვეშენიჭირიმე
        var myMutableString = NSMutableAttributedString()
        
        myMutableString = NSMutableAttributedString(
            string: "ეკონომიკა\nმთავარი",
            attributes: [NSFontAttributeName:UIFont(
                name: "Georgia",
                size: 15.0)!])
        
        myMutableString.addAttribute(NSFontAttributeName,
            value: UIFont(
                name: "AmericanTypewriter",
                size: 15.0)!,
            range: NSRange(
                location: 0,
                length: 9))
        
        myMutableString.addAttribute(NSFontAttributeName,
            value: UIFont(
                name: "AmericanTypewriter",
                size: 9.0)!,
            range: NSRange(
                location:9,
                length:8))
        
        
        categoryLabel.textColor = UIColor.blackColor()
        categoryLabel.font = UIFont.boldSystemFontOfSize(15)
        categoryLabel.attributedText = myMutableString
        categoryLabel.numberOfLines = 2
        categoryLabel.sizeToFit()
        categoryLabel.textAlignment = NSTextAlignment.Left
        
        articleCategory.customView = categoryLabel
        
        // reset imageAboveView
        self.imageAboveView.frame.origin.y = view.frame.size.height
    }
    
    override func viewDidAppear(animated: Bool) {
        // for animation
        categoryLabel.frame.origin.x -= 50
        categoryLabel.alpha = 0
        scalableView.transform = CGAffineTransformIdentity
        self.articleText.contentInset.top = self.scalableView.bounds.height
        
        UIView.animateWithDuration(1.2, delay: 0, usingSpringWithDamping: 0.6, initialSpringVelocity: 0.9, options: UIViewAnimationOptions.CurveEaseOut, animations: { () -> Void in
            
//            self.articleText.contentInset.top = self.scalableView.bounds.height
            self.articleText.contentOffset.y = -self.articleText.contentInset.top
            self.articleText.backgroundColor = UIColor.clearColor()
            self.scalableView.transform = CGAffineTransformMakeScale(1.0, 1.0)
            
            
            }) { (bool: Bool) -> Void in
                
                self.articleText.delegate = self
                self.articleText.contentOffset.y = -self.articleText.contentInset.top
                self.imageAboveView.frame.origin.y = self.articleText.contentInset.top + self.navigationBar.frame.height
                self.cachedSize = self.scalableView.frame.size
                print("image :", self.scalableView.frame, self.scalableView.bounds)
        }
        
        UIView.animateWithDuration(1.0, delay: 0.3, usingSpringWithDamping: 0.6, initialSpringVelocity: 0.8, options: UIViewAnimationOptions.CurveEaseOut, animations: { () -> Void in
            
            self.categoryLabel.frame.origin.x += 50
            self.categoryLabel.alpha = 1
            
            
            }) { (bool: Bool) -> Void in
        }
        
        UIView.animateWithDuration(1.0, delay: 0.3, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.8, options: UIViewAnimationOptions.CurveEaseOut, animations: { () -> Void in
            
            self.titleLabel.alpha = 1
            self.titleLabel.frame.origin.x += 50
            
            }) { (bool: Bool) -> Void in
                
        }
    }
    
    func scrollViewDidScroll(scrollView: UIScrollView) {
        
        let offset = -scrollView.contentOffset.y
        let diff = offset - scrollView.contentInset.top
        var headerTransform = CATransform3DIdentity
        
        self.imageAboveView.frame.origin.y = offset + self.navigationBar.frame.height
        
        if diff >= 0 {
            
            let differentScale = diff / scrollView.contentInset.top
            print("differentScale ", differentScale)
            
            headerTransform = CATransform3DScale(headerTransform, 1.0 + differentScale, 1.0 + differentScale, 0)
            
            scalableView.layer.transform = headerTransform
            scalableView.layer.opacity = 1
            let frame = scalableView.frame
            
            
            scalableView.layer.position.y = frame.height / 2 + self.navigationBar.frame.height
        }
            
        
        else {
            let differentScale = diff / scrollView.contentInset.top
            print("negative differentScale ", differentScale)
            scalableView.layer.opacity = Float(offset / scrollView.contentInset.top)
            scalableView.layer.position.y = scalableView.frame.height / 2 + self.navigationBar.frame.height + diff / 2
        }
    }
}
