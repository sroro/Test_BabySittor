//
//  ViewController.swift
//  Test_BabySittor
//
//  Created by Rodolphe Schnetzer on 28/09/2022.
//

import UIKit

class UtilisateursViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.register(UINib(nibName: "UserTableViewCell", bundle: nil), forCellReuseIdentifier: "userCell")
        getDataUsers()
    }
    
    var user = UserNetworkService()
    var arrayDataUsers = [UserInfos]()
    var numberOfUsers = [Int]()
    
    func getDataUsers() {
        user.getUser { [weak self] resultat in
            DispatchQueue.main.async {
            switch resultat{
            case.failure(_):
                self?.alertNoData()
            case.success(let result):
                
                    
                    for  data in result.data {
                        self?.arrayDataUsers.append(data)
                        self?.numberOfUsers.append(data.id)
                        self?.tableView.reloadData()
                    }
                }
                
            }
            
        }
        
    }
    
    
}


extension UtilisateursViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        numberOfUsers.count
    }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "userCell", for: indexPath) as? UserTableViewCell else { return UITableViewCell()}
        
        cell.userCell = arrayDataUsers[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 145
    }
    
   
    
    
}
