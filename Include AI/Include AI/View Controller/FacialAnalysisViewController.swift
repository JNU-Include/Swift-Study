//
//  FacialAnalysisViewController.swift
//  Include AI
//
//  Created by 이민혁 on 2017. 8. 19..
//  Copyright © 2017년 이민혁. All rights reserved.
//

import UIKit
import Vision

class FacialAnalysisViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    var selectedImage: UIImage? {
        didSet {
            self.blurredImageView.image = selectedImage
            self.selectedImageView.image = selectedImage
        }
    }
    
    var selectedCiImage: CIImage? {
        get {
            if let selectedImage = self.selectedImage {
                return CIImage(image: selectedImage)
            } else {
                return nil
            }
        }
    }
    
    @IBOutlet weak var blurredImageView: UIImageView!
    @IBOutlet weak var selectedImageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func addPhoto(_ sender: UIBarButtonItem) {
        let actionSheet = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        
        let importFromAlbum = UIAlertAction(title: "앨범에서 선택하기", style: .default) { _ in
            let picker = UIImagePickerController()
            picker.delegate = self
            picker.sourceType = .savedPhotosAlbum
            picker.allowsEditing = true
            self.present(picker, animated: true, completion: nil)
        }
        
        let takePhoto = UIAlertAction(title: "카메라로 찍기", style: .default) { _ in
            let picker = UIImagePickerController()
            picker.delegate = self
            picker.sourceType = .camera
            picker.cameraCaptureMode = .photo
            picker.allowsEditing = true
            self.present(picker, animated: true, completion: nil)
        }
        
        let cancle = UIAlertAction(title: "취소하기", style: .cancel)
        
        actionSheet.addAction(importFromAlbum)
        actionSheet.addAction(takePhoto)
        actionSheet.addAction(cancle)
        
        self.present(actionSheet, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        picker.dismiss(animated: true, completion: nil)
        if let uiImage = info[UIImagePickerControllerEditedImage] as? UIImage {
            self.selectedImage = uiImage
            DispatchQueue.global(qos: .userInitiated).async {
                self.detectFaces()
            }
        }
    }
    
    func detectFaces() {
        if let ciImage = self.selectedCiImage {
            let detectFaceRequest = VNDetectFaceRectanglesRequest(completionHandler: self.handleFaces)
            let requestHandler = VNImageRequestHandler(ciImage: ciImage, options: [:])
            
            do {
                try requestHandler.perform([detectFaceRequest])
            } catch {
                print(error)
            }
        }
    }
    
    func handleFaces(request: VNRequest, error: Error?) {
        if let faces = request.results as? [VNFaceObservation] {
            for face in faces {
                print("face : \(face.boundingBox)")
            }
        }
    }
    
    
    

}
