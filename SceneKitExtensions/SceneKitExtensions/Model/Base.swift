//
//  Joint.swift
//  Joints Simulations
//
//  Created by Diogo Infante on 09/01/21.
//
import SceneKit
import Foundation

class Base: SCNNode {
    /// Base Radius
    let radius: CGFloat
    /// Base Height
    let height: CGFloat
    /// Base Mass
    let mass: CGFloat
    /// Base Color
    let textureColor: UIColor
    /// Initializes a base node
    init(radius: CGFloat, height: CGFloat, mass: CGFloat, textureColor: UIColor) {
        self.radius = radius
        self.height = height
        self.mass = mass
        self.textureColor = textureColor
        super.init()
        /// Link Geometry
        self.geometry = SCNNode(geometry:  SCNCylinder(radius: radius, height: height)).geometry
        /// Link Material
        self.setupMaterial(textureColor: textureColor)
        /// Link Pysicis
        self.setupPhysics(mass: mass, gravityEffect: false, bodyType: .static)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
