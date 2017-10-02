# Injectable
Dependency Injection for Swift.

The dependency injection pattern leads to code that's modular and testable, and Guice makes it easy to write. 

[Google Guice](https://github.com/google/guice/wiki/Motivation)

## Installation

```
pod 'Injectable'
```

## Usage

``` swift
// ViewController.swift
class ViewController: UIViewController {

    @IBAction func show(_ sender: Any) {
        let viewController: InjectableViewController = InjectableViewController(with: .init(color: .green))
        self.present(viewController, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
```

``` swift
// InjectableViewController.swift
protocol Colorable: Injectable {
    init(with dependency: Dependency)
}

class InjectableViewController: UIViewController, Colorable {

    required init(with dependency: InjectableViewController.Dependency) {
        super.init(nibName: nil, bundle: nil)
        self.inject(dependency)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    struct Dependency {
        var color: UIColor
    }

    func inject(_ dependency: InjectableViewController.Dependency) {
        self.view.backgroundColor = dependency.color
    }
}
```
