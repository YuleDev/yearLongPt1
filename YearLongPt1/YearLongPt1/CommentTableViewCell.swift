import UIKit

class CommentTableViewCell: UITableViewCell {
    
    @IBOutlet var userLabel: UILabel!
    @IBOutlet var dateLabel: UILabel!
    @IBOutlet var descriptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func updateCellView(comment: Comment) {
        userLabel.text = comment.name
        dateLabel.text = comment.datePosted
        descriptionLabel.text = comment.commentText
    }

}
