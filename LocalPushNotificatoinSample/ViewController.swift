//
//  ViewController.swift
//  LocalPushNotificatoinSample
//
//  Created by 村中令 on 2022/01/16.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func localPush(_ sender: Any) {
        let content = UNMutableNotificationContent()
        content.title = "お知らせ"
        content.body = "ボタンを押しました。"
        content.sound = UNNotificationSound.default

    
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: TimeInterval(2), repeats: false)
        let request = UNNotificationRequest(identifier: "immediately", content: content, trigger: trigger)
        UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
    }

}

