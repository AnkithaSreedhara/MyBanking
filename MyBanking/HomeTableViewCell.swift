//
//  HomeTableViewCell.swift
//  MyBanking
//
//  Created by Anki on 26/11/20.
//

import UIKit

class HomeTableViewCell: UITableViewCell {

    @IBOutlet weak var type: UILabel!{
        didSet{
            type.font = .boldSystemFont(ofSize: 16)
            type.textColor = .black
        }
    }
    @IBOutlet weak var time: UILabel!{
        didSet{
            time.font = .systemFont(ofSize: 14)
            time.textColor = .darkGray
        }
    }
    @IBOutlet weak var amount: UILabel!{
        didSet{
            amount.font = .boldSystemFont(ofSize: 18)
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
    }

}
