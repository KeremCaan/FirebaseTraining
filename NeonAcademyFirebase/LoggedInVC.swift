//
//  LoggedInVC.swift
//  NeonAcademyFirebase
//
//  Created by Kerem Caan on 10.08.2023.
//

import UIKit
import FirebaseAuth
import Firebase

class LoggedInVC: UIViewController {
    
    let label:UILabel = UILabel()
    let button: UIButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()

        configureUI()
    
    }
    

    func configureUI() {
        self.navigationItem.hidesBackButton = true
        
        view.backgroundColor = .white
        view.addSubview(label)
        label.text = "Login successful."
        label.textAlignment = .center
        label.font = .boldSystemFont(ofSize: 25)
        label.snp.makeConstraints { make in
            make.edges.equalToSuperview()
            make.width.equalToSuperview()
        }
        
        view.addSubview(button)
        button.setTitle("Log Out", for: .normal)
        button.addTarget(self, action: #selector(signOutTapped), for: .touchUpInside)
        button.backgroundColor = .blue
        button.snp.makeConstraints { make in
            make.bottom.equalToSuperview().offset(-200)
            make.centerX.equalToSuperview()
            make.width.equalTo(75)
        }
    }
    
    @objc func signOutTapped() {
        let auth = Auth.auth()
        
        do{
           try auth.signOut()
            print("signed out")
        } catch let signOutError {
            print("error")
        }
        
        self.navigationController?.pushViewController(ViewController(), animated: true)
    }
}
