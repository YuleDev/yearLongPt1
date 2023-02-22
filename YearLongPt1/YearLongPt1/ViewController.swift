import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var lightModeButton: UILabel!
    @IBOutlet var darkModeButton: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func darkModeSwitch(_ sender: UISwitch) {
        // ternary op to change bg color? true or false ?? 1 : 2
        view.backgroundColor = sender.isOn ?  .white : .black
        lightModeButton.backgroundColor = sender.isOn ? .clear : .white
        darkModeButton.backgroundColor = sender.isOn ? .clear : .white
        }
    }
