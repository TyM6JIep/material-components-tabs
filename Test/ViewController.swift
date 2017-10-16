import UIKit

class ViewController: UIViewController {

    @IBAction func tapViewController(_ sender: Any) {
        present(TestViewController(), animated: true)
    }
    @IBAction func tapNavigationController(_ sender: Any) {
        let controller = UINavigationController(rootViewController: TestViewController())
        let bar = controller.navigationBar
        bar.barTintColor = UIColor.green
        bar.isTranslucent = false
        bar.titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.black]
        bar.tintColor = UIColor.red
        bar.shadowImage = UIImage()

        controller.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Test", style: UIBarButtonItemStyle.plain, target: self, action: nil)

        present(controller, animated: true)
    }
    
    @IBAction func tapTabController(_ sender: Any) {
        let controller = TestViewController()
        let tabController = UITabBarController()
        
        let tabItem = UINavigationController(rootViewController:  controller)
        controller.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Test", style: UIBarButtonItemStyle.plain, target: self, action: nil)
        
        let bar = tabItem.navigationBar
        bar.barTintColor = UIColor.green
        bar.isTranslucent = false
        bar.titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.black]
        bar.tintColor = UIColor.red
        bar.shadowImage = UIImage()

        tabController.viewControllers = [tabItem]
        tabController.tabBar.isHidden = true
        present(tabController, animated: true)
    }
}
