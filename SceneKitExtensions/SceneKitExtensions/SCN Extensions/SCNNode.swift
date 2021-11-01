//
//  SCNNode.swift
//  Robotics
//
//  Created by Diogo Infante on 10/01/21.
//
import SceneKit
import Foundation

//MARK: - SCNNode Generics Extensions

extension SCNNode {
    
    // Setup node physics
    func setupPhysics(mass: CGFloat, gravityEffect: Bool, bodyType: SCNPhysicsBodyType = .dynamic) {
        self.physicsBody?.mass = mass
        self.physicsBody?.isAffectedByGravity = gravityEffect
        let shape: SCNPhysicsShape = SCNPhysicsShape(geometry: self.geometry!, options: nil)
        self.physicsBody = SCNPhysicsBody(type: bodyType, shape: shape)
    }
    
    // Setup node physics
    func setupDetailedMeshPhysics(mass: CGFloat, gravityEffect: Bool) {
        self.physicsBody?.mass = mass
        self.physicsBody?.isAffectedByGravity = gravityEffect
        let shape: SCNPhysicsShape = SCNPhysicsShape(geometry: self.geometry!, options: [SCNPhysicsShape.Option.type: SCNPhysicsShape.ShapeType.concavePolyhedron])
        self.physicsBody = SCNPhysicsBody(type: .static, shape: shape)
    }
    
    // Setup node material from UIImage
    func setupMaterial(textureImage: UIImage, intesity: CGFloat = 1) {
        let material = SCNMaterial()
        material.diffuse.contents = textureImage
        material.diffuse.intensity = intesity
        self.geometry?.materials = [material]
    }
    
    // Setup node material from UIColor
    func setupMaterial(textureColor: UIColor, intesity: CGFloat = 1) {
        let material = SCNMaterial()
        material.diffuse.contents = textureColor
        material.diffuse.intensity = intesity
        self.geometry?.materials = [material]
    }
    
    // Add child node to respective position
    func addChildNode(childNode: SCNNode, postion: SCNVector3) {
        self.addChildNode(childNode)
        childNode.position = postion
    }
}
