//
//  BoneViewController.swift
//  picture on ARCard
//
//  Created by 吉冨優太 on 2019/08/30.
//  Copyright © 2019 吉冨優太. All rights reserved.
//

import UIKit
import SafariServices

class BoneViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func HoriuchiTapped(_ sender: UIButton) {
        guard let url = URL(string: "https://loco.yahoo.co.jp/place/g-JwvEp9rC9Fg/?genrecd=01") else { return }
        let safariController = SFSafariViewController(url: url)
        present(safariController, animated: true, completion: nil)
    }
    
    @IBAction func SushiTapped(_ sender: UIButton) {
        guard let url = URL(string: "https://loco.yahoo.co.jp/place/g-5UkTrRLVE1M/?genrecd=01") else { return }
        let safariController = SFSafariViewController(url: url)
        present(safariController, animated: true, completion: nil)
    }
    
    @IBAction func MarumoTapped(_ sender: UIButton) {
        guard let url = URL(string: "https://loco.yahoo.co.jp/place/g-JunNbhVXtcY/?genrecd=01") else { return }
        let safariController = SFSafariViewController(url: url)
        present(safariController, animated: true, completion: nil)
    }
    
    @IBAction func BuffetTapped(_ sender: UIButton) {
        guard let url = URL(string: "https://loco.yahoo.co.jp/place/g-Qk6DJjqy37A/?genrecd=01") else { return }
        let safariController = SFSafariViewController(url: url)
        present(safariController, animated: true, completion: nil)
    }
    
    @IBAction func BananTapped(_ sender: UIButton) {
        guard let url = URL(string: "https://loco.yahoo.co.jp/place/g-5Za2VxJB2vE/?genrecd=01") else { return }
        let safariController = SFSafariViewController(url: url)
        present(safariController, animated: true, completion: nil)
    }
    
    
    @IBAction func JiichiroTapped(_ sender: UIButton) {
        guard let url = URL(string: "https://loco.yahoo.co.jp/place/g-Lh5RYVbEsws/?genrecd=01") else { return }
        let safariController = SFSafariViewController(url: url)
        present(safariController, animated: true, completion: nil)
    }
    
    @IBAction func IzumiTapped(_ sender: UIButton) {
        guard let url = URL(string: "https://loco.yahoo.co.jp/place/g-usMcyE6U_hA/?genrecd=01") else { return }
        let safariController = SFSafariViewController(url: url)
        present(safariController, animated: true, completion: nil)
    }
    
    @IBAction func YamabikoTapped(_ sender: Any) {
        guard let url = URL(string: "https://loco.yahoo.co.jp/place/g-nXRI8LexkoA/?genrecd=01") else { return }
        let safariController = SFSafariViewController(url: url)
        present(safariController, animated: true, completion: nil)
    }
    
    @IBAction func TurryTapped(_ sender: UIButton) {
        guard let url = URL(string: "https://loco.yahoo.co.jp/place/g-NDzfl7fXEDA/?genrecd=01") else { return }
        let safariController = SFSafariViewController(url: url)
        present(safariController, animated: true, completion: nil)
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
