/*
 
 Erica Sadun, http://ericasadun.com
 
 */

import UIKit

class Controller: UIViewController {
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
}

public class MyViewController: UIViewController {
    public override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
    }
}

@UIApplicationMain class AppDelegate: UIResponder,
UIApplicationDelegate, UINavigationControllerDelegate {
    var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey : Any]? = nil) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        if let window = window {
            let vc = MyViewController(nibName: nil, bundle: nil)
            window.rootViewController = vc
            window.makeKeyAndVisible()
        }
        return true
    }
}
