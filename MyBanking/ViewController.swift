//
//  ViewController.swift
//  MyBanking
//
//  Created by Anki on 26/11/20.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var cards: UICollectionView!
    @IBOutlet weak var transactions: UITableView!
    @IBOutlet weak var transactionsTitleLabel: UILabel!
    let transactionsArray = [["Taxi","Just Now", "$4"],["Grocery","12.00 PM", "$58"],["Shopping","8.00 AM", "$499"],["Gym","12.11.20","$80"]]
    let cardsArray=[["************ 4559","4559.24"],["************ 6221","2098.65"]]
    
    let flowLayout = ZoomAndSnapFlowLayout()
    var indexPath : IndexPath?
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.setDefaultGradient()
        self.view.setUpNavBar()
        title = "My Bank"
        self.cards.dataSource = self
        self.cards.collectionViewLayout = flowLayout
        self.cards.contentInsetAdjustmentBehavior = .always
        self.view.bringSubviewToFront(transactionsTitleLabel)
    }
    
}
extension ViewController: UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = transactions.dequeueReusableCell(withIdentifier: "HomeTableViewCell", for: indexPath) as? HomeTableViewCell else {
            return UITableViewCell()
        }
        cell.type.text = transactionsArray[indexPath.row][0]
        cell.time.text = transactionsArray[indexPath.row][1]
        cell.amount.text = transactionsArray[indexPath.row][2]
        return cell
    }
}
extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate{
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = cards.dequeueReusableCell(withReuseIdentifier: "HomeCollectionViewCell", for: indexPath) as? HomeCollectionViewCell else{
            return UICollectionViewCell()
        }
        cell.blackBackgroundView.setBlackGradient()
        cell.cardNumber.text = cardsArray[indexPath.row][0]
        cell.amountLabel.text = cardsArray[indexPath.row][1]
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {

    
        let detailVC = CardViewController.instantiate()
        detailVC.card = cardsArray[indexPath.row]
        self.indexPath = indexPath
        detailVC.modalPresentationStyle = .popover
        self.present(detailVC, animated:true)
    }

}

