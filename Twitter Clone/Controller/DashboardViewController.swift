//
//  ViewController.swift
//  Twitter Clone
//
//  Created by Ara Gamaliel on 5/30/25.
//

import UIKit

class DashboardViewController: BaseUIViewController {
    @IBOutlet weak var dashboardTable: UITableView!
    
    @IBOutlet weak var tabBar: UITabBar!
    
    @IBOutlet weak var homeTabBarItem: UITabBarItem!
    
    @IBOutlet weak var addTweetButton: UIButton!
    
    let tweets: [Tweet] = [
        Tweet(displayName: "Taylor Swift", username: "@taylorswift13", timestamp: 0, body: "Hei hei hei!!"),
        Tweet(displayName: "Taylor Swift", username: "@taylorswift13", timestamp: 0, body: "Hei hei hein dbhufhbubfjh bfiguigiuyhtriubfh murh fiubfiuhgriuhuyrbhvsb jh fvuisrhfiughrsuigbruygbiuy idhuibfhibfh fhfiuhfiubdjkbdjdoineijbijebijf ijhuiehiunijbeiheuibirbhiene jh jdnhfbhbfhb !!"),
        Tweet(displayName: "Taylor Swift", username: "@taylorswift13", timestamp: 0, body: "Hei hei hei!!"),
        Tweet(displayName: "Taylor Swift", username: "@taylorswift13", timestamp: 0, body: "Hei hei hei!!"),
        Tweet(displayName: "Taylor Swift", username: "@taylorswift13", timestamp: 0, body: "Hei hei hei!!"),
        Tweet(displayName: "Taylor Swift", username: "@taylorswift13", timestamp: 0, body: "Hei hei hei!!"),
        Tweet(displayName: "Taylor Swift", username: "@taylorswift13", timestamp: 0, body: "Hei hei hei!!"),
        Tweet(displayName: "Taylor Swift", username: "@taylorswift13", timestamp: 0, body: "Hei hei hei!!"),
        Tweet(displayName: "Taylor Swift", username: "@taylorswift13", timestamp: 0, body: "Hei hei hei!!"),
    ]
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
            
        dashboardTable.dataSource = self
        dashboardTable.delegate = self
        
        dashboardTable.register(UINib(nibName: "TweetCell", bundle: nil), forCellReuseIdentifier: "ReusableTweetCell")
        
        // Hacky way
        tabBar.selectedItem = homeTabBarItem
    }
}

extension DashboardViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tweets.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let tweet = tweets[indexPath.row]
        
        let tweetCell = tableView.dequeueReusableCell(withIdentifier: "ReusableTweetCell", for: indexPath) as! TweetCell
        
        tweetCell.displayNameText.text = tweet.displayName
        tweetCell.usernameText.text = tweet.username
        tweetCell.tweetBodyText.text = tweet.body
        
        return tweetCell
    }
    
    
}

extension DashboardViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    }
}
