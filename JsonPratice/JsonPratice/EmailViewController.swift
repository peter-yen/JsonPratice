import UIKit
import MessageUI

class EmailViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if MFMailComposeViewController.canSendMail() {
            
            let mail = MFMailComposeViewController()
            mail.mailComposeDelegate = self
            mail.setToRecipients(["raygaryswift@gmail.com"])
            mail.setSubject("檢舉毛毛: ")
            mail.setMessageBody("<p> 我想檢舉毛毛: \n </p>", isHTML: true)
            self.present(mail, animated: true)
        } else {
            // show failure alert
            print("Mail service not available")
            
            let email = "raygaryswift@gmail.com"
            if let url = URL(string: "mailto:\(email)") {
                UIApplication.shared.open(url)
            }
        }
    }
    
}

extension EmailViewController: MFMailComposeViewControllerDelegate {
    
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        controller.dismiss(animated: true)
    }
}

