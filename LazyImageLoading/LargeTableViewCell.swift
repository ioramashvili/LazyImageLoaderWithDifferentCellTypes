import UIKit

class LargeTableViewCell: UITableViewCell {

    
    @IBOutlet weak var headerImage: UIImageView!
    @IBOutlet weak var headerTimeLabel: UILabel!
    @IBOutlet weak var headerLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
}
