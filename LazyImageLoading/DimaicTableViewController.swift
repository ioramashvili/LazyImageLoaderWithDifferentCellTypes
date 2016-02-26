import UIKit

class DimaicTableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    var links = [Model]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 178.0
        
        links.append(Model(url: "http://i.newsarama.com/images/i/000/160/153/original/batman-v-superman.jpg?1449271783", type: Int(arc4random_uniform(2))))
        
        links.append(Model(url: "http://3ebd2a0c0ea48a333aea-1f531def8e8befb67be56667ce3edd11.r77.cf1.rackcdn.com/568b87ff6af704fd92b9afa5010519ecacf9da94.png__940x420_q85_crop-smart_subject_location-590,125_upscale.jpg", type: Int(arc4random_uniform(2))))
        links.append(Model(url: "http://media.comicbook.com/uploads1/2015/07/bvs-grappling-hook-143725-143792.jpg", type: Int(arc4random_uniform(2))))
        links.append(Model(url: "http://cde.laprensa.e3.pe/ima/0/0/1/0/3/103370.jpg", type: Int(arc4random_uniform(2))))
        links.append(Model(url: "http://i.imgur.com/aYax2KG.jpg", type: Int(arc4random_uniform(2))))
        
        links.append(Model(url: "http://cdn.wegotthiscovered.com/wp-content/uploads/batman-v-superman-fight.jpg", type: Int(arc4random_uniform(2))))
        links.append(Model(url: "http://img05.deviantart.net/3b3a/i/2015/135/e/2/batman_v_superman_dawn_of_justice_trinity_by_davidcreativedesigns-d8tfjot.png", type: Int(arc4random_uniform(2))))
        links.append(Model(url: "http://www.thegeekmafia.net/wp-content/uploads/2015/07/Batman-v-Superman-Trailer-Affleck-Batsuit.jpg", type: Int(arc4random_uniform(2))))
        links.append(Model(url: "http://data.techtimes.com/data/images/full/115463/wonder-woman-jpg.jpg", type: Int(arc4random_uniform(2))))
        links.append(Model(url: "http://cdn.movieweb.com/img.site/PHizt5qd3wbqkr_1_l.jpg", type: Int(arc4random_uniform(2))))
        
        links.append(Model(url: "http://screenrant.com/wp-content/uploads/Wonder-Woman-Gal-Gadot-Bruce-Wayne-Batman-Ben-Affleck-Batman-v-Superman.jpg", type: Int(arc4random_uniform(2))))
        links.append(Model(url: "http://cdn.collider.com/wp-content/uploads/2015/07/batman-vs-superman-ew-pics-1.jpg", type: Int(arc4random_uniform(2))))
        links.append(Model(url: "http://static.independent.co.uk/s3fs-public/styles/story_large/public/thumbnails/image/2015/07/12/13/Batman-v-Superman-Dawn-Of-Justice.jpg", type: Int(arc4random_uniform(2))))
        links.append(Model(url: "http://cdn.collider.com/wp-content/uploads/2016/02/batman-v-superman-poster-slice-600x200.jpg", type: Int(arc4random_uniform(2))))
        links.append(Model(url: "http://dccomicsnews.com/wp-content/uploads/2015/07/BruceVClark-740x431.jpg", type: Int(arc4random_uniform(2))))
        
        links.append(Model(url: "http://i3.mirror.co.uk/incoming/article6050381.ece/ALTERNATES/s615b/batman-v-superman.jpg", type: Int(arc4random_uniform(2))))
        links.append(Model(url: "http://s1.dmcdn.net/Lmg5x/1280x720-a4d.jpg", type: Int(arc4random_uniform(2))))
        links.append(Model(url: "https://i.ytimg.com/vi/Cle_rKBpZ28/maxresdefault.jpg", type: Int(arc4random_uniform(2))))
        links.append(Model(url: "http://media.comicbook.com/uploads1/2015/07/bvs-dark-knight-returns-143737.jpg", type: Int(arc4random_uniform(2))))
        links.append(Model(url: "https://brobible.files.wordpress.com/2015/12/superman221.png?w=640", type: Int(arc4random_uniform(2))))
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
            
            print(" \(cell.frame.height): largeCell")
//            separator(cell)
            return cell
        }
        else {
            let cell = tableView.dequeueReusableCellWithIdentifier("smallCell") as! SmallTableViewCell
            
            cell.headerImage.sd_setImageWithURL(NSURL(string: links[indexPath.row].url)!, placeholderImage: UIImage(named: "loader")!)
            
            print(" \(cell.frame.height): smallCell")
//            separator(cell)
            return cell
        }
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: false)
    }
    
    private func separator(cell: UITableViewCell) {
        let separator = CALayer()
        separator.backgroundColor = UIColor(named: "f6f6f6ff").CGColor
        separator.frame = CGRectMake(0, cell.frame.height - 5, cell.frame.width, 5)
        cell.layer.addSublayer(separator)
    }

}
