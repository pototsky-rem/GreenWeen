//
//  PhotoDetailController.swift
//  GreenWeen
//
//  Created by Rem on 27.06.21.
//

import UIKit
import Hero

class PhotoDetailController: UIViewController {
    
    var data: String?
    
    private let photoImageView = UIImageView()
    private lazy var sizeWidth = view.frame.width
    private lazy var sizeHeight = view.frame.height / 2
    
    @objc func pressed() {
        dismiss(animated: true)
    }
    
    @objc private func didPinch(_ gesture: UIPinchGestureRecognizer) {
        if gesture.state == .changed {
            let scale = gesture.scale
            print(scale)
//            let frame = photoImageView.frame
//            photoImageView.frame = CGRect(
//                x: 0,
//                y: 0,
//                width: sizeWidth * scale,
//                height: sizeHeight * scale)
//            photoImageView.center = view.center
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        photoImageView.frame = CGRect(x: 0, y: 0, width: sizeWidth, height: sizeHeight)
        photoImageView.contentMode = .scaleToFill
        photoImageView.center = view.center
        photoImageView.image = UIImage(named: data!)
        photoImageView.hero.id = data

        self.hero.isEnabled = true
        
        view.backgroundColor = .systemBackground
        
        let closeButton: UIButton = {
            let largeConfig = UIImage.SymbolConfiguration(
                pointSize: 140,
                weight: .medium,
                scale: .small)
            let largeBoldDoc = UIImage(systemName: "xmark.circle.fill", withConfiguration: largeConfig)
            let button = UIButton(frame: CGRect(
                                    x: 15,
                                    y: 43,
                                    width: 35,
                                    height: 35))
            button.setImage(largeBoldDoc, for: .normal)
            button.tintColor = .systemGray
            button.addTarget(self, action: #selector(pressed), for: .touchUpInside)
            button.hero.modifiers = [.translate(x: 70), .fade]
            return button
        }()
        view.addSubview(closeButton)
        view.addSubview(photoImageView)
        addGesture()
    }
    
     func addGesture() {
        let pinchGesture = UIPinchGestureRecognizer(target: self, action: #selector(didPinch(_:)))
        photoImageView.addGestureRecognizer(pinchGesture)
    }

}
