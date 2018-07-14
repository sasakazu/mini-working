//
//  newRoom.swift
//  mini-working
//
//  Created by 笹倉 一也 on 2018/07/05.
//  Copyright © 2018年 笹倉 一也. All rights reserved.
//

import UIKit

class newRoom: UIViewController,  UITextFieldDelegate {
    
    
    
    @IBOutlet weak var roomNameTF: UITextField!
    @IBOutlet weak var todouhuken: UITextField!
    @IBOutlet weak var cityTF: UITextField!
    @IBOutlet weak var hourMoneyTF: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        roomNameTF.delegate = self
        todouhuken.delegate = self
        cityTF.delegate = self
        hourMoneyTF.delegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        
    }
    
    @IBAction func roomNameTapped(_ sender: Any) {
        
    }
    
    
    
//    登録するボタンを押したら発動
    
    @IBAction func sendData(_ sender: Any) {
        
    }
    
    
    
    
// キーボードを閉じる
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        roomNameTF.resignFirstResponder()
        todouhuken.resignFirstResponder()
        cityTF.resignFirstResponder()
        hourMoneyTF.resignFirstResponder()
        
        return true
        
    }
    
//    別のところをタッチしたら外れる
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        hourMoneyTF.text = hourMoneyTF.text
        
        self.view.endEditing(true)
        
    }
    
    
    
    
}
