//
//  newRoom.swift
//  mini-working
//
//  Created by 笹倉 一也 on 2018/07/05.
//  Copyright © 2018年 笹倉 一也. All rights reserved.
//

import UIKit

class newRoom: UIViewController,  UITextFieldDelegate, UIPickerViewDelegate, UIPickerViewDataSource, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    // UIPickerView.
    private var myUIPicker: UIPickerView!
    // 表示する値の配列.
    private let myTodouhuken: NSArray = [
    
    "北海道","青森県","岩手県","宮城県","秋田県","山形県","福島県",
    "茨城県","栃木県","群馬県","埼玉県","千葉県","東京都","神奈川県",
    "新潟県","富山県","石川県","福井県","山梨県","長野県","岐阜県",
    "静岡県","愛知県","三重県","滋賀県","京都府","大阪府","兵庫県",
    "奈良県","和歌山県","鳥取県","島根県","岡山県","広島県","山口県",
    "徳島県","香川県","愛媛県","高知県","福岡県","佐賀県","長崎県",
    "熊本県","大分県","宮崎県","鹿児島県","沖縄県"
        
    ]
    
    
    @IBOutlet weak var roomNameTF: UITextField!
    @IBOutlet weak var todouhuken: UITextField!
    @IBOutlet weak var cityTF: UITextField!
    @IBOutlet weak var hourMoneyTF: UITextField!
    
    @IBOutlet weak var imageView1: UIImageView!
    @IBOutlet weak var imageView2: UIImageView!
    @IBOutlet weak var imageView3: UIImageView!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        roomNameTF.delegate = self
        todouhuken.delegate = self
        cityTF.delegate = self
        hourMoneyTF.delegate = self

        myUIPicker = UIPickerView()

        myUIPicker.delegate = self
        myUIPicker.dataSource = self
        
        
        // 閉じるボタンのツールバー生成
        let kbToolBar = UIToolbar(frame: CGRect(x: 0, y: 0, width: 320, height: 40))
        kbToolBar.barStyle = UIBarStyle.default  // スタイルを設定
        kbToolBar.sizeToFit()  // 画面幅に合わせてサイズを変更
    
        
        todouhuken.inputView = myUIPicker
        todouhuken.inputAccessoryView = kbToolBar
        
    }
    
    
    
    //PickerViewのコンポーネント(縦）の数を決めるメソッド(実装必須)
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    //pickerに表示する行数（横）を返すデータソースメソッド.(実装必須)
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return myTodouhuken.count
    }
    
    //pickerに表示する値を返すデリゲートメソッド.
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return myTodouhuken[row] as? String
    }
    
    //pickerが選択された際に呼ばれるデリゲートメソッド.
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        todouhuken.text = "\(myTodouhuken[row])"
        print("row: \(row)")
        print("value: \(myTodouhuken[row])")
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        
    }
    
    @IBAction func roomNameTapped(_ sender: Any) {
        
    }
    
    
    
//    登録するボタンを押したら発動
    
    @IBAction func sendData(_ sender: Any) {
        
    }
    
    
//    カメラボタン
    
    @IBAction func cameraTapped(_ sender: Any) {
        let sourceType:UIImagePickerControllerSourceType =
            UIImagePickerControllerSourceType.camera
        // カメラが利用可能かチェック
        if UIImagePickerController.isSourceTypeAvailable(
            UIImagePickerControllerSourceType.camera){
            // インスタンスの作成
            let cameraPicker = UIImagePickerController()
            cameraPicker.sourceType = sourceType
            cameraPicker.delegate = self
            self.present(cameraPicker, animated: true, completion: nil)
            
        }
        else{
            print("error")
            
        }
    }


    
//    写真選択ボタン１２３
    
    @IBAction func selectImage1(_ sender: Any) {
    }
    
    @IBAction func selectImage2(_ sender: Any) {
    }
    
    
    @IBAction func selectImage3(_ sender: Any) {
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
    
//    cancelボタン
    
    @IBAction func cancelBtn(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
    
    }
    
    
}
