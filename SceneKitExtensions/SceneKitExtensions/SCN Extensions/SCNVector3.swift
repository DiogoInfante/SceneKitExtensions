//
//  SCNVector3.swift
//  Joints Simulations
//
//  Created by Diogo Infante on 09/01/21.
//
import SceneKit
import Foundation

//MARK: - SCNVector3 Extensions
extension SCNVector3 {
    /// Null vector
    static var nullVector = SCNVector3(0,0,0)
    /// Mutiplies vector by a scalar factor
    /// - Parameters:
    ///     - lhis: SCNVector3
    ///     - factor: multiplyBy
    /// - Returns: SCNVector3 multiplied by given factor
    static func * (lhs: SCNVector3, factor: Float)-> SCNVector3 {
        return SCNVector3(x: lhs.x*factor, y: lhs.y*factor, z: lhs.z*factor)
    }
}
