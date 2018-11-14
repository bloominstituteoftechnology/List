import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var label: UILabel!
    
    @IBAction func shouldAdd(_ sender: Any) {
        guard let text = textField?.text, !text.isEmpty else { return }
        
        Model.shared.add(text)
        updateViews()
    }
    
    @IBAction func shouldReset(_ sender: Any) {
        Model.shared.resetItems()
        updateViews()
    }
    
    private func updateViews() {
        let joined = Model.shared.items.joined(separator: "\n")
        label.text = joined
        textField.text = ""
    }
    
}
