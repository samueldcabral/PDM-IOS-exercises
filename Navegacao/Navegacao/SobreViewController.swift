//
//  SobreViewController.swift
//  Navegacao
//
//  Created by IFPB on 07/11/2019.
//  Copyright © 2019 IFPB. All rights reserved.
//

import UIKit

class SobreViewController: UIViewController {

    @IBOutlet weak var lbNome: UILabel!
    var pessoa : Pessoa!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("sobre: viewDidLoad")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        print("sobre: viewWillAppear")
        self.lbNome.text = self.pessoa.nome

    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        
        print("sobre: viewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        
        print("sobre: viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(true)
        
        print("sobre: viewDidDisappear")

    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.dismiss(animated: true, completion: nil)
    }
}
