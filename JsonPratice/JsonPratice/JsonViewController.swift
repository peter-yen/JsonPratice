import UIKit
import Alamofire

class JsonViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .red
        
        
        guard let url = URL(string: "https://cloud.culture.tw/frontsite/trans/SearchShowAction.do?method=doFindTypeJ&category=6") else { return }
        URLSession.shared.dataTask(with: url) { (data, response, err) in
            if let err = err {
                print(err.localizedDescription)
                return
            }
            if let data = data {
                guard let json = try? JSONSerialization.jsonObject(with: data, options: .mutableContainers) as? [[String: Any]] else { return }
                
                var newdata: [Model] = []
                
                for dict in json[0...1] {
                    let data = Model(dictionary: dict)
                    newdata.append(data)
                }
                print(newdata)
                
            }
        }.resume()
        
    }
    
    
    


}

