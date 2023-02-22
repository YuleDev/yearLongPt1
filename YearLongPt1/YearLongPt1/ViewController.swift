import UIKit

class ViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func darkModeSwitch(_ sender: UISwitch) {
        // ternary op to change bg color? true or false ?? 1 : 2
        view.backgroundColor = sender.isOn ?  .white : .black
    }
    
}

