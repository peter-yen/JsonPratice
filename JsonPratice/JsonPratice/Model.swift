
import Foundation


class Model {
    
    var uid: String
    var title: String
    var location: String
    var latitude: String
    var longitude: String
    
    init(uid: String, title: String, latitude: String, longitude: String, location: String) {
       
        self.uid = uid
        self.title = title
        self.location = location
        self.latitude = latitude
        self.longitude = longitude
    }
    
    init(dictionary: [String: Any]) {
        
        self.uid = dictionary["UID"] as! String
        self.title = dictionary["title"] as! String
        
        if let loca = dictionary["showInfo"] as? [String: Any] {
            
            self.location = loca["location"] as! String
        } else { 
            self.location = ""
        }
        if let lat = dictionary["showInfo"] as? [String: Any] {
            self.latitude = lat["latitude"] as! String
        } else{
            self.latitude = ""
        }
        if let long = dictionary["showInfo"] as? [String: Any] {
            self.longitude = long["longitude"] as! String
        } else {
            self.longitude = ""
        }
    }
}
