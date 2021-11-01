//
//  Joint.swift
//  Joints Simulations
//
//  Created by Diogo Infante on 09/01/21.
//
import SceneKit
import Foundation

class Link: SCNNode {
    
    // Link Radius
    let radius: CGFloat
    
    // Link Height
    let height: CGFloat
    
    // Link Mass
    let mass: CGFloat
    
    // Link Color
    let textureColor: UIColor

    init(radius: CGFloat, height: CGFloat, mass: CGFloat, textureColor: UIColor) {
        
        self.radius = radius
        self.height = height
        self.mass = mass
        self.textureColor = textureColor
        
        super.init()
        
        // Link Geometry
        self.geometry = SCNNode(geometry:  SCNCylinder(radius: radius, height: height)).geometry
        
        // Link Material
        self.setupMaterial(textureColor: textureColor)
        
        // Link Pysicis
        self.setupPhysics(mass: mass, gravityEffect: false, bodyType: .dynamic)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
