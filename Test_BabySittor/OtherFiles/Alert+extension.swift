//
//  Alert+extension.swift
//  Test_BabySittor
//
//  Created by Rodolphe Schnetzer on 29/09/2022.
//

import Foundation
import UIKit

extension UIViewController {
    func alertNoData(){
        let alert = UIAlertController(title: "No Data", message: "Oups...an Error", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Try Later", style: .default))
        present(alert, animated: true)
    }
}
