//
//  ImageBundle.swift
//  LXPhotosManagerModule
//
//  Created by Mac on 2020/4/19.
//  Copyright © 2020 李响. All rights reserved.
// 加载图片扩展

import UIKit

fileprivate class ConvenienceBundlePath {}
extension UIImage {
    
       static func named(_ imageName: String?) -> UIImage? {
           guard let imageName = imageName else { return nil }
           return imageBundle.imageNamed(imageName)
       }
       
       private static var imageBundle = ConvenienceBundle(bundlePath: Bundle(for: ConvenienceBundlePath.self).bundlePath, bundleName: "NineGridPhotos.bundle")
}