import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var lightModeButton: UILabel!
    @IBOutlet var darkModeButton: UILabel!
    @IBOutlet var lightDarkSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func darkModeSwitch(_ sender: UISwitch) {
        let scenes = UIApplication.shared.connectedScenes
        if let windowScene = scenes.compactMap({ $0 as? UIWindowScene }).first,
           let window = windowScene.windows.first {
            window.overrideUserInterfaceStyle = sender.isOn ? .light : .dark
        }
    }
}
