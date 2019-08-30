//
//  EightFloorViewController.swift
//  picture on ARCard
//
//  Created by 吉冨優太 on 2019/08/30.
//  Copyright © 2019 吉冨優太. All rights reserved.
//

import UIKit
import SafariServices

class EightFloorViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func JoesTapped(_ sender: UIButton) {
        guard let url = URL(string: "https://loco.yahoo.co.jp/place/g-i-N4msSje0s/?genrecd=01") else { return }
        let safariController = SFSafariViewController(url: url)
        present(safariController, animated: true, completion: nil)
    }
    
    @IBAction func TeppanTapped(_ sender: UIButton) {
        guard let url = URL(string: "https://loco.yahoo.co.jp/place/g-Qga-9x6MdxM/?genrecd=01") else { return }
        let safariController = SFSafariViewController(url: url)
        present(safariController, animated: true, completion: nil)
    }
    
    @IBAction func RyumieTapped(_ sender: UIButton) {
        guard let url = URL(string: "https://loco.yahoo.co.jp/place/g-veRQER6MdxN/?genrecd=01") else { return }
        let safariController = SFSafariViewController(url: url)
        present(safariController, animated: true, completion: nil)
    }
    
    @IBAction func DancingTapped(_ sender: UIButton) {
        guard let url = URL(string: "https://loco.yahoo.co.jp/place/g-hzpxlepKdQs/?genrecd=01") else { return }
        let safariController = SFSafariViewController(url: url)
        present(safariController, animated: true, completion: nil)
    }
    
    @IBAction func NihonTapped(_ sender: UIButton) {
        guard let url = URL(string: "https://loco.yahoo.co.jp/place/g-E5XDJB6MdxM/?genrecd=01") else { return }
        let safariController = SFSafariViewController(url: url)
        present(safariController, animated: true, completion: nil)
    }
    
    @IBAction func OysterTapped(_ sender: UIButton) {
        guard let url = URL(string: "https://loco.yahoo.co.jp/place/g-TbM_wj68E0A/?genrecd=01") else { return }
        let safariController = SFSafariViewController(url: url)
        present(safariController, animated: true, completion: nil)
    }
    
    @IBAction func UoshoTappped(_ sender: UIButton) {
        guard let url = URL(string: "https://loco.yahoo.co.jp/place/g-9GdN_tl0riw/?genrecd=01") else { return }
        let safariController = SFSafariViewController(url: url)
        present(safariController, animated: true, completion: nil)
    }
    
    @IBAction func SantyokuTapped(_ sender: UIButton) {
        guard let url = URL(string: "https://loco.yahoo.co.jp/place/g-51VoGx6MdxM/?genrecd=01") else { return }
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
