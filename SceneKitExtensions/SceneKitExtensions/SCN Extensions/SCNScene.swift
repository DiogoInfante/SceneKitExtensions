//
//  SCNScene.swift
//  Joints Simulations
//
//  Created by Diogo Infante on 09/01/21.
//
import UIKit
import SceneKit
import Foundation

// MARK: - Generic Scene Element Setut
extension SCNScene {
    /// Adds an ambient light to the scene
    /// - Parameters:
    ///     - ambientLight: Ambient light node
    func addAmbientLight(ambientLightNode: SCNNode) {
        ambientLightNode.light = SCNLight()
        ambientLightNode.light!.type = .ambient
        ambientLightNode.light!.color = UIColor.white
        self.rootNode.addChildNode(ambientLightNode)
    }
    /// Adds a custom light to the scene at desired postion
    /// - Parameters:
    ///     - parentnode: Reffered parent
    ///     - lightNode: SCNNode
    ///     - lightType: Type of light
    ///     - position: Respective position
    func addCustomLight(parentNode: SCNNode, lightNode: SCNNode, lightType: SCNLight.LightType, position: SCNVector3) {
        lightNode.light = SCNLight()
        lightNode.light!.type = lightType
        lightNode.position = position
        parentNode.addChildNode(lightNode)
    }
    /// Adds a camera to the scene at desired postion
    /// - Parameters:
    ///     - cameraNode: camera to add
    ///     - position: Respective position
    func addCamera(cameraNode: SCNNode, position: SCNVector3) {
        cameraNode.camera = SCNCamera()
        cameraNode.position = position
        self.rootNode.addChildNode(cameraNode)
    }
    /// Adds a floor to the scene with image texture
    /// - Parameters:
    ///     - floorNodet Floor to add
    ///     - textureImage: Texture image
    func addFloor(floorNode: SCNNode, textureImage: UIImage) {
        floorNode.geometry = SCNFloor()
        floorNode.physicsBody = .static()
        floorNode.setupMaterial(textureImage: textureImage)
        self.rootNode.addChildNode(floorNode)
    }
    /// Adds a floor to the scene with color texture
    /// - Parameters:
    ///     - floorNodet Floor to add
    ///     - textureImage: Texture color
    func addFloor(floorNode: SCNNode, textureColor: UIColor) {
        floorNode.geometry = SCNFloor()
        floorNode.setupMaterial(textureColor: textureColor)
        self.rootNode.addChildNode(floorNode)
    }
    /// Adds a gradient background into scene
    /// - Parameters:
    ///     - frame: Background grame
    ///     - colors: List of gradient colors
    func addGradientBackground(frame: CGRect, colors: [CGColor]) {
        // Creates a Gradient Layer
        let gradientLayer = CALayer.gradientFill(frame: frame, colors: colors)
        // Sets the gradient layer background into the scene
        self.background.contents = gradientLayer
    }
}
