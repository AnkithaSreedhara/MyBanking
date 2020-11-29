//
//  HomeCollectionViewCell.swift
//  MyBanking
//
//  Created by Anki on 26/11/20.
//

import UIKit

class HomeCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var blackBackgroundView: UIView!{
        didSet{
            blackBackgroundView.backgroundColor = .black
            blackBackgroundView.layer.cornerRadius = 30
            blackBackgroundView.clipsToBounds = true
        }
    }
    @IBOutlet weak var cardNumber: UILabel!{
        didSet{
            cardNumber.font = .systemFont(ofSize: 15)
            cardNumber.textColor = .white
        }
    }
    @IBOutlet weak var amountLabel: UILabel!{
        didSet{
            amountLabel.font = .boldSystemFont(ofSize: 20)
            amountLabel.textColor = .white
        }
    }
    
}
