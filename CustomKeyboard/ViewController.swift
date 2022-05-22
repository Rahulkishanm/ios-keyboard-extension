import UIKit

class ViewController: UIViewController {
	@IBOutlet weak var instructions: UITextView!
	@IBOutlet weak var dismissKeyboardButton: UIButton!
    let defaults = UserDefaults(suiteName: "group.user.storage") //replace suiteName with your container name
    let defaultValue = ["userUID" : "9597627497"]
   
    @IBOutlet weak var merchantId: UITextField!
  
    
    
    @IBOutlet weak var submit: UIButton!
    
    @IBAction func onSubmit(_ sender: Any) {
        
        defaults!.register(defaults: defaultValue)
        defaults!.set(merchantId.text, forKey: "userUID")
        defaults!.synchronize()
    }
    
    
    override func viewDidLoad() {
		super.viewDidLoad()
     
        
	}
	
	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		setupUI()
	}
	
	@IBAction func dismissKeyboardPressed(_ sender: Any) {
	instructions.resignFirstResponder()
        print(instructions.text ?? "nn")
	}
	
	func setupUI(){
		instructions.text = """
		⚫ Open the settings app
		
		⚫ Go General -> Keyboard -> Keyboards -> Add New Keyboard
		
		⚫ Add CustomKeyboard
		
		⚫ Start typing in any app
		
		⚫ Press 🌐 to switch to the CustomKeyboard keyboard
		
		⚫ Tap this text to start typing!
		"""
       
      
	}

    



}

