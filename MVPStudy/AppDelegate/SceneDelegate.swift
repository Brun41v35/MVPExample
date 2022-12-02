import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    // MARK: - Public Properties
    
    var window: UIWindow?
    
    // MARK: - Public Functions
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        let window = UIWindow(windowScene: windowScene)
        let presenter = NamePresenter()
        let nameView = NameView()
        window.rootViewController = NameViewController(presenter: presenter,
                                                       nameView: nameView)
        
        self.window = window
        window.makeKeyAndVisible()
    }
}

