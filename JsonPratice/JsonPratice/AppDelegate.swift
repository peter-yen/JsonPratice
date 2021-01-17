import UIKit
import Firebase


@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        FirebaseApp.configure()
        self.setupRootVC()
        
        return true
    }

    
    func setupRootVC() {
        
        self.window?.makeKeyAndVisible()
        self.window?.rootViewController = JsonViewController()
    }

}

