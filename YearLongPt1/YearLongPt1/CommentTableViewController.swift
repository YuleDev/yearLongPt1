import UIKit

class CommentTableViewController: UITableViewController {
    
    var post: Post?

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return post?.comments.count ?? 0
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "commentCell", for: indexPath) as? CommentTableViewCell {
            guard let extractedComment = (post?.comments[indexPath.row]) else { return cell }
            
            cell.updateCellView(comment: extractedComment)
            
            return cell
        } else { return CommentTableViewCell() }
    }
}
