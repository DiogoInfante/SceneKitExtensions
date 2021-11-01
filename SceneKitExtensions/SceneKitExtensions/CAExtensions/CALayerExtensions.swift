//
//  CALayerExtensions.swift
//  SceneKitExtensions
//
//  Created by Diogo Infante on 01/11/21.
//

import UIKit

//MARK: - CALayer Extensions

extension CALayer {
    
    // Creates a gradient color to fill received frame
    static func gradientFill(frame: CGRect, colors: [CGColor])-> CAGradientLayer {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = frame
        gradientLayer.colors = colors
        return gradientLayer
    }
}
