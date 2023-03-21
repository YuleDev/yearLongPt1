import UIKit

class SocialMediaTableViewController: UITableViewController {
    
    var postArray = [Post(title: "title1", datePosted: "03/21/23", description: "description1", comments: [Comment(name: "kole", datePosted: "03/21/23", commentText: "this is a test!")]), Post(title: "title2", datePosted: "03/21/23", description: "description2", comments: [Comment(name: "name", datePosted: "date", commentText: "comment"), Comment(name: "name2", datePosted: "date", commentText: "comment2")])]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
