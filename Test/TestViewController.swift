import UIKit
import MaterialComponents

class TestViewController: UIViewController, UINavigationBarDelegate {
    
    var tabBar: MDCTabBar!
    
    func position(for bar: UIBarPositioning) -> UIBarPosition {
        return .topAttached
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        tabBar.frame.origin = CGPoint.zero
        
        let button = UIButton()
        button.center = CGPoint(x: view.frame.width / 2, y: view.frame.height / 2)
        button.setTitle("Back", for: .normal)
        button.addTarget(self, action: #selector(back), for: .touchUpInside)
    }
    
    @objc func back() {
        if let _ = navigationController {
            navigationController!.popViewController(animated: true)
        } else {
            dismiss(animated: true)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        initTabBar()
    }
    
    func initTabBar() {
        tabBar = MDCTabBar(frame: CGRect(origin: CGPoint.zero, size: CGSize(width: view.bounds.width, height: 20.0)))
        
        tabBar.items = [
            UITabBarItem(title: "All", image: nil, tag: 0),
            UITabBarItem(title: "My", image: nil, tag: 1),
            UITabBarItem(title: "Archive", image: nil, tag: 2)
        ]
        tabBar.barTintColor = UIColor.white
        tabBar.tintColor = UIColor.white
        tabBar.selectedItemTintColor = UIColor.yellow
        tabBar.unselectedItemTintColor = UIColor.black
        tabBar.alignment = .justified
        tabBar.itemAppearance = .titles
        tabBar.autoresizingMask = [.flexibleTopMargin, .flexibleWidth]
        tabBar.sizeToFit()
        tabBar.barTintColor = UIColor.red
        view.addSubview(tabBar)
    }
}
