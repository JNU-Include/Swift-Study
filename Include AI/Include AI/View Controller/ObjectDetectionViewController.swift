//
//  ObjectDetectionViewController.swift
//  Include AI
//
//  Created by 이민혁 on 2017. 8. 9..
//  Copyright © 2017년 이민혁. All rights reserved.
//

import UIKit

class ObjectDetectionViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    @IBAction func addPhoto(_ sender: UIBarButtonItem) {
        let actionSheet = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        
        let importFromAlbum = UIAlertAction(title: "앨범에서 선택하기", style: .default) { _ in
            
        }
        
        let takePhoto = UIAlertAction(title: "카메라로 찍기", style: .default) { _ in
            
        }
        
        let cancle = UIAlertAction(title: "취소하기", style: .cancel)
        
        actionSheet.addAction(importFromAlbum)
        actionSheet.addAction(takePhoto)
        actionSheet.addAction(cancle)
        
        self.present(actionSheet, animated: true, completion: nil)
    }
    


}
