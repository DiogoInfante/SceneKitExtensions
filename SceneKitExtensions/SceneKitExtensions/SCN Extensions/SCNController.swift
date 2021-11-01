//
//  SceneKitController.swift
//  Joints Simulations
//
//  Created by Diogo Infante on 09/01/21.
//
import SceneKit

//MARK: - SCN Protocol

/// SCN Controller must contain a SCNScene and SCNView
protocol SCNController: UIViewController {
    var scene: SCNScene { get set }
    var sceneView: SCNView { get set }
}
//MARK: - SCN Controller Extensions
extension SCNController {
    /// Setup scene view properties
    func setupSceneView() {
        /// Creates a scene view
        sceneView = SCNView(frame: view.frame)
        /// Adds subview into main view
        view.addSubview(sceneView)
        /// Set the scene to the view
        sceneView.scene = self.scene
        /// Allows the user to manipulate the camera
        sceneView.allowsCameraControl = true
        /// Setup Camera Properties
        sceneView.setupCameraViewProperties(interactionMode: .orbitAngleMapping)
        /// Scene is playing
        sceneView.isPlaying = true
    }
}
//MARK: - SCN Controller Debug Extensions
extension SCNController {
    /// Debug Mode
    func debugMode() {
        /// Displays Physics Bodies
        sceneView.debugOptions = .showPhysicsShapes
        /// Show statistics such as fps and timing information
        sceneView.showsStatistics = true
    }
}
