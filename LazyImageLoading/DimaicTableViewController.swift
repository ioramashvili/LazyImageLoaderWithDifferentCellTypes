import UIKit

class DimaicTableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UIWebViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    var links = [Model]()
    var web: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        web = UIWebView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: 80))
//        let url = NSURL (string: "http://openx.palitra.ge/baner/VTB_mobilepay/VTB_600X90.html")
//        let requestObj = NSURLRequest(URL: url!)
//        web.scalesPageToFit = true
//        web.scrollView.scrollEnabled = false
//        web.scrollView.contentMode = UIViewContentMode.ScaleAspectFit
//        web.delegate = self
//        web.loadRequest(requestObj)
        
        loadData()
    }
    
    func loadData() {
        tableView.rowHeight = UITableViewAutomaticDimension
        
        links.append(Model(url: "http://i.newsarama.com/images/i/000/160/153/original/batman-v-superman.jpg?1449271783", type: Int(arc4random_uniform(2))))
        
        links.append(Model(url: "http://3ebd2a0c0ea48a333aea-1f531def8e8befb67be56667ce3edd11.r77.cf1.rackcdn.com/568b87ff6af704fd92b9afa5010519ecacf9da94.png__940x420_q85_crop-smart_subject_location-590,125_upscale.jpg", type: Int(arc4random_uniform(2))))
        links.append(Model(url: "http://media.comicbook.com/uploads1/2015/07/bvs-grappling-hook-143725-143792.jpg", type: Int(arc4random_uniform(2))))
        links.append(Model(url: "http://cde.laprensa.e3.pe/ima/0/0/1/0/3/103370.jpg", type: Int(arc4random_uniform(2))))
        links.append(Model(url: "http://i.imgur.com/aYax2KG.jpg", type: Int(arc4random_uniform(2))))
        
//        links.append(Model(url: "http://i.newsarama.com/images/i/000/165/565/i02/BvS_Doritos.jpg?1456527263", type: 3))
        
        links.append(Model(url: "http://cdn.wegotthiscovered.com/wp-content/uploads/batman-v-superman-fight.jpg", type: Int(arc4random_uniform(2))))
        links.append(Model(url: "http://img05.deviantart.net/3b3a/i/2015/135/e/2/batman_v_superman_dawn_of_justice_trinity_by_davidcreativedesigns-d8tfjot.png", type: Int(arc4random_uniform(2))))
        links.append(Model(url: "http://www.thegeekmafia.net/wp-content/uploads/2015/07/Batman-v-Superman-Trailer-Affleck-Batsuit.jpg", type: Int(arc4random_uniform(2))))
        links.append(Model(url: "http://data.techtimes.com/data/images/full/115463/wonder-woman-jpg.jpg", type: Int(arc4random_uniform(2))))
        links.append(Model(url: "http://cdn.movieweb.com/img.site/PHizt5qd3wbqkr_1_l.jpg", type: Int(arc4random_uniform(2))))
        
//        links.append(Model(url: "http://i.newsarama.com/images/i/000/165/565/i02/BvS_Doritos.jpg?1456527263", type: 3))
        
        links.append(Model(url: "http://screenrant.com/wp-content/uploads/Wonder-Woman-Gal-Gadot-Bruce-Wayne-Batman-Ben-Affleck-Batman-v-Superman.jpg", type: Int(arc4random_uniform(2))))
        links.append(Model(url: "http://cdn.collider.com/wp-content/uploads/2015/07/batman-vs-superman-ew-pics-1.jpg", type: Int(arc4random_uniform(2))))
        links.append(Model(url: "http://static.independent.co.uk/s3fs-public/styles/story_large/public/thumbnails/image/2015/07/12/13/Batman-v-Superman-Dawn-Of-Justice.jpg", type: Int(arc4random_uniform(2))))
        links.append(Model(url: "http://cdn.collider.com/wp-content/uploads/2016/02/batman-v-superman-poster-slice-600x200.jpg", type: Int(arc4random_uniform(2))))
        links.append(Model(url: "http://dccomicsnews.com/wp-content/uploads/2015/07/BruceVClark-740x431.jpg", type: Int(arc4random_uniform(2))))
        
//        links.append(Model(url: "http://i.newsarama.com/images/i/000/165/565/i02/BvS_Doritos.jpg?1456527263", type: 3))
        
        links.append(Model(url: "http://i3.mirror.co.uk/incoming/article6050381.ece/ALTERNATES/s615b/batman-v-superman.jpg", type: Int(arc4random_uniform(2))))
        links.append(Model(url: "http://s1.dmcdn.net/Lmg5x/1280x720-a4d.jpg", type: Int(arc4random_uniform(2))))
        links.append(Model(url: "https://i.ytimg.com/vi/Cle_rKBpZ28/maxresdefault.jpg", type: Int(arc4random_uniform(2))))
        links.append(Model(url: "http://media.comicbook.com/uploads1/2015/07/bvs-dark-knight-returns-143737.jpg", type: Int(arc4random_uniform(2))))
        links.append(Model(url: "https://brobible.files.wordpress.com/2015/12/superman221.png?w=640", type: Int(arc4random_uniform(2))))
        
//        links.append(Model(url: "http://i.newsarama.com/images/i/000/165/565/i02/BvS_Doritos.jpg?1456527263", type: 3))
        
        links.append(Model(url: "http://i.newsarama.com/images/i/000/165/565/i02/BvS_Doritos.jpg?1456527263", type: Int(arc4random_uniform(2))))
        links.append(Model(url: "http://static.srcdn.com/slir/w786-h393-q90-c786:393/wp-content/uploads/Batman-V-Superman-Guards.jpg", type: Int(arc4random_uniform(2))))
        links.append(Model(url: "http://cdn.movieweb.com/img.news.tops/NEmMvubkR450pn_2_b.jpg", type: Int(arc4random_uniform(2))))
        links.append(Model(url: "http://www.thereelword.net/wp-content/uploads/2015/12/batman-v-superman-clip-screenshot.png", type: Int(arc4random_uniform(2))))
        links.append(Model(url: "http://www.cosmicbooknews.com/sites/default/files/Screenshot_15_4.jpg", type: Int(arc4random_uniform(2))))
    }
    
    func tableView(tableView: UITableView, estimatedHeightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        if links[indexPath.row].type == 3 {
            return 100
        }
        let width = tableView.frame.width
        let estimatedheight = links[indexPath.row].type == 0 ? (width * 0.5625 + 40) : (width * 0.2666 + 10)
        print(estimatedheight)
        return estimatedheight
    }

    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return links.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        print("type: \(links[indexPath.row].type) - index: \(indexPath.row)")
        if links[indexPath.row].type == 0 {
            let cell = tableView.dequeueReusableCellWithIdentifier("largeCell") as! LargeTableViewCell
            
            cell.headerImage.sd_setImageWithURL(NSURL(string: links[indexPath.row].url)!, placeholderImage: UIImage(named: "loader")!)
            return cell
        }
//        else if links[indexPath.row].type == 3 {
//            let cell = tableView.dequeueReusableCellWithIdentifier("webCell") as! WebViewTableViewCell
//            cell.webView.addSubview(web)
//            return cell
//        }
        else {
            let cell = tableView.dequeueReusableCellWithIdentifier("smallCell") as! SmallTableViewCell
            
            cell.headerImage.sd_setImageWithURL(NSURL(string: links[indexPath.row].url)!, placeholderImage: UIImage(named: "loader")!)
            return cell
        }
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: false)
    }
    
    func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {
        
    }
    
    @IBAction func add(sender: UIBarButtonItem) {
        tableView.beginUpdates()
        let loaded = (1...20).map { _ in Model(url: "https://brobible.files.wordpress.com/2015/12/superman221.png?w=640", type: Int(arc4random_uniform(2))) }
        for item in loaded {
            links.append(item)
        }
        let pathes = (1...20).map { NSIndexPath(forRow: links.count - $0, inSection: 0) }
        tableView.insertRowsAtIndexPaths(pathes, withRowAnimation: UITableViewRowAnimation.None)
        tableView.endUpdates()
    }
    
    @IBAction func refreshTable(sender: UIBarButtonItem) {
        tableView.reloadData()
    }
    
    @IBAction func scrollToTop(sender: UIBarButtonItem) {
        tableView.beginUpdates()
        let loaded = (0...1).map { _ in Model(url: "http://i.newsarama.com/images/i/000/165/565/i02/BvS_Doritos.jpg?1456527263", type: Int(arc4random_uniform(2))) }
        
        for item in loaded {
            links.insert(item, atIndex: 0)
        }
        let pathes = (0...1).map { NSIndexPath(forRow: $0, inSection: 0) }
        tableView.insertRowsAtIndexPaths(pathes, withRowAnimation: UITableViewRowAnimation.None)
        tableView.endUpdates()
        tableView.scrollToRowAtIndexPath(NSIndexPath(forRow: 0, inSection: 0), atScrollPosition: UITableViewScrollPosition.Top, animated: true)   
    }
    
//    func webViewDidFinishLoad(webView: UIWebView) {
//        var newBounds = webView.bounds
//        newBounds.size.height = webView.scrollView.contentSize.height
//        webView.bounds = newBounds
//        
//        let contentSize = webView.scrollView.contentSize;
//        let d = contentSize.height/2 - webView.center.y
//        webView.scrollView.contentOffset = CGPointMake(0, d)
//        print("done contentSize ", webView.scrollView.contentSize, webView.bounds)
//        
//        loadData()
//        tableView.reloadData()
//    }
}
