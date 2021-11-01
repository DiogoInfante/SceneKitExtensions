//
//  SCNView.swift
//  Robotics
//
//  Created by Diogo Infante on 10/01/21.
//
import SceneKit
import Foundation

//MARK: - SCNView Extensions
extension SCNView {
    /// Setup camera beahvior related to view
    /// - Parameters:
    ///     - interactionMode: Camera Interaction Mode
    func setupCameraViewProperties(interactionMode: SCNInteractionMode) {
        self.allowsCameraControl = true
        self.defaultCameraController.interactionMode = interactionMode
        self.defaultCameraController.inertiaEnabled = true
    }
}
