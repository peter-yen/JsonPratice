import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        self.setupRootVC()
        
        return true
    }

    
    func setupRootVC() {
        
        self.window?.makeKeyAndVisible()
        self.window?.rootViewController = JsonViewController()
    }

}

