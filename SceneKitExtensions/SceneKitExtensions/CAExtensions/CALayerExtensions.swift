//
//  CALayerExtensions.swift
//  SceneKitExtensions
//
//  Created by Diogo Infante on 01/11/21.
//

import UIKit

//MARK: - CALayer Extensions
extension CALayer {
    /// Creates a gradient color to fill received frame
    /// - Parameters:
    ///     - frame: Given frame which will receive gradient
    ///     - colors: List of color gradients
    /// - Returns:
    ///     - CAGradientLayer according to provided spectifications
    static func gradientFill(frame: CGRect, colors: [CGColor])-> CAGradientLayer {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = frame
        gradientLayer.colors = colors
        return gradientLayer
    }
}
