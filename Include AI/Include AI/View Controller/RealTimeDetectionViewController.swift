//
//  RealTimeDetectionViewController.swift
//  Include AI
//
//  Created by 이민혁 on 2017. 8. 15..
//  Copyright © 2017년 이민혁. All rights reserved.
//

import UIKit

class RealTimeDetectionViewController: UIViewController {

    @IBOutlet weak var cameraView: UIView!

    var videoCapture: VideoCapture!

    override func viewDidLoad() {
        super.viewDidLoad()

        let spec = VideoSpec(fps: 3, size: CGSize(width: 1280, height: 720))
        self.videoCapture = VideoCapture(cameraType: .back, preferredSpec: spec, previewContainer: self.cameraView.layer)
        self.videoCapture.imageBufferHandler = { (imageBuffer, timestamp, outputBuffer) in

        }
        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        if let videoCapture = self.videoCapture {
            videoCapture.startCapture()
        }
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)

        if let videoCapture = self.videoCapture {
            videoCapture.stopCapture()
        }
    }
  
}
