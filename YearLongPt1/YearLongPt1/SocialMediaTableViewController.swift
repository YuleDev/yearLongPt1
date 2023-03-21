import UIKit

class SocialMediaTableViewController: UITableViewController {
    
    var postArray = [Post(user: "kole", title: "title1", datePosted: "03/21/23", description: "description1", comments: [Comment(name: "kole", datePosted: "03/21/23", commentText: "this is a test!")]), Post(user: "someone else", title: "title2", datePosted: "03/21/23", description: "description2", comments: [Comment(name: "name", datePosted: "date", commentText: "comment"), Comment(name: "name2", datePosted: "date", commentText: "comment2")]), Post(user: "jane", title: "something", datePosted: "date", description: "desc", comments: [Comment(name: "kole", datePosted: "date", commentText: "comment")]), Post(user: "MJ", title: "some title", datePosted: "date", description: "some desc", comments: [Comment(name: "Alexis", datePosted: "date", commentText: "some comment")])]

    var selectedPost: IndexPath?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return postArray.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "socialMediaCell", for: indexPath) as? SocialMediaCell {
            let extractedPost = postArray[indexPath.row]
            
            cell.updateCellView(post: extractedPost)
            
            return cell
        } else { return SocialMediaCell() }
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard tableView.indexPathForSelectedRow != nil else { return }
        
        selectedPost = indexPath
        
        print("\(selectedPost)")
        
        performSegue(withIdentifier: "showComment", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showComment" {
            
        }
    }

    @IBSegueAction func viewingCommentFunc(_ coder: NSCoder, sender: Any?) -> SocialMediaTableViewController? {
        guard let cell = sender as? UITableViewCell, let indexPath = tableView.indexPath(for: cell) else {
            return nil
        }
        
        let post = postArray[indexPath.row]

        return SocialMediaTableViewController(coder: coder) // Post: post
    }
    

}
