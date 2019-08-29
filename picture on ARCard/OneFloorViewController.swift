//
//  OneFloorViewController.swift
//  picture on ARCard
//
//  Created by 吉冨優太 on 2019/08/29.
//  Copyright © 2019 吉冨優太. All rights reserved.
//

import UIKit
import SafariServices

class OneFloorViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func GatetwoTapped() {
        guard let url = URL(string: "https://loco.yahoo.co.jp/place/g-yvFd0QMDfUc/") else { return }
        let safariController = SFSafariViewController(url: url)
        present(safariController, animated: true, completion: nil)
    }
    
    @IBAction func CurryTapped(_ sender: UIButton) {
        guard let url = URL(string: "https://loco.yahoo.co.jp/place/g-XckY4IQ7Tdo/?genrecd=01") else { return }
        let safariController = SFSafariViewController(url: url)
        present(safariController, animated: true, completion: nil)
    }
    
    @IBAction func BibTapped(_ sender: UIButton) {
        guard let url = URL(string: "https://loco.yahoo.co.jp/place/g-GKUDsR6MdxM/?genrecd=01") else { return }
        let safariController = SFSafariViewController(url: url)
        present(safariController, animated: true, completion: nil)
    }
    
    @IBAction func AuxTapped(_ sender: UIButton) {
        guard let url = URL(string: "https://loco.yahoo.co.jp/place/g-q-JYZh6MdxM/?genrecd=01") else { return }
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
