//
//  ViewController.swift
//  ShoRyuKenAPP
//
//  Created by kimura yuta on 2022/10/19.
//

import UIKit

class ViewController: UIViewController {
    
    // imageViewと接続
    @IBOutlet weak var charaImage: UIImageView!
    // attack画像の配列
    var imageArrayAttack : Array<UIImage> = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 初期画像を設定
        let initialImage = UIImage(named: "attack1")
        charaImage.image = initialImage
        
        // attack画像を配列に代入
        while let attackImage = UIImage(named: "attack\(imageArrayAttack.count+1)") {
                    imageArrayAttack.append(attackImage)
        }
    }
    
    override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()

    }

    // buttonと接続
    @IBAction func attackButton(_ sender: Any) {
        // アニメーションの適用
        charaImage.animationImages = imageArrayAttack
        // 1.5秒間隔
        charaImage.animationDuration = 1.5
        // 1回繰り返し
        charaImage.animationRepeatCount = 1
        // アニメーションを開始
        charaImage.startAnimating()
    }
    

}

