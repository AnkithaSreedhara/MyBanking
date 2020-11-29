//
//  CardViewController.swift
//  MyBanking
//
//  Created by Anki on 29/11/20.
//

import UIKit

class CardViewController: UIViewController {
    @IBOutlet weak var detailBackgroundView: UIView!
    @IBOutlet weak var blackBackgroundView: UIView!{
        didSet{
            blackBackgroundView.backgroundColor = .black
            blackBackgroundView.layer.cornerRadius = 30
            blackBackgroundView.clipsToBounds = true
            blackBackgroundView.setBlackGradient()
        }
    }
    @IBOutlet weak var cardNumber: UILabel!{
        didSet{
            cardNumber.font = .systemFont(ofSize: 15)
            cardNumber.textColor = .white
            cardNumber.text = card[0]
        }
    }
    @IBOutlet weak var amountLabel: UILabel!{
        didSet{
            amountLabel.font = .boldSystemFont(ofSize: 20)
            amountLabel.textColor = .white
            amountLabel.text = card[1]
        }
    }
    
    override func viewDidLoad() {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(viewDidTap))
        self.view.addGestureRecognizer(tapGesture)
    }

    var card = [""]
    // MARK: - Init
    class func instantiate() -> CardViewController {
        let name = "\(CardViewController.self)"
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: name) as! CardViewController
        return vc
    }

}
extension CardViewController {
    @objc func viewDidTap() {
        self.dismiss(animated: true)
    }

    @IBAction func closeButtonTapped(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
}

