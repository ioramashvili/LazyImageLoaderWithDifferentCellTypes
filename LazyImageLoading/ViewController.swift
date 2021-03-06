import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var links = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        links.append("http://i.newsarama.com/images/i/000/160/153/original/batman-v-superman.jpg?1449271783")
        links.append("http://3ebd2a0c0ea48a333aea-1f531def8e8befb67be56667ce3edd11.r77.cf1.rackcdn.com/568b87ff6af704fd92b9afa5010519ecacf9da94.png__940x420_q85_crop-smart_subject_location-590,125_upscale.jpg")
        links.append("http://media.comicbook.com/uploads1/2015/07/bvs-grappling-hook-143725-143792.jpg")
        links.append("http://cde.laprensa.e3.pe/ima/0/0/1/0/3/103370.jpg")
        links.append("http://i.imgur.com/aYax2KG.jpg")
        
        links.append("http://cdn.wegotthiscovered.com/wp-content/uploads/batman-v-superman-fight.jpg")
        links.append("http://img05.deviantart.net/3b3a/i/2015/135/e/2/batman_v_superman_dawn_of_justice_trinity_by_davidcreativedesigns-d8tfjot.png")
        links.append("http://www.thegeekmafia.net/wp-content/uploads/2015/07/Batman-v-Superman-Trailer-Affleck-Batsuit.jpg")
        links.append("http://data.techtimes.com/data/images/full/115463/wonder-woman-jpg.jpg")
        links.append("http://cdn.movieweb.com/img.site/PHizt5qd3wbqkr_1_l.jpg")
        
        links.append("http://screenrant.com/wp-content/uploads/Wonder-Woman-Gal-Gadot-Bruce-Wayne-Batman-Ben-Affleck-Batman-v-Superman.jpg")
        links.append("http://cdn.collider.com/wp-content/uploads/2015/07/batman-vs-superman-ew-pics-1.jpg")
        links.append("http://static.independent.co.uk/s3fs-public/styles/story_large/public/thumbnails/image/2015/07/12/13/Batman-v-Superman-Dawn-Of-Justice.jpg")
        links.append("http://cdn.collider.com/wp-content/uploads/2016/02/batman-v-superman-poster-slice-600x200.jpg")
        links.append("http://dccomicsnews.com/wp-content/uploads/2015/07/BruceVClark-740x431.jpg")
        
        links.append("http://i3.mirror.co.uk/incoming/article6050381.ece/ALTERNATES/s615b/batman-v-superman.jpg")
        links.append("http://s1.dmcdn.net/Lmg5x/1280x720-a4d.jpg")
        links.append("https://i.ytimg.com/vi/Cle_rKBpZ28/maxresdefault.jpg")
        links.append("http://media.comicbook.com/uploads1/2015/07/bvs-dark-knight-returns-143737.jpg")
        links.append("https://brobible.files.wordpress.com/2015/12/superman221.png?w=640")
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
//        var cell = tableView.dequeueReusableCellWithIdentifier("cell")
//
//        if (cell == nil) {
//            
//            cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "cell")
//        }
        
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)
        (cell as! CustomCell).customImageView.sd_setImageWithURL(NSURL(string: links[indexPath.row])!, placeholderImage: UIImage(named: "loader")!)
        print(indexPath.row)
        return cell
    }
}

