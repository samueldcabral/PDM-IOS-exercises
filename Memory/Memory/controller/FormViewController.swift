//
//  ViewController.swift
//  Memory
//
//  Created by IFPB on 06/12/2019.
//  Copyright © 2019 IFPB. All rights reserved.
//

import UIKit

class FormViewController: UIViewController {
    var dao: MemoriaDAO!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.dao = MemoriaDAO()
    }

    @IBOutlet weak var tfTitulo: UITextField!
    @IBOutlet weak var tvComentarios: UITextView!
    @IBOutlet weak var swGostou: UISwitch!
    
    @IBOutlet weak var lbNota: UILabel!
    @IBOutlet weak var stNota: UIStepper!
    @IBAction func stNota(_ sender: Any) {
        self.lbNota.text = String(Int(self.stNota.value))
    }
    
    @IBOutlet weak var lbRecomendar: UILabel!
    @IBOutlet weak var slRecomendar: UISlider!
    @IBAction func slRecomendar(_ sender: Any) {
        self.lbRecomendar.text = String(Int(slRecomendar.value))
    }
    
    @IBAction func btSave(_ sender: Any) {
        let assunto = self.tfTitulo.text
        let gostou = self.swGostou.isOn
        let comentarios = self.tvComentarios.text
        let nota = Int(self.stNota.value)
        let recomendacao = Int(self.slRecomendar.value)

        
        if (self.dao.add(assunto: assunto!, gostou: gostou, comentarios: comentarios!, nota: nota, recomendacao: recomendacao)) {
            
            let alert = UIAlertController(title: "Atencao", message: "Deu certo", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.cancel, handler: {
                (UIAlertAction) in self.navigationController?.popViewController(animated: true)
            }))
            
            self.present(alert, animated: true, completion: nil)
            
        }else{
            
            let alert = UIAlertController(title: "Atencao", message: "Deu ruim", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.cancel, handler: nil))
            self.present(alert, animated: true, completion: nil)
            
        }
    
    }
}

