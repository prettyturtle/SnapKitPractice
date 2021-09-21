//
//  ViewController.swift
//  SnapKitPractice
//
//  Created by yc on 2021/09/22.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    var redView = UIView()
    var blueView = UIView()
    var orangeView = UIView()
    var purpleView = UIView()
    var blackView = UIView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        redView.backgroundColor = .red
        blueView.backgroundColor = .blue
        orangeView.backgroundColor = .orange
        purpleView.backgroundColor = .purple
        blackView.backgroundColor = .black
        
        view.addSubview(blueView)
        view.addSubview(orangeView)
        view.addSubview(purpleView)
        view.addSubview(redView)
        view.addSubview(blackView)

        redView.snp.makeConstraints { make in
            make.width.height.equalTo(100)
            make.center.equalTo(view)
        }
        blueView.snp.makeConstraints { make in
            make.leading.equalTo(20)
            make.trailing.equalTo(-20)
            make.height.equalTo(100)
            make.top.equalTo(orangeView.snp.bottom).offset(100)
            make.bottom.equalTo(purpleView.snp.top).offset(-30)

        }
        orangeView.snp.makeConstraints { make in
//            make.top.equalTo(view.safeAreaLayoutGuide.snp.top)
//            make.leading.equalTo(20)
//            make.trailing.equalTo(-20)
            make.top.leading.trailing.equalToSuperview()
            make.height.equalTo(50)
        }
        purpleView.snp.makeConstraints { make in
            make.height.equalTo(50)
            make.bottom.equalTo(0)
            make.leading.trailing.equalToSuperview()
        }
        blackView.snp.makeConstraints { make in
            make.center.equalTo(blueView)
            make.width.height.equalTo(50)
        }
    }
    

}

