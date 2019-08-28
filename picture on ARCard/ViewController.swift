//
//  ViewController.swift
//  picture on ARCard
//
//  Created by 吉冨優太 on 2019/08/27.
//  Copyright © 2019 吉冨優太. All rights reserved.
//

import UIKit
import SceneKit
import ARKit

class ViewController: UIViewController {
    @IBOutlet weak var sceneView: ARSCNView!
    @IBOutlet weak var button_layer1: UIButton!
    
    let defaultConfiguration: ARWorldTrackingConfiguration = {
        let configuration = ARWorldTrackingConfiguration()
        
        let images = ARReferenceImage.referenceImages(inGroupNamed: "AR Resources", bundle: nil)
        
        configuration.detectionImages = images
        configuration.planeDetection = .horizontal
        configuration.environmentTexturing = .automatic
        return configuration
    }()
    
    let image = UIImage(named:"art.scnassets/button_layer1.png")!
    var image2 = UIImage(named: "art.scnassets/grandfront_layer1.png")!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sceneView.delegate = self
        sceneView.debugOptions = [ARSCNDebugOptions.showFeaturePoints]
        button_layer1.setImage(image, for: .normal)
        button_layer1.isHidden = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        sceneView.session.run(defaultConfiguration)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        sceneView.session.pause()
    }
    
    @IBAction func button_layer1Tapped(_ sender: Any) {
        self.button_layer1.isHidden = true
        setImageToScene(image: image2, scale: 0.17, position: SCNVector3(-0.07, -0.10, -0.5))
    }
}

extension ViewController: ARSCNViewDelegate {
    
    private func setImageToScene(image: UIImage, scale: CGFloat, position: SCNVector3) {
        if let camera = sceneView.pointOfView {
            //let position = SCNVector3(x: 0, y: 0, z: -0.5) // 偏差のベクトルを生成する
            let convertPosition = camera.convertPosition(position, to: nil)
            let node = createPhotoNode(image, position: convertPosition, scale: scale)
            node.eulerAngles = camera.eulerAngles
            self.sceneView.scene.rootNode.addChildNode(node)
        }
    }
    
    private func createPhotoNode(_ image: UIImage, position: SCNVector3, scale: CGFloat) -> SCNNode {
        let node = SCNNode()
        let geometry = SCNBox(width: image.size.width * scale / image.size.height,
                              height: scale,
                              length: 0.00000001,
                              chamferRadius: 0.0)
        geometry.firstMaterial?.diffuse.contents = image
        node.geometry = geometry
        node.position = position
        return node
    }
    
    
    
    func renderer(_ renderer: SCNSceneRenderer, didAdd node: SCNNode, for anchor: ARAnchor) {
        guard let imageAnchor = anchor as? ARImageAnchor else {
            return
        }
        DispatchQueue.main.async {
            self.button_layer1.isHidden = false
        }
    }
}
