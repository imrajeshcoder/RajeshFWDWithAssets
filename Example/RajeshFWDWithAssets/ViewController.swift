//
//  ViewController.swift
//  RajeshFWDWithAssets
//
//  Created by imrajeshcoder on 10/23/2023.
//  Copyright (c) 2023 imrajeshcoder. All rights reserved.
//

import UIKit
import RajeshFWDWithAssets

class ViewController: UIViewController {

    @IBOutlet weak var tmpImage: UIImageView!
    let objRajeshDFW = rajeshFWDWithAssets()
    let objLoginVC = LoginVC()
    override func viewDidLoad() {
        super.viewDidLoad()

        objRajeshDFW.printHelloWord()
     
        tmpImage.image = loadLoginImage(imageName: "imgLogIn")
    }
    override func viewDidAppear(_ animated: Bool) {
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnAction_LoginClicked(_ sender: UIButton) {
        present(objLoginVC, animated: true)
    }
    
    func loadLoginImage(imageName: String) -> UIImage?  {
        guard let bundle: Bundle = Bundle(identifier: "org.cocoapods.RajeshFWDWithAssets") else { return nil }
    
        return UIImage(named: imageName, in: bundle, compatibleWith: nil)

    }
}
