//
//  UserTableViewCell.swift
//  Test_BabySittor
//
//  Created by Rodolphe Schnetzer on 28/09/2022.
//

import UIKit
import SDWebImage

class UserTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

   
    @IBOutlet weak var placeUser: UILabel!
    @IBOutlet weak var averageReview: UILabel!
    @IBOutlet weak var phoneNumer: UILabel!
    @IBOutlet weak var view: UIView!
    @IBOutlet weak var avatarUser: UIImageView!
    @IBOutlet weak var mailUser: UILabel!
    @IBOutlet weak var identityUser: UILabel!
    @IBOutlet weak var imageReview: UIImageView!
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    var imageFake = "https://img.freepik.com/free-psd/3d-illustration-person-with-rainbow-sunglasses_23-2149436196.jpg?w=996&t=st=1664406724~exp=1664407324~hmac=00666a5a68231ea106aa6b88400d7aa1ff45faeb80f262db6b23e47c401263e9"
    
    var userCell: UserInfos? {
        didSet{
            guard let firstName = userCell?.firstName else { return }
            guard let lastName = userCell?.lastName else { return }
            guard let imageUrl = URL(string: userCell?.defaultPictureURL ?? imageFake ) else { return }
            
            
            identityUser.text = ("\(firstName) \(lastName)")
            mailUser.text = userCell?.email
            phoneNumer.text = userCell?.telephone
            avatarUser.sd_setImage(with: imageUrl)
            avatarUser.layer.cornerRadius = 20
            view.layer.cornerRadius = 20
            
            if  userCell?.averageReviewScore == nil {
                averageReview.text = "No review"
            } else {
                averageReview.text = String("\(userCell?.averageReviewScore)")
            }
            
//            if userCell?.gender == .male {
//                view.backgroundColor = UIColor(red: 126/255, green: 153/255, blue: 172/255, alpha: 255)
//            } else  {
//                view.backgroundColor = UIColor(red: 184/255, green: 154/255, blue: 191/255, alpha: 255)
//            }
            
            if userCell?.locale == .fr {
                placeUser.text = "🇫🇷"
            } else {
                placeUser.text = "🏴󠁧󠁢󠁥󠁮󠁧󠁿"
            }
        }
    }
    
    
    
}
