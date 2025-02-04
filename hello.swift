import UIKit

class ViewController: UIViewController {
    
    // 创建标签和按钮
    let label: UILabel = {
        let lbl = UILabel()
        lbl.text = "Hello, World!"
        lbl.font = UIFont.systemFont(ofSize: 24)
        lbl.textAlignment = .center
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    let button: UIButton = {
        let btn = UIButton(type: .system)
        btn.setTitle("Click Me", for: .normal)
        btn.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        // 添加控件到视图
        view.addSubview(label)
        view.addSubview(button)
        
        // 设置约束，让它们居中
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -50),
            
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 20)
        ])
        
        // 监听按钮点击事件
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
    }
    
    // 按钮点击后修改标签文本
    @objc func buttonTapped() {
        label.text = "You clicked the button!"
    }
}
