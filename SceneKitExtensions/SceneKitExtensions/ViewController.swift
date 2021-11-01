//
//  ViewController.swift
//  SceneKitExtensions
//
//  Created by Diogo Infante on 08/01/21.
//

import SceneKit
import QuartzCore

class ViewController: UIViewController, SCNController {
    
    // SCN Controller properties
    var scene = SCNScene()

    var sceneView = SCNView()
    
    // Camera
    let cameraNode = SCNNode()
    
    // Floor
    let floorNode = SCNNode()
    
    // Ambient Light
    let ambientLight = SCNNode()
    
    var base = SCNNode()
    
    var firstConnector = SCNNode()
    
    // Setup scene referent to current view controller with desired properties
    fileprivate func setupScene() {
        scene.addAmbientLight(ambientLightNode: ambientLight)
        scene.addCamera(cameraNode: cameraNode, position: SCNVector3(40, 20, 200))
        scene.addFloor(floorNode: floorNode, textureImage: UIImage(named: "floorTexture")!)
        scene.addGradientBackground(frame: view.frame, colors: [UIColor.blue.cgColor, UIColor.cyan.cgColor])
    }
    
    fileprivate func baseSetup() {
        for child in base.childNodes {
            child.setupMaterial(textureColor: .black)
            child.setupPhysics(mass: 30, gravityEffect: false, bodyType: .static)
            child.setupDetailedMeshPhysics(mass: 30, gravityEffect: false)
        }
    }
    
    fileprivate func firstConnectorSetup() {
        firstConnector.setupMaterial(textureColor: .darkGray)

        for child in firstConnector.childNodes {
            child.setupPhysics(mass: 2, gravityEffect: false, bodyType: .static)
            child.setupMaterial(textureColor: .darkGray)

        }
        firstConnector.setupPhysics(mass: 10, gravityEffect: false, bodyType: .dynamic)
    }
    
    // View did laod
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scene = SCNScene(named: "art.scnassets/RobotManipulatorScene.scn")!
        
        base = scene.rootNode.childNode(withName: "1_Base", recursively: true)!
    
        firstConnector = scene.rootNode.childNode(withName: "2_FirstConnector", recursively: true)!

        // Base setup
        baseSetup()
        
        // First Connector setup
        firstConnectorSetup()
                
        // Scene view setup
        setupSceneView()
        
        // Scene properties setup
        setupScene()

        // Debug Mode
        debugMode()
    }
    
    // Release any cached data, images, etc that aren't in use
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}





