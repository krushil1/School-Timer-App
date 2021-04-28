//
//  ViewController.swift
//  countbeta
//
//  Created by Krushil Amrutiya on 3/19/21.
//

import UIKit
import SafariServices
import UserNotifications

extension UIColor {
    convenience init(hexString: String) {
        let hex = hexString.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int = UInt64()
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 3: // RGB (12-bit)
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (255, 0, 0, 0)
        }
        self.init(red: CGFloat(r) / 255, green: CGFloat(g) / 255, blue: CGFloat(b) / 255, alpha: CGFloat(a) / 255)
    }
}

extension UIButton {

    @IBInspectable
    var adjustsFontForContentSizeCategory: Bool {
        set {
            self.titleLabel?.adjustsFontForContentSizeCategory = newValue
        }
        get {
            return self.titleLabel?.adjustsFontForContentSizeCategory ?? false
        }
    }
}

@IBDesignable extension UIButton {

    @IBInspectable var borderWidth: CGFloat {
        set {
            layer.borderWidth = newValue
        }
        get {
            return layer.borderWidth
        }
    }

    @IBInspectable var cornerRadius: CGFloat {
        set {
            layer.cornerRadius = newValue
        }
        get {
            return layer.cornerRadius
        }
    }

    @IBInspectable var borderColor: UIColor? {
        set {
            guard let uiColor = newValue else { return }
            layer.borderColor = uiColor.cgColor
        }
        get {
            guard let color = layer.borderColor else { return nil }
            return UIColor(cgColor: color)
        }
    }
}




class ViewController: UIViewController {
    

    @IBOutlet var oneALabel: UILabel!
    @IBOutlet var oneCLabel: UILabel!
    @IBOutlet var oneDLabel: UILabel!
    
    
    @IBOutlet var twoALabel: UILabel!
    @IBOutlet var twoCLabel: UILabel!
    @IBOutlet var twoDLabel: UILabel!
    
    @IBOutlet var threeALabel: UILabel!
    @IBOutlet var threeCLabel: UILabel!
    @IBOutlet var threeDLabel: UILabel!
    
    @IBOutlet var fourALabel: UILabel!
    @IBOutlet var fourCLabel: UILabel!
    @IBOutlet var fourDLabel: UILabel!
    
    @IBOutlet var fiveALabel: UILabel!
    @IBOutlet var fiveCLabel: UILabel!
    @IBOutlet var fiveDLabel: UILabel!
    
    @IBOutlet var sixALabel: UILabel!
    @IBOutlet var sixCLabel: UILabel!
    @IBOutlet var sixDLabel: UILabel!
    
    @IBOutlet var sevenALabel: UILabel!
    @IBOutlet var sevenCLabel: UILabel!
    @IBOutlet var sevenDLabel: UILabel!
    
    @IBOutlet var eightALabel: UILabel!
    @IBOutlet var eightCLabel: UILabel!
    @IBOutlet var eightDLabel: UILabel!
    
    @IBOutlet var nineALabel: UILabel!
    @IBOutlet var nineCLabel: UILabel!
    @IBOutlet var nineDLabel: UILabel!
    
    @IBAction func bugReport(_ sender: Any)
    {

        if let url = URL(string: "https://krushil1.github.io/Bug-Report/")
        {
           let safariVC = SFSafariViewController(url: url)
           present(safariVC, animated: true, completion: nil)

        }

    }
    
    @IBAction func featureRequest(_ sender: Any)
    {
        if let url = URL(string: "https://krushil1.github.io/feature-request/")
        {
           let safariVC = SFSafariViewController(url: url)
           present(safariVC, animated: true, completion: nil)
        }
    }

    var P1: Timer!
    var P2: Timer!
    var P3: Timer!
    var P4: Timer!
    var P5: Timer!
    var P6: Timer!
    var P7: Timer!
    var P8: Timer!
    var P9: Timer!
    
    
    var updater: Timer!
    
    var Notification1a: Timer!
    var Notification1c: Timer!
    var Notification1d: Timer!
    
    var Notification2a: Timer!
    var Notification2c: Timer!
    var Notification2d: Timer!
    
    var Notification3a: Timer!
    var Notification3c: Timer!
    var Notification3d: Timer!
    
    var Notification4a: Timer!
    var Notification4c: Timer!
    var Notification4d: Timer!
    
    var Notification5a: Timer!
    var Notification5c: Timer!
    var Notification5d: Timer!
    
    var Notification6a: Timer!
    var Notification6c: Timer!
    var Notification6d: Timer!
    
    var Notification7a: Timer!
    var Notification7c: Timer!
    var Notification7d: Timer!

    var Notification8a: Timer!
    var Notification8c: Timer!
    var Notification8d: Timer!
    
    var Notification9a: Timer!
    var Notification9c: Timer!
    var Notification9d: Timer!
    
    /////////////////////////////
    var Notification1: Timer!
    var Notification2: Timer!
    var Notification3: Timer!
    var Notification4: Timer!
    var Notification5: Timer!
    var Notification6: Timer!
    var Notification7: Timer!
    var Notification8: Timer!
    var Notification9: Timer!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge]) { success, error in
          if error == nil && success {
            print("We have permission for notifications")
          } else {
            print("something went wrong or we don't have permission")
          }
        }
        
        updater = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(update), userInfo: nil, repeats: false)
    }
  
   
    
    
    var num = 0
    
    @IBAction func buttonA(_ sender: UIButton) {
        num = 1
        updater = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(update), userInfo: nil, repeats: false)
    }
    @IBAction func buttonC(_ sender: UIButton) {
        num = 2
        updater = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(update), userInfo: nil, repeats: false)
    }
    @IBAction func buttonD(_ sender: UIButton) {
        num = 3
        updater = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(update), userInfo: nil, repeats: false)
    }
    
    
    @objc func update() {
        if num == 1 || num == 0 {
            
            let center10 = UNUserNotificationCenter.current()
            center10.removeAllPendingNotificationRequests()
            
            //Schedule A
            print("Schedule A")
            
            oneCLabel.isHidden = true
            oneDLabel.isHidden = true
            twoCLabel.isHidden = true
            twoDLabel.isHidden = true
            threeCLabel.isHidden = true
            threeDLabel.isHidden = true
            fourCLabel.isHidden = true
            fourDLabel.isHidden = true
            fiveCLabel.isHidden = true
            fiveDLabel.isHidden = true
            sixCLabel.isHidden = true
            sixDLabel.isHidden = true
            sevenCLabel.isHidden = true
            sevenDLabel.isHidden = true
            eightCLabel.isHidden = true
            eightDLabel.isHidden = true
            nineCLabel.isHidden = true
            nineDLabel.isHidden = true
            
            oneALabel.isHidden = false
            twoALabel.isHidden = false
            threeALabel.isHidden = false
            fourALabel.isHidden = false
            fiveALabel.isHidden = false
            sixALabel.isHidden = false
            sevenALabel.isHidden = false
            eightALabel.isHidden = false
            nineALabel.isHidden = false
            
            P1 = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(p1A), userInfo: nil, repeats: true)
            P2 = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(p2A), userInfo: nil, repeats: true)
            P3 = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(p3A), userInfo: nil, repeats: true)
            P4 = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(p4A), userInfo: nil, repeats: true)
            P5 = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(p5A), userInfo: nil, repeats: true)
            P6 = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(p6A), userInfo: nil, repeats: true)
            P7 = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(p7A), userInfo: nil, repeats: true)
            P8 = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(p8A), userInfo: nil, repeats: true)
            P9 = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(p9A), userInfo: nil, repeats: true)
            
            var dateComponents1A = DateComponents()
            dateComponents1A.hour = 08
            dateComponents1A.minute = 23
            dateComponents1A.second = 30
            let trigger1A = UNCalendarNotificationTrigger(dateMatching: dateComponents1A, repeats: true)
            let content1A = UNMutableNotificationContent()
            content1A.title = "Period 1 A Ends Soon!"
            let randomIdentifier1A = UUID().uuidString
            let request1A = UNNotificationRequest(identifier: randomIdentifier1A, content: content1A, trigger: trigger1A)
            UNUserNotificationCenter.current().add(request1A) { error in
                if error != nil {
                    print("something went wrong")
                }
            }
            var dateComponents1C = DateComponents()
            dateComponents1C.hour = 08
            dateComponents1C.minute = 11
            dateComponents1C.second = 30
            let trigger1C = UNCalendarNotificationTrigger(dateMatching: dateComponents1C, repeats: true)
            let content1C = UNMutableNotificationContent()
            content1C.title = "Period 1 C Ends Soon!"
            let randomIdentifier1C = UUID().uuidString
            let request1C = UNNotificationRequest(identifier: randomIdentifier1C, content: content1C, trigger: trigger1C)
            UNUserNotificationCenter.current().add(request1C) { error in
                if error != nil {
                    print("something went wrong")
                }
            }
            var dateComponents1D = DateComponents()
            dateComponents1D.hour = 10
            dateComponents1D.minute = 05
            dateComponents1D.second = 30
            let trigger1D = UNCalendarNotificationTrigger(dateMatching: dateComponents1D, repeats: true)
            let content1D = UNMutableNotificationContent()
            content1D.title = "Period 1 D Ends Soon!"
            let randomIdentifier1D = UUID().uuidString
            let request1D = UNNotificationRequest(identifier: randomIdentifier1D, content: content1D, trigger: trigger1D)
            UNUserNotificationCenter.current().add(request1D) { error in
                if error != nil {
                    print("something went wrong")
                }
            }
            var dateComponents2A = DateComponents()
            dateComponents2A.hour = 09
            dateComponents2A.minute = 08
            dateComponents2A.second = 30
            let trigger2A = UNCalendarNotificationTrigger(dateMatching: dateComponents2A, repeats: true)
            let content2A = UNMutableNotificationContent()
            content2A.title = "Period 2 A Ends Soon!"
            let randomIdentifier2A = UUID().uuidString
            let request2A = UNNotificationRequest(identifier: randomIdentifier2A, content: content2A, trigger: trigger2A)
            UNUserNotificationCenter.current().add(request2A) { error in
                if error != nil {
                    print("something went wrong")
                }
            }
            var dateComponents2C = DateComponents()
            dateComponents2C.hour = 08
            dateComponents2C.minute = 47
            dateComponents2C.second = 30
            let trigger2C = UNCalendarNotificationTrigger(dateMatching: dateComponents2C, repeats: true)
            let content2C = UNMutableNotificationContent()
            content2C.title = "Period 2 C Ends Soon!"
            let randomIdentifier2C = UUID().uuidString
            let request2C = UNNotificationRequest(identifier: randomIdentifier2C, content: content2C, trigger: trigger2C)
            UNUserNotificationCenter.current().add(request2C) { error in
                if error != nil {
                    print("something went wrong")
                }
            }
            var dateComponents2D = DateComponents()
            dateComponents2D.hour = 10
            dateComponents2D.minute = 35
            dateComponents2D.second = 30
            let trigger2D = UNCalendarNotificationTrigger(dateMatching: dateComponents2D, repeats: true)
            let content2D = UNMutableNotificationContent()
            content2D.title = "Period 2 D Ends Soon!"
            let randomIdentifier2D = UUID().uuidString
            let request2D = UNNotificationRequest(identifier: randomIdentifier2D, content: content2D, trigger: trigger2D)
            UNUserNotificationCenter.current().add(request2D) { error in
                if error != nil {
                    print("something went wrong")
                }
            }
            var dateComponents3A = DateComponents()
            dateComponents3A.hour = 09
            dateComponents3A.minute = 53
            dateComponents3A.second = 30
            let trigger3A = UNCalendarNotificationTrigger(dateMatching: dateComponents3A, repeats: true)
            let content3A = UNMutableNotificationContent()
            content3A.title = "Period 3 A Ends Soon!"
            let randomIdentifier3A = UUID().uuidString
            let request3A = UNNotificationRequest(identifier: randomIdentifier3A, content: content3A, trigger: trigger3A)
            UNUserNotificationCenter.current().add(request3A) { error in
                if error != nil {
                    print("something went wrong")
                }
            }
            var dateComponents3C = DateComponents()
            dateComponents3C.hour = 09
            dateComponents3C.minute = 23
            dateComponents3C.second = 30
            let trigger3C = UNCalendarNotificationTrigger(dateMatching: dateComponents3C, repeats: true)
            let content3C = UNMutableNotificationContent()
            content3C.title = "Period 3 C Ends Soon!"
            let randomIdentifier3C = UUID().uuidString
            let request3C = UNNotificationRequest(identifier: randomIdentifier3C, content: content3C, trigger: trigger3C)
            UNUserNotificationCenter.current().add(request3C) { error in
                if error != nil {
                    print("something went wrong")
                }
            }
            var dateComponents3D = DateComponents()
            dateComponents3D.hour = 11
            dateComponents3D.minute = 05
            dateComponents3D.second = 30
            let trigger3D = UNCalendarNotificationTrigger(dateMatching: dateComponents3D, repeats: true)
            let content3D = UNMutableNotificationContent()
            content3D.title = "Period 3 D Ends Soon!"
            let randomIdentifier3D = UUID().uuidString
            let request3D = UNNotificationRequest(identifier: randomIdentifier3D, content: content3D, trigger: trigger3D)
            UNUserNotificationCenter.current().add(request3D) { error in
                if error != nil {
                    print("something went wrong")
                }
            }
            var dateComponents4A = DateComponents()
            dateComponents4A.hour = 10
            dateComponents4A.minute = 38
            dateComponents4A.second = 30
            let trigger4A = UNCalendarNotificationTrigger(dateMatching: dateComponents4A, repeats: true)
            let content4A = UNMutableNotificationContent()
            content4A.title = "Period 4 A Ends Soon!"
            let randomIdentifier4A = UUID().uuidString
            let request4A = UNNotificationRequest(identifier: randomIdentifier4A, content: content4A, trigger: trigger4A)
            UNUserNotificationCenter.current().add(request4A) { error in
                if error != nil {
                    print("something went wrong")
                }
            }
            var dateComponents4C = DateComponents()
            dateComponents4C.hour = 09
            dateComponents4C.minute = 59
            dateComponents4C.second = 30
            let trigger4C = UNCalendarNotificationTrigger(dateMatching: dateComponents4C, repeats: true)
            let content4C = UNMutableNotificationContent()
            content4C.title = "Period 4 C Ends Soon!"
            let randomIdentifier4C = UUID().uuidString
            let request4C = UNNotificationRequest(identifier: randomIdentifier4C, content: content4C, trigger: trigger4C)
            UNUserNotificationCenter.current().add(request4C) { error in
                if error != nil {
                    print("something went wrong")
                }
            }
            var dateComponents4D = DateComponents()
            dateComponents4D.hour = 11
            dateComponents4D.minute = 41
            dateComponents4D.second = 30
            let trigger4D = UNCalendarNotificationTrigger(dateMatching: dateComponents4D, repeats: true)
            let content4D = UNMutableNotificationContent()
            content4D.title = "Period 4 D Ends Soon!"
            let randomIdentifier4D = UUID().uuidString
            let request4D = UNNotificationRequest(identifier: randomIdentifier4D, content: content4D, trigger: trigger4D)
            UNUserNotificationCenter.current().add(request4D) { error in
                if error != nil {
                    print("something went wrong")
                }
            }
            var dateComponents5A = DateComponents()
            dateComponents5A.hour = 11
            dateComponents5A.minute = 23
            dateComponents5A.second = 30
            let trigger5A = UNCalendarNotificationTrigger(dateMatching: dateComponents5A, repeats: true)
            let content5A = UNMutableNotificationContent()
            content5A.title = "Period 5 A Ends Soon!"
            let randomIdentifier5A = UUID().uuidString
            let request5A = UNNotificationRequest(identifier: randomIdentifier5A, content: content5A, trigger: trigger5A)
            UNUserNotificationCenter.current().add(request5A) { error in
                if error != nil {
                    print("something went wrong")
                }
            }
            var dateComponents5C = DateComponents()
            dateComponents5C.hour = 10
            dateComponents5C.minute = 35
            dateComponents5C.second = 30
            let trigger5C = UNCalendarNotificationTrigger(dateMatching: dateComponents5C, repeats: true)
            let content5C = UNMutableNotificationContent()
            content5C.title = "Period 5 C Ends Soon!"
            let randomIdentifier5C = UUID().uuidString
            let request5C = UNNotificationRequest(identifier: randomIdentifier5C, content: content5C, trigger: trigger5C)
            UNUserNotificationCenter.current().add(request5C) { error in
                if error != nil {
                    print("something went wrong")
                }
            }
            var dateComponents5D = DateComponents()
            dateComponents5D.hour = 12
            dateComponents5D.minute = 17
            dateComponents5D.second = 30
            let trigger5D = UNCalendarNotificationTrigger(dateMatching: dateComponents5D, repeats: true)
            let content5D = UNMutableNotificationContent()
            content5D.title = "Period 5 D Ends Soon!"
            let randomIdentifier5D = UUID().uuidString
            let request5D = UNNotificationRequest(identifier: randomIdentifier5D, content: content5D, trigger: trigger5D)
            UNUserNotificationCenter.current().add(request5D) { error in
                if error != nil {
                    print("something went wrong")
                }
            }
            var dateComponents6A = DateComponents()
            dateComponents6A.hour = 12
            dateComponents6A.minute = 08
            dateComponents6A.second = 30
            let trigger6A = UNCalendarNotificationTrigger(dateMatching: dateComponents6A, repeats: true)
            let content6A = UNMutableNotificationContent()
            content6A.title = "Period 6 A Ends Soon!"
            let randomIdentifier6A = UUID().uuidString
            let request6A = UNNotificationRequest(identifier: randomIdentifier6A, content: content6A, trigger: trigger6A)
            UNUserNotificationCenter.current().add(request6A) { error in
                if error != nil {
                    print("something went wrong")
                }
            }
            var dateComponents6C = DateComponents()
            dateComponents6C.hour = 11
            dateComponents6C.minute = 11
            dateComponents6C.second = 30
            let trigger6C = UNCalendarNotificationTrigger(dateMatching: dateComponents6C, repeats: true)
            let content6C = UNMutableNotificationContent()
            content6C.title = "Period 6 C Ends Soon!"
            let randomIdentifier6C = UUID().uuidString
            let request6C = UNNotificationRequest(identifier: randomIdentifier6C, content: content6C, trigger: trigger6C)
            UNUserNotificationCenter.current().add(request6C) { error in
                if error != nil {
                    print("something went wrong")
                }
            }
            var dateComponents6D = DateComponents()
            dateComponents6D.hour = 12
            dateComponents6D.minute = 53
            dateComponents6D.second = 30
            let trigger6D = UNCalendarNotificationTrigger(dateMatching: dateComponents6D, repeats: true)
            let content6D = UNMutableNotificationContent()
            content6D.title = "Period 6 D Ends Soon!"
            let randomIdentifier6D = UUID().uuidString
            let request6D = UNNotificationRequest(identifier: randomIdentifier6D, content: content6D, trigger: trigger6D)
            UNUserNotificationCenter.current().add(request6D) { error in
                if error != nil {
                    print("something went wrong")
                }
            }
            var dateComponents7A = DateComponents()
            dateComponents7A.hour = 12
            dateComponents7A.minute = 53
            dateComponents7A.second = 30
            let trigger7A = UNCalendarNotificationTrigger(dateMatching: dateComponents7A, repeats: true)
            let content7A = UNMutableNotificationContent()
            content7A.title = "Period 7 A Ends Soon!"
            let randomIdentifier7A = UUID().uuidString
            let request7A = UNNotificationRequest(identifier: randomIdentifier7A, content: content7A, trigger: trigger7A)
            UNUserNotificationCenter.current().add(request7A) { error in
                if error != nil {
                    print("something went wrong")
                }
            }
            var dateComponents7C = DateComponents()
            dateComponents7C.hour = 11
            dateComponents7C.minute = 47
            dateComponents7C.second = 30
            let trigger7C = UNCalendarNotificationTrigger(dateMatching: dateComponents7C, repeats: true)
            let content7C = UNMutableNotificationContent()
            content7C.title = "Period 7 C Ends Soon!"
            let randomIdentifier7C = UUID().uuidString
            let request7C = UNNotificationRequest(identifier: randomIdentifier7C, content: content7C, trigger: trigger7C)
            UNUserNotificationCenter.current().add(request7C) { error in
                if error != nil {
                    print("something went wrong")
                }
            }
            var dateComponents7D = DateComponents()
            dateComponents7D.hour = 13
            dateComponents7D.minute = 29
            dateComponents7D.second = 30
            let trigger7D = UNCalendarNotificationTrigger(dateMatching: dateComponents7D, repeats: true)
            let content7D = UNMutableNotificationContent()
            content7D.title = "Period 7 D Ends Soon!"
            let randomIdentifier7D = UUID().uuidString
            let request7D = UNNotificationRequest(identifier: randomIdentifier7D, content: content7D, trigger: trigger7D)
            UNUserNotificationCenter.current().add(request7D) { error in
                if error != nil {
                    print("something went wrong")
                }
            }
            var dateComponents8A = DateComponents()
            dateComponents8A.hour = 13
            dateComponents8A.minute = 43
            dateComponents8A.second = 30
            let trigger8A = UNCalendarNotificationTrigger(dateMatching: dateComponents8A, repeats: true)
            let content8A = UNMutableNotificationContent()
            content8A.title = "Period 8 A Ends Soon!"
            let randomIdentifier8A = UUID().uuidString
            let request8A = UNNotificationRequest(identifier: randomIdentifier8A, content: content8A, trigger: trigger8A)
            UNUserNotificationCenter.current().add(request8A) { error in
                if error != nil {
                    print("something went wrong")
                }
            }
            var dateComponents8C = DateComponents()
            dateComponents8C.hour = 12
            dateComponents8C.minute = 23
            dateComponents8C.second = 30
            let trigger8C = UNCalendarNotificationTrigger(dateMatching: dateComponents8C, repeats: true)
            let content8C = UNMutableNotificationContent()
            content8C.title = "Period 8 C Ends Soon!"
            let randomIdentifier8C = UUID().uuidString
            let request8C = UNNotificationRequest(identifier: randomIdentifier8C, content: content8C, trigger: trigger8C)
            UNUserNotificationCenter.current().add(request8C) { error in
                if error != nil {
                    print("something went wrong")
                }
            }
            var dateComponents8D = DateComponents()
            dateComponents8D.hour = 13
            dateComponents8D.minute = 59
            dateComponents8D.second = 30
            let trigger8D = UNCalendarNotificationTrigger(dateMatching: dateComponents8D, repeats: true)
            let content8D = UNMutableNotificationContent()
            content8D.title = "Period 8 D Ends Soon!"
            let randomIdentifier8D = UUID().uuidString
            let request8D = UNNotificationRequest(identifier: randomIdentifier8D, content: content8D, trigger: trigger8D)
            UNUserNotificationCenter.current().add(request8D) { error in
                if error != nil {
                    print("something went wrong")
                }
            }
            var dateComponents9A = DateComponents()
            dateComponents9A.hour = 14
            dateComponents9A.minute = 29
            dateComponents9A.second = 30
            let trigger9A = UNCalendarNotificationTrigger(dateMatching: dateComponents9A, repeats: true)
            let content9A = UNMutableNotificationContent()
            content9A.title = "Period 9 A Ends Soon!"
            let randomIdentifier9A = UUID().uuidString
            let request9A = UNNotificationRequest(identifier: randomIdentifier9A, content: content9A, trigger: trigger9A)
            UNUserNotificationCenter.current().add(request9A) { error in
                if error != nil {
                    print("something went wrong")
                }
            }
            var dateComponents9C = DateComponents()
            dateComponents9C.hour = 12
            dateComponents9C.minute = 59
            dateComponents9C.second = 30
            let trigger9C = UNCalendarNotificationTrigger(dateMatching: dateComponents9C, repeats: true)
            let content9C = UNMutableNotificationContent()
            content9C.title = "Period 9 C Ends Soon!"
            let randomIdentifier9C = UUID().uuidString
            let request9C = UNNotificationRequest(identifier: randomIdentifier9C, content: content9C, trigger: trigger9C)
            UNUserNotificationCenter.current().add(request9C) { error in
                if error != nil {
                    print("something went wrong")
                }
            }
            var dateComponents9D = DateComponents()
            dateComponents9D.hour = 14
            dateComponents9D.minute = 29
            dateComponents9D.second = 30
            let trigger9D = UNCalendarNotificationTrigger(dateMatching: dateComponents9D, repeats: true)
            let content9D = UNMutableNotificationContent()
            content9D.title = "Period 9 D Ends Soon!"
            let randomIdentifier9D = UUID().uuidString
            let request9D = UNNotificationRequest(identifier: randomIdentifier9D, content: content9D, trigger: trigger9D)
            UNUserNotificationCenter.current().add(request9D) { error in
                if error != nil {
                    print("something went wrong")
                }
            }
            
            
            let remove1C = UNUserNotificationCenter.current()
            remove1C.removeDeliveredNotifications(withIdentifiers: [randomIdentifier1C])
            remove1C.removePendingNotificationRequests(withIdentifiers: [randomIdentifier1C])
            
            let remove1D = UNUserNotificationCenter.current()
            remove1D.removeDeliveredNotifications(withIdentifiers: [randomIdentifier1D])
            remove1D.removePendingNotificationRequests(withIdentifiers: [randomIdentifier1D])
            
            let remove2C = UNUserNotificationCenter.current()
            remove2C.removeDeliveredNotifications(withIdentifiers: [randomIdentifier2C])
            remove2C.removePendingNotificationRequests(withIdentifiers: [randomIdentifier2C])
            
            let remove2D = UNUserNotificationCenter.current()
            remove2D.removeDeliveredNotifications(withIdentifiers: [randomIdentifier1D])
            remove1D.removePendingNotificationRequests(withIdentifiers: [randomIdentifier1D])
            
            let remove3C = UNUserNotificationCenter.current()
            remove3C.removeDeliveredNotifications(withIdentifiers: [randomIdentifier3C])
            remove3C.removePendingNotificationRequests(withIdentifiers: [randomIdentifier3C])
            
            let remove3D = UNUserNotificationCenter.current()
            remove3D.removeDeliveredNotifications(withIdentifiers: [randomIdentifier3D])
            remove3D.removePendingNotificationRequests(withIdentifiers: [randomIdentifier3D])
            
            let remove4C = UNUserNotificationCenter.current()
            remove4C.removeDeliveredNotifications(withIdentifiers: [randomIdentifier4C])
            remove4C.removePendingNotificationRequests(withIdentifiers: [randomIdentifier4C])
            
            let remove4D = UNUserNotificationCenter.current()
            remove4D.removeDeliveredNotifications(withIdentifiers: [randomIdentifier4D])
            remove4D.removePendingNotificationRequests(withIdentifiers: [randomIdentifier4D])
            
            let remove5C = UNUserNotificationCenter.current()
            remove5C.removeDeliveredNotifications(withIdentifiers: [randomIdentifier5C])
            remove5C.removePendingNotificationRequests(withIdentifiers: [randomIdentifier5C])
            
            let remove5D = UNUserNotificationCenter.current()
            remove5D.removeDeliveredNotifications(withIdentifiers: [randomIdentifier5D])
            remove5D.removePendingNotificationRequests(withIdentifiers: [randomIdentifier5D])
            
            let remove6C = UNUserNotificationCenter.current()
            remove6C.removeDeliveredNotifications(withIdentifiers: [randomIdentifier6C])
            remove6C.removePendingNotificationRequests(withIdentifiers: [randomIdentifier6C])
            
            let remove6D = UNUserNotificationCenter.current()
            remove6D.removeDeliveredNotifications(withIdentifiers: [randomIdentifier6D])
            remove6D.removePendingNotificationRequests(withIdentifiers: [randomIdentifier6D])
            
            let remove7C = UNUserNotificationCenter.current()
            remove7C.removeDeliveredNotifications(withIdentifiers: [randomIdentifier7C])
            remove7C.removePendingNotificationRequests(withIdentifiers: [randomIdentifier7C])
            
            let remove7D = UNUserNotificationCenter.current()
            remove7D.removeDeliveredNotifications(withIdentifiers: [randomIdentifier7D])
            remove7D.removePendingNotificationRequests(withIdentifiers: [randomIdentifier7D])
            
            let remove8C = UNUserNotificationCenter.current()
            remove8C.removeDeliveredNotifications(withIdentifiers: [randomIdentifier8C])
            remove8C.removePendingNotificationRequests(withIdentifiers: [randomIdentifier8C])
            
            let remove8D = UNUserNotificationCenter.current()
            remove8D.removeDeliveredNotifications(withIdentifiers: [randomIdentifier8D])
            remove8D.removePendingNotificationRequests(withIdentifiers: [randomIdentifier8D])
            
            let remove9C = UNUserNotificationCenter.current()
            remove9C.removeDeliveredNotifications(withIdentifiers: [randomIdentifier9C])
            remove9C.removePendingNotificationRequests(withIdentifiers: [randomIdentifier9C])
            
            let remove9D = UNUserNotificationCenter.current()
            remove9D.removeDeliveredNotifications(withIdentifiers: [randomIdentifier9D])
            remove9D.removePendingNotificationRequests(withIdentifiers: [randomIdentifier9D])
        
        
        }
        else if num == 2 {
            
            let center2 = UNUserNotificationCenter.current()
            center2.removeAllPendingNotificationRequests()
            
            //Schedule C
            print("Schedule C")
            
            oneALabel.isHidden = true
            oneDLabel.isHidden = true
            twoALabel.isHidden = true
            twoDLabel.isHidden = true
            threeALabel.isHidden = true
            threeDLabel.isHidden = true
            fourALabel.isHidden = true
            fourDLabel.isHidden = true
            fiveALabel.isHidden = true
            fiveDLabel.isHidden = true
            sixALabel.isHidden = true
            sixDLabel.isHidden = true
            sevenALabel.isHidden = true
            sevenDLabel.isHidden = true
            eightALabel.isHidden = true
            eightDLabel.isHidden = true
            nineALabel.isHidden = true
            nineDLabel.isHidden = true
            
            oneCLabel.isHidden = false
            twoCLabel.isHidden = false
            threeCLabel.isHidden = false
            fourCLabel.isHidden = false
            fiveCLabel.isHidden = false
            sixCLabel.isHidden = false
            sevenCLabel.isHidden = false
            eightCLabel.isHidden = false
            nineCLabel.isHidden = false
           
            P1 = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(p1C), userInfo: nil, repeats: true)
            P2 = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(p2C), userInfo: nil, repeats: true)
            P3 = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(p3C), userInfo: nil, repeats: true)
            P4 = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(p4C), userInfo: nil, repeats: true)
            P5 = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(p5C), userInfo: nil, repeats: true)
            P6 = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(p6C), userInfo: nil, repeats: true)
            P7 = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(p7C), userInfo: nil, repeats: true)
            P8 = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(p8C), userInfo: nil, repeats: true)
            P9 = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(p9C), userInfo: nil, repeats: true)
            
            var dateComponents1A = DateComponents()
            dateComponents1A.hour = 08
            dateComponents1A.minute = 23
            dateComponents1A.second = 30
            let trigger1A = UNCalendarNotificationTrigger(dateMatching: dateComponents1A, repeats: true)
            let content1A = UNMutableNotificationContent()
            content1A.title = "Period 1 A Ends Soon!"
            let randomIdentifier1A = UUID().uuidString
            let request1A = UNNotificationRequest(identifier: randomIdentifier1A, content: content1A, trigger: trigger1A)
            UNUserNotificationCenter.current().add(request1A) { error in
                if error != nil {
                    print("something went wrong")
                }
            }
            var dateComponents1C = DateComponents()
            dateComponents1C.hour = 08
            dateComponents1C.minute = 11
            dateComponents1C.second = 30
            let trigger1C = UNCalendarNotificationTrigger(dateMatching: dateComponents1C, repeats: true)
            let content1C = UNMutableNotificationContent()
            content1C.title = "Period 1 C Ends Soon!"
            let randomIdentifier1C = UUID().uuidString
            let request1C = UNNotificationRequest(identifier: randomIdentifier1C, content: content1C, trigger: trigger1C)
            UNUserNotificationCenter.current().add(request1C) { error in
                if error != nil {
                    print("something went wrong")
                }
            }
            var dateComponents1D = DateComponents()
            dateComponents1D.hour = 10
            dateComponents1D.minute = 05
            dateComponents1D.second = 30
            let trigger1D = UNCalendarNotificationTrigger(dateMatching: dateComponents1D, repeats: true)
            let content1D = UNMutableNotificationContent()
            content1D.title = "Period 1 D Ends Soon!"
            let randomIdentifier1D = UUID().uuidString
            let request1D = UNNotificationRequest(identifier: randomIdentifier1D, content: content1D, trigger: trigger1D)
            UNUserNotificationCenter.current().add(request1D) { error in
                if error != nil {
                    print("something went wrong")
                }
            }
            var dateComponents2A = DateComponents()
            dateComponents2A.hour = 09
            dateComponents2A.minute = 08
            dateComponents2A.second = 30
            let trigger2A = UNCalendarNotificationTrigger(dateMatching: dateComponents2A, repeats: true)
            let content2A = UNMutableNotificationContent()
            content2A.title = "Period 2 A Ends Soon!"
            let randomIdentifier2A = UUID().uuidString
            let request2A = UNNotificationRequest(identifier: randomIdentifier2A, content: content2A, trigger: trigger2A)
            UNUserNotificationCenter.current().add(request2A) { error in
                if error != nil {
                    print("something went wrong")
                }
            }
            var dateComponents2C = DateComponents()
            dateComponents2C.hour = 08
            dateComponents2C.minute = 47
            dateComponents2C.second = 30
            let trigger2C = UNCalendarNotificationTrigger(dateMatching: dateComponents2C, repeats: true)
            let content2C = UNMutableNotificationContent()
            content2C.title = "Period 2 C Ends Soon!"
            let randomIdentifier2C = UUID().uuidString
            let request2C = UNNotificationRequest(identifier: randomIdentifier2C, content: content2C, trigger: trigger2C)
            UNUserNotificationCenter.current().add(request2C) { error in
                if error != nil {
                    print("something went wrong")
                }
            }
            var dateComponents2D = DateComponents()
            dateComponents2D.hour = 10
            dateComponents2D.minute = 35
            dateComponents2D.second = 30
            let trigger2D = UNCalendarNotificationTrigger(dateMatching: dateComponents2D, repeats: true)
            let content2D = UNMutableNotificationContent()
            content2D.title = "Period 2 D Ends Soon!"
            let randomIdentifier2D = UUID().uuidString
            let request2D = UNNotificationRequest(identifier: randomIdentifier2D, content: content2D, trigger: trigger2D)
            UNUserNotificationCenter.current().add(request2D) { error in
                if error != nil {
                    print("something went wrong")
                }
            }
            var dateComponents3A = DateComponents()
            dateComponents3A.hour = 09
            dateComponents3A.minute = 53
            dateComponents3A.second = 30
            let trigger3A = UNCalendarNotificationTrigger(dateMatching: dateComponents3A, repeats: true)
            let content3A = UNMutableNotificationContent()
            content3A.title = "Period 3 A Ends Soon!"
            let randomIdentifier3A = UUID().uuidString
            let request3A = UNNotificationRequest(identifier: randomIdentifier3A, content: content3A, trigger: trigger3A)
            UNUserNotificationCenter.current().add(request3A) { error in
                if error != nil {
                    print("something went wrong")
                }
            }
            var dateComponents3C = DateComponents()
            dateComponents3C.hour = 09
            dateComponents3C.minute = 23
            dateComponents3C.second = 30
            let trigger3C = UNCalendarNotificationTrigger(dateMatching: dateComponents3C, repeats: true)
            let content3C = UNMutableNotificationContent()
            content3C.title = "Period 3 C Ends Soon!"
            let randomIdentifier3C = UUID().uuidString
            let request3C = UNNotificationRequest(identifier: randomIdentifier3C, content: content3C, trigger: trigger3C)
            UNUserNotificationCenter.current().add(request3C) { error in
                if error != nil {
                    print("something went wrong")
                }
            }
            var dateComponents3D = DateComponents()
            dateComponents3D.hour = 11
            dateComponents3D.minute = 05
            dateComponents3D.second = 30
            let trigger3D = UNCalendarNotificationTrigger(dateMatching: dateComponents3D, repeats: true)
            let content3D = UNMutableNotificationContent()
            content3D.title = "Period 3 D Ends Soon!"
            let randomIdentifier3D = UUID().uuidString
            let request3D = UNNotificationRequest(identifier: randomIdentifier3D, content: content3D, trigger: trigger3D)
            UNUserNotificationCenter.current().add(request3D) { error in
                if error != nil {
                    print("something went wrong")
                }
            }
            var dateComponents4A = DateComponents()
            dateComponents4A.hour = 10
            dateComponents4A.minute = 38
            dateComponents4A.second = 30
            let trigger4A = UNCalendarNotificationTrigger(dateMatching: dateComponents4A, repeats: true)
            let content4A = UNMutableNotificationContent()
            content4A.title = "Period 4 A Ends Soon!"
            let randomIdentifier4A = UUID().uuidString
            let request4A = UNNotificationRequest(identifier: randomIdentifier4A, content: content4A, trigger: trigger4A)
            UNUserNotificationCenter.current().add(request4A) { error in
                if error != nil {
                    print("something went wrong")
                }
            }
            var dateComponents4C = DateComponents()
            dateComponents4C.hour = 09
            dateComponents4C.minute = 59
            dateComponents4C.second = 30
            let trigger4C = UNCalendarNotificationTrigger(dateMatching: dateComponents4C, repeats: true)
            let content4C = UNMutableNotificationContent()
            content4C.title = "Period 4 C Ends Soon!"
            let randomIdentifier4C = UUID().uuidString
            let request4C = UNNotificationRequest(identifier: randomIdentifier4C, content: content4C, trigger: trigger4C)
            UNUserNotificationCenter.current().add(request4C) { error in
                if error != nil {
                    print("something went wrong")
                }
            }
            var dateComponents4D = DateComponents()
            dateComponents4D.hour = 11
            dateComponents4D.minute = 41
            dateComponents4D.second = 30
            let trigger4D = UNCalendarNotificationTrigger(dateMatching: dateComponents4D, repeats: true)
            let content4D = UNMutableNotificationContent()
            content4D.title = "Period 4 D Ends Soon!"
            let randomIdentifier4D = UUID().uuidString
            let request4D = UNNotificationRequest(identifier: randomIdentifier4D, content: content4D, trigger: trigger4D)
            UNUserNotificationCenter.current().add(request4D) { error in
                if error != nil {
                    print("something went wrong")
                }
            }
            var dateComponents5A = DateComponents()
            dateComponents5A.hour = 11
            dateComponents5A.minute = 23
            dateComponents5A.second = 30
            let trigger5A = UNCalendarNotificationTrigger(dateMatching: dateComponents5A, repeats: true)
            let content5A = UNMutableNotificationContent()
            content5A.title = "Period 5 A Ends Soon!"
            let randomIdentifier5A = UUID().uuidString
            let request5A = UNNotificationRequest(identifier: randomIdentifier5A, content: content5A, trigger: trigger5A)
            UNUserNotificationCenter.current().add(request5A) { error in
                if error != nil {
                    print("something went wrong")
                }
            }
            var dateComponents5C = DateComponents()
            dateComponents5C.hour = 10
            dateComponents5C.minute = 35
            dateComponents5C.second = 30
            let trigger5C = UNCalendarNotificationTrigger(dateMatching: dateComponents5C, repeats: true)
            let content5C = UNMutableNotificationContent()
            content5C.title = "Period 5 C Ends Soon!"
            let randomIdentifier5C = UUID().uuidString
            let request5C = UNNotificationRequest(identifier: randomIdentifier5C, content: content5C, trigger: trigger5C)
            UNUserNotificationCenter.current().add(request5C) { error in
                if error != nil {
                    print("something went wrong")
                }
            }
            var dateComponents5D = DateComponents()
            dateComponents5D.hour = 12
            dateComponents5D.minute = 17
            dateComponents5D.second = 30
            let trigger5D = UNCalendarNotificationTrigger(dateMatching: dateComponents5D, repeats: true)
            let content5D = UNMutableNotificationContent()
            content5D.title = "Period 5 D Ends Soon!"
            let randomIdentifier5D = UUID().uuidString
            let request5D = UNNotificationRequest(identifier: randomIdentifier5D, content: content5D, trigger: trigger5D)
            UNUserNotificationCenter.current().add(request5D) { error in
                if error != nil {
                    print("something went wrong")
                }
            }
            var dateComponents6A = DateComponents()
            dateComponents6A.hour = 12
            dateComponents6A.minute = 08
            dateComponents6A.second = 30
            let trigger6A = UNCalendarNotificationTrigger(dateMatching: dateComponents6A, repeats: true)
            let content6A = UNMutableNotificationContent()
            content6A.title = "Period 6 A Ends Soon!"
            let randomIdentifier6A = UUID().uuidString
            let request6A = UNNotificationRequest(identifier: randomIdentifier6A, content: content6A, trigger: trigger6A)
            UNUserNotificationCenter.current().add(request6A) { error in
                if error != nil {
                    print("something went wrong")
                }
            }
            var dateComponents6C = DateComponents()
            dateComponents6C.hour = 11
            dateComponents6C.minute = 11
            dateComponents6C.second = 30
            let trigger6C = UNCalendarNotificationTrigger(dateMatching: dateComponents6C, repeats: true)
            let content6C = UNMutableNotificationContent()
            content6C.title = "Period 6 C Ends Soon!"
            let randomIdentifier6C = UUID().uuidString
            let request6C = UNNotificationRequest(identifier: randomIdentifier6C, content: content6C, trigger: trigger6C)
            UNUserNotificationCenter.current().add(request6C) { error in
                if error != nil {
                    print("something went wrong")
                }
            }
            var dateComponents6D = DateComponents()
            dateComponents6D.hour = 12
            dateComponents6D.minute = 53
            dateComponents6D.second = 30
            let trigger6D = UNCalendarNotificationTrigger(dateMatching: dateComponents6D, repeats: true)
            let content6D = UNMutableNotificationContent()
            content6D.title = "Period 6 D Ends Soon!"
            let randomIdentifier6D = UUID().uuidString
            let request6D = UNNotificationRequest(identifier: randomIdentifier6D, content: content6D, trigger: trigger6D)
            UNUserNotificationCenter.current().add(request6D) { error in
                if error != nil {
                    print("something went wrong")
                }
            }
            var dateComponents7A = DateComponents()
            dateComponents7A.hour = 12
            dateComponents7A.minute = 53
            dateComponents7A.second = 30
            let trigger7A = UNCalendarNotificationTrigger(dateMatching: dateComponents7A, repeats: true)
            let content7A = UNMutableNotificationContent()
            content7A.title = "Period 7 A Ends Soon!"
            let randomIdentifier7A = UUID().uuidString
            let request7A = UNNotificationRequest(identifier: randomIdentifier7A, content: content7A, trigger: trigger7A)
            UNUserNotificationCenter.current().add(request7A) { error in
                if error != nil {
                    print("something went wrong")
                }
            }
            var dateComponents7C = DateComponents()
            dateComponents7C.hour = 11
            dateComponents7C.minute = 47
            dateComponents7C.second = 30
            let trigger7C = UNCalendarNotificationTrigger(dateMatching: dateComponents7C, repeats: true)
            let content7C = UNMutableNotificationContent()
            content7C.title = "Period 7 C Ends Soon!"
            let randomIdentifier7C = UUID().uuidString
            let request7C = UNNotificationRequest(identifier: randomIdentifier7C, content: content7C, trigger: trigger7C)
            UNUserNotificationCenter.current().add(request7C) { error in
                if error != nil {
                    print("something went wrong")
                }
            }
            var dateComponents7D = DateComponents()
            dateComponents7D.hour = 13
            dateComponents7D.minute = 29
            dateComponents7D.second = 30
            let trigger7D = UNCalendarNotificationTrigger(dateMatching: dateComponents7D, repeats: true)
            let content7D = UNMutableNotificationContent()
            content7D.title = "Period 7 D Ends Soon!"
            let randomIdentifier7D = UUID().uuidString
            let request7D = UNNotificationRequest(identifier: randomIdentifier7D, content: content7D, trigger: trigger7D)
            UNUserNotificationCenter.current().add(request7D) { error in
                if error != nil {
                    print("something went wrong")
                }
            }
            var dateComponents8A = DateComponents()
            dateComponents8A.hour = 13
            dateComponents8A.minute = 43
            dateComponents8A.second = 30
            let trigger8A = UNCalendarNotificationTrigger(dateMatching: dateComponents8A, repeats: true)
            let content8A = UNMutableNotificationContent()
            content8A.title = "Period 8 A Ends Soon!"
            let randomIdentifier8A = UUID().uuidString
            let request8A = UNNotificationRequest(identifier: randomIdentifier8A, content: content8A, trigger: trigger8A)
            UNUserNotificationCenter.current().add(request8A) { error in
                if error != nil {
                    print("something went wrong")
                }
            }
            var dateComponents8C = DateComponents()
            dateComponents8C.hour = 12
            dateComponents8C.minute = 23
            dateComponents8C.second = 30
            let trigger8C = UNCalendarNotificationTrigger(dateMatching: dateComponents8C, repeats: true)
            let content8C = UNMutableNotificationContent()
            content8C.title = "Period 8 C Ends Soon!"
            let randomIdentifier8C = UUID().uuidString
            let request8C = UNNotificationRequest(identifier: randomIdentifier8C, content: content8C, trigger: trigger8C)
            UNUserNotificationCenter.current().add(request8C) { error in
                if error != nil {
                    print("something went wrong")
                }
            }
            var dateComponents8D = DateComponents()
            dateComponents8D.hour = 13
            dateComponents8D.minute = 59
            dateComponents8D.second = 30
            let trigger8D = UNCalendarNotificationTrigger(dateMatching: dateComponents8D, repeats: true)
            let content8D = UNMutableNotificationContent()
            content8D.title = "Period 8 D Ends Soon!"
            let randomIdentifier8D = UUID().uuidString
            let request8D = UNNotificationRequest(identifier: randomIdentifier8D, content: content8D, trigger: trigger8D)
            UNUserNotificationCenter.current().add(request8D) { error in
                if error != nil {
                    print("something went wrong")
                }
            }
            var dateComponents9A = DateComponents()
            dateComponents9A.hour = 14
            dateComponents9A.minute = 29
            dateComponents9A.second = 30
            let trigger9A = UNCalendarNotificationTrigger(dateMatching: dateComponents9A, repeats: true)
            let content9A = UNMutableNotificationContent()
            content9A.title = "Period 9 A Ends Soon!"
            let randomIdentifier9A = UUID().uuidString
            let request9A = UNNotificationRequest(identifier: randomIdentifier9A, content: content9A, trigger: trigger9A)
            UNUserNotificationCenter.current().add(request9A) { error in
                if error != nil {
                    print("something went wrong")
                }
            }
            var dateComponents9C = DateComponents()
            dateComponents9C.hour = 12
            dateComponents9C.minute = 59
            dateComponents9C.second = 30
            let trigger9C = UNCalendarNotificationTrigger(dateMatching: dateComponents9C, repeats: true)
            let content9C = UNMutableNotificationContent()
            content9C.title = "Period 9 C Ends Soon!"
            let randomIdentifier9C = UUID().uuidString
            let request9C = UNNotificationRequest(identifier: randomIdentifier9C, content: content9C, trigger: trigger9C)
            UNUserNotificationCenter.current().add(request9C) { error in
                if error != nil {
                    print("something went wrong")
                }
            }
            var dateComponents9D = DateComponents()
            dateComponents9D.hour = 14
            dateComponents9D.minute = 29
            dateComponents9D.second = 30
            let trigger9D = UNCalendarNotificationTrigger(dateMatching: dateComponents9D, repeats: true)
            let content9D = UNMutableNotificationContent()
            content9D.title = "Period 9 D Ends Soon!"
            let randomIdentifier9D = UUID().uuidString
            let request9D = UNNotificationRequest(identifier: randomIdentifier9D, content: content9D, trigger: trigger9D)
            UNUserNotificationCenter.current().add(request9D) { error in
                if error != nil {
                    print("something went wrong")
                }
            }
            let remove1A = UNUserNotificationCenter.current()
            remove1A.removeDeliveredNotifications(withIdentifiers: [randomIdentifier1A])
            remove1A.removePendingNotificationRequests(withIdentifiers: [randomIdentifier1A])
            
            let remove1D = UNUserNotificationCenter.current()
            remove1D.removeDeliveredNotifications(withIdentifiers: [randomIdentifier1D])
            remove1D.removePendingNotificationRequests(withIdentifiers: [randomIdentifier1D])
            
            let remove2A = UNUserNotificationCenter.current()
            remove2A.removeDeliveredNotifications(withIdentifiers: [randomIdentifier2A])
            remove2A.removePendingNotificationRequests(withIdentifiers: [randomIdentifier2A])
            
            let remove2D = UNUserNotificationCenter.current()
            remove2D.removeDeliveredNotifications(withIdentifiers: [randomIdentifier1D])
            remove2D.removePendingNotificationRequests(withIdentifiers: [randomIdentifier2D])
            
            let remove3A = UNUserNotificationCenter.current()
            remove3A.removeDeliveredNotifications(withIdentifiers: [randomIdentifier3A])
            remove3A.removePendingNotificationRequests(withIdentifiers: [randomIdentifier3A])
            
            let remove3D = UNUserNotificationCenter.current()
            remove3D.removeDeliveredNotifications(withIdentifiers: [randomIdentifier3D])
            remove3D.removePendingNotificationRequests(withIdentifiers: [randomIdentifier3D])
            
            let remove4A = UNUserNotificationCenter.current()
            remove4A.removeDeliveredNotifications(withIdentifiers: [randomIdentifier4A])
            remove4A.removePendingNotificationRequests(withIdentifiers: [randomIdentifier4A])
            
            let remove4D = UNUserNotificationCenter.current()
            remove4D.removeDeliveredNotifications(withIdentifiers: [randomIdentifier4D])
            remove4D.removePendingNotificationRequests(withIdentifiers: [randomIdentifier4D])
            
            let remove5A = UNUserNotificationCenter.current()
            remove5A.removeDeliveredNotifications(withIdentifiers: [randomIdentifier5A])
            remove5A.removePendingNotificationRequests(withIdentifiers: [randomIdentifier5A])
            
            let remove5D = UNUserNotificationCenter.current()
            remove5D.removeDeliveredNotifications(withIdentifiers: [randomIdentifier5D])
            remove5D.removePendingNotificationRequests(withIdentifiers: [randomIdentifier5D])
            
            let remove6A = UNUserNotificationCenter.current()
            remove6A.removeDeliveredNotifications(withIdentifiers: [randomIdentifier6A])
            remove6A.removePendingNotificationRequests(withIdentifiers: [randomIdentifier6A])
            
            let remove6D = UNUserNotificationCenter.current()
            remove6D.removeDeliveredNotifications(withIdentifiers: [randomIdentifier6D])
            remove6D.removePendingNotificationRequests(withIdentifiers: [randomIdentifier6D])
            
            let remove7A = UNUserNotificationCenter.current()
            remove7A.removeDeliveredNotifications(withIdentifiers: [randomIdentifier7A])
            remove7A.removePendingNotificationRequests(withIdentifiers: [randomIdentifier7A])
            
            let remove7D = UNUserNotificationCenter.current()
            remove7D.removeDeliveredNotifications(withIdentifiers: [randomIdentifier7D])
            remove7D.removePendingNotificationRequests(withIdentifiers: [randomIdentifier7D])
            
            let remove8A = UNUserNotificationCenter.current()
            remove8A.removeDeliveredNotifications(withIdentifiers: [randomIdentifier8A])
            remove8A.removePendingNotificationRequests(withIdentifiers: [randomIdentifier8A])
            
            let remove8D = UNUserNotificationCenter.current()
            remove8D.removeDeliveredNotifications(withIdentifiers: [randomIdentifier8D])
            remove8D.removePendingNotificationRequests(withIdentifiers: [randomIdentifier8D])
            
            let remove9A = UNUserNotificationCenter.current()
            remove9A.removeDeliveredNotifications(withIdentifiers: [randomIdentifier9A])
            remove9A.removePendingNotificationRequests(withIdentifiers: [randomIdentifier9A])
            
            let remove9D = UNUserNotificationCenter.current()
            remove9D.removeDeliveredNotifications(withIdentifiers: [randomIdentifier9D])
            remove9D.removePendingNotificationRequests(withIdentifiers: [randomIdentifier9D])
        }
        else if num == 3 {
            
            let center3 = UNUserNotificationCenter.current()
            center3.removeAllPendingNotificationRequests()
            
            //Schedule D
            print("Schedule D")
            
            oneALabel.isHidden = true
            oneCLabel.isHidden = true
            twoALabel.isHidden = true
            twoCLabel.isHidden = true
            threeALabel.isHidden = true
            threeCLabel.isHidden = true
            fourALabel.isHidden = true
            fourCLabel.isHidden = true
            fiveALabel.isHidden = true
            fiveCLabel.isHidden = true
            sixALabel.isHidden = true
            sixCLabel.isHidden = true
            sevenALabel.isHidden = true
            sevenCLabel.isHidden = true
            eightALabel.isHidden = true
            eightCLabel.isHidden = true
            nineALabel.isHidden = true
            nineCLabel.isHidden = true

            oneDLabel.isHidden = false
            twoDLabel.isHidden = false
            threeDLabel.isHidden = false
            fourDLabel.isHidden = false
            fiveDLabel.isHidden = false
            sixDLabel.isHidden = false
            sevenDLabel.isHidden = false
            eightDLabel.isHidden = false
            nineDLabel.isHidden = false
           
            P1 = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(p1D), userInfo: nil, repeats: true)
            P2 = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(p2D), userInfo: nil, repeats: true)
            P3 = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(p3D), userInfo: nil, repeats: true)
            P4 = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(p4D), userInfo: nil, repeats: true)
            P5 = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(p5D), userInfo: nil, repeats: true)
            P6 = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(p6D), userInfo: nil, repeats: true)
            P7 = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(p7D), userInfo: nil, repeats: true)
            P8 = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(p8D), userInfo: nil, repeats: true)
            P9 = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(p9D), userInfo: nil, repeats: true)
            
            var dateComponents1A = DateComponents()
            dateComponents1A.hour = 08
            dateComponents1A.minute = 23
            dateComponents1A.second = 30
            let trigger1A = UNCalendarNotificationTrigger(dateMatching: dateComponents1A, repeats: true)
            let content1A = UNMutableNotificationContent()
            content1A.title = "Period 1 A Ends Soon!"
            let randomIdentifier1A = UUID().uuidString
            let request1A = UNNotificationRequest(identifier: randomIdentifier1A, content: content1A, trigger: trigger1A)
            UNUserNotificationCenter.current().add(request1A) { error in
                if error != nil {
                    print("something went wrong")
                }
            }
            var dateComponents1C = DateComponents()
            dateComponents1C.hour = 08
            dateComponents1C.minute = 11
            dateComponents1C.second = 30
            let trigger1C = UNCalendarNotificationTrigger(dateMatching: dateComponents1C, repeats: true)
            let content1C = UNMutableNotificationContent()
            content1C.title = "Period 1 C Ends Soon!"
            let randomIdentifier1C = UUID().uuidString
            let request1C = UNNotificationRequest(identifier: randomIdentifier1C, content: content1C, trigger: trigger1C)
            UNUserNotificationCenter.current().add(request1C) { error in
                if error != nil {
                    print("something went wrong")
                }
            }
            var dateComponents1D = DateComponents()
            dateComponents1D.hour = 10
            dateComponents1D.minute = 05
            dateComponents1D.second = 30
            let trigger1D = UNCalendarNotificationTrigger(dateMatching: dateComponents1D, repeats: true)
            let content1D = UNMutableNotificationContent()
            content1D.title = "Period 1 D Ends Soon!"
            let randomIdentifier1D = UUID().uuidString
            let request1D = UNNotificationRequest(identifier: randomIdentifier1D, content: content1D, trigger: trigger1D)
            UNUserNotificationCenter.current().add(request1D) { error in
                if error != nil {
                    print("something went wrong")
                }
            }
            var dateComponents2A = DateComponents()
            dateComponents2A.hour = 09
            dateComponents2A.minute = 08
            dateComponents2A.second = 30
            let trigger2A = UNCalendarNotificationTrigger(dateMatching: dateComponents2A, repeats: true)
            let content2A = UNMutableNotificationContent()
            content2A.title = "Period 2 A Ends Soon!"
            let randomIdentifier2A = UUID().uuidString
            let request2A = UNNotificationRequest(identifier: randomIdentifier2A, content: content2A, trigger: trigger2A)
            UNUserNotificationCenter.current().add(request2A) { error in
                if error != nil {
                    print("something went wrong")
                }
            }
            var dateComponents2C = DateComponents()
            dateComponents2C.hour = 08
            dateComponents2C.minute = 47
            dateComponents2C.second = 30
            let trigger2C = UNCalendarNotificationTrigger(dateMatching: dateComponents2C, repeats: true)
            let content2C = UNMutableNotificationContent()
            content2C.title = "Period 2 C Ends Soon!"
            let randomIdentifier2C = UUID().uuidString
            let request2C = UNNotificationRequest(identifier: randomIdentifier2C, content: content2C, trigger: trigger2C)
            UNUserNotificationCenter.current().add(request2C) { error in
                if error != nil {
                    print("something went wrong")
                }
            }
            var dateComponents2D = DateComponents()
            dateComponents2D.hour = 10
            dateComponents2D.minute = 35
            dateComponents2D.second = 30
            let trigger2D = UNCalendarNotificationTrigger(dateMatching: dateComponents2D, repeats: true)
            let content2D = UNMutableNotificationContent()
            content2D.title = "Period 2 D Ends Soon!"
            let randomIdentifier2D = UUID().uuidString
            let request2D = UNNotificationRequest(identifier: randomIdentifier2D, content: content2D, trigger: trigger2D)
            UNUserNotificationCenter.current().add(request2D) { error in
                if error != nil {
                    print("something went wrong")
                }
            }
            var dateComponents3A = DateComponents()
            dateComponents3A.hour = 09
            dateComponents3A.minute = 53
            dateComponents3A.second = 30
            let trigger3A = UNCalendarNotificationTrigger(dateMatching: dateComponents3A, repeats: true)
            let content3A = UNMutableNotificationContent()
            content3A.title = "Period 3 A Ends Soon!"
            let randomIdentifier3A = UUID().uuidString
            let request3A = UNNotificationRequest(identifier: randomIdentifier3A, content: content3A, trigger: trigger3A)
            UNUserNotificationCenter.current().add(request3A) { error in
                if error != nil {
                    print("something went wrong")
                }
            }
            var dateComponents3C = DateComponents()
            dateComponents3C.hour = 09
            dateComponents3C.minute = 23
            dateComponents3C.second = 30
            let trigger3C = UNCalendarNotificationTrigger(dateMatching: dateComponents3C, repeats: true)
            let content3C = UNMutableNotificationContent()
            content3C.title = "Period 3 C Ends Soon!"
            let randomIdentifier3C = UUID().uuidString
            let request3C = UNNotificationRequest(identifier: randomIdentifier3C, content: content3C, trigger: trigger3C)
            UNUserNotificationCenter.current().add(request3C) { error in
                if error != nil {
                    print("something went wrong")
                }
            }
            var dateComponents3D = DateComponents()
            dateComponents3D.hour = 11
            dateComponents3D.minute = 05
            dateComponents3D.second = 30
            let trigger3D = UNCalendarNotificationTrigger(dateMatching: dateComponents3D, repeats: true)
            let content3D = UNMutableNotificationContent()
            content3D.title = "Period 3 D Ends Soon!"
            let randomIdentifier3D = UUID().uuidString
            let request3D = UNNotificationRequest(identifier: randomIdentifier3D, content: content3D, trigger: trigger3D)
            UNUserNotificationCenter.current().add(request3D) { error in
                if error != nil {
                    print("something went wrong")
                }
            }
            var dateComponents4A = DateComponents()
            dateComponents4A.hour = 10
            dateComponents4A.minute = 38
            dateComponents4A.second = 30
            let trigger4A = UNCalendarNotificationTrigger(dateMatching: dateComponents4A, repeats: true)
            let content4A = UNMutableNotificationContent()
            content4A.title = "Period 4 A Ends Soon!"
            let randomIdentifier4A = UUID().uuidString
            let request4A = UNNotificationRequest(identifier: randomIdentifier4A, content: content4A, trigger: trigger4A)
            UNUserNotificationCenter.current().add(request4A) { error in
                if error != nil {
                    print("something went wrong")
                }
            }
            var dateComponents4C = DateComponents()
            dateComponents4C.hour = 09
            dateComponents4C.minute = 59
            dateComponents4C.second = 30
            let trigger4C = UNCalendarNotificationTrigger(dateMatching: dateComponents4C, repeats: true)
            let content4C = UNMutableNotificationContent()
            content4C.title = "Period 4 C Ends Soon!"
            let randomIdentifier4C = UUID().uuidString
            let request4C = UNNotificationRequest(identifier: randomIdentifier4C, content: content4C, trigger: trigger4C)
            UNUserNotificationCenter.current().add(request4C) { error in
                if error != nil {
                    print("something went wrong")
                }
            }
            var dateComponents4D = DateComponents()
            dateComponents4D.hour = 11
            dateComponents4D.minute = 41
            dateComponents4D.second = 30
            let trigger4D = UNCalendarNotificationTrigger(dateMatching: dateComponents4D, repeats: true)
            let content4D = UNMutableNotificationContent()
            content4D.title = "Period 4 D Ends Soon!"
            let randomIdentifier4D = UUID().uuidString
            let request4D = UNNotificationRequest(identifier: randomIdentifier4D, content: content4D, trigger: trigger4D)
            UNUserNotificationCenter.current().add(request4D) { error in
                if error != nil {
                    print("something went wrong")
                }
            }
            var dateComponents5A = DateComponents()
            dateComponents5A.hour = 11
            dateComponents5A.minute = 23
            dateComponents5A.second = 30
            let trigger5A = UNCalendarNotificationTrigger(dateMatching: dateComponents5A, repeats: true)
            let content5A = UNMutableNotificationContent()
            content5A.title = "Period 5 A Ends Soon!"
            let randomIdentifier5A = UUID().uuidString
            let request5A = UNNotificationRequest(identifier: randomIdentifier5A, content: content5A, trigger: trigger5A)
            UNUserNotificationCenter.current().add(request5A) { error in
                if error != nil {
                    print("something went wrong")
                }
            }
            var dateComponents5C = DateComponents()
            dateComponents5C.hour = 10
            dateComponents5C.minute = 35
            dateComponents5C.second = 30
            let trigger5C = UNCalendarNotificationTrigger(dateMatching: dateComponents5C, repeats: true)
            let content5C = UNMutableNotificationContent()
            content5C.title = "Period 5 C Ends Soon!"
            let randomIdentifier5C = UUID().uuidString
            let request5C = UNNotificationRequest(identifier: randomIdentifier5C, content: content5C, trigger: trigger5C)
            UNUserNotificationCenter.current().add(request5C) { error in
                if error != nil {
                    print("something went wrong")
                }
            }
            var dateComponents5D = DateComponents()
            dateComponents5D.hour = 12
            dateComponents5D.minute = 17
            dateComponents5D.second = 30
            let trigger5D = UNCalendarNotificationTrigger(dateMatching: dateComponents5D, repeats: true)
            let content5D = UNMutableNotificationContent()
            content5D.title = "Period 5 D Ends Soon!"
            let randomIdentifier5D = UUID().uuidString
            let request5D = UNNotificationRequest(identifier: randomIdentifier5D, content: content5D, trigger: trigger5D)
            UNUserNotificationCenter.current().add(request5D) { error in
                if error != nil {
                    print("something went wrong")
                }
            }
            var dateComponents6A = DateComponents()
            dateComponents6A.hour = 12
            dateComponents6A.minute = 08
            dateComponents6A.second = 30
            let trigger6A = UNCalendarNotificationTrigger(dateMatching: dateComponents6A, repeats: true)
            let content6A = UNMutableNotificationContent()
            content6A.title = "Period 6 A Ends Soon!"
            let randomIdentifier6A = UUID().uuidString
            let request6A = UNNotificationRequest(identifier: randomIdentifier6A, content: content6A, trigger: trigger6A)
            UNUserNotificationCenter.current().add(request6A) { error in
                if error != nil {
                    print("something went wrong")
                }
            }
            var dateComponents6C = DateComponents()
            dateComponents6C.hour = 11
            dateComponents6C.minute = 11
            dateComponents6C.second = 30
            let trigger6C = UNCalendarNotificationTrigger(dateMatching: dateComponents6C, repeats: true)
            let content6C = UNMutableNotificationContent()
            content6C.title = "Period 6 C Ends Soon!"
            let randomIdentifier6C = UUID().uuidString
            let request6C = UNNotificationRequest(identifier: randomIdentifier6C, content: content6C, trigger: trigger6C)
            UNUserNotificationCenter.current().add(request6C) { error in
                if error != nil {
                    print("something went wrong")
                }
            }
            var dateComponents6D = DateComponents()
            dateComponents6D.hour = 12
            dateComponents6D.minute = 53
            dateComponents6D.second = 30
            let trigger6D = UNCalendarNotificationTrigger(dateMatching: dateComponents6D, repeats: true)
            let content6D = UNMutableNotificationContent()
            content6D.title = "Period 6 D Ends Soon!"
            let randomIdentifier6D = UUID().uuidString
            let request6D = UNNotificationRequest(identifier: randomIdentifier6D, content: content6D, trigger: trigger6D)
            UNUserNotificationCenter.current().add(request6D) { error in
                if error != nil {
                    print("something went wrong")
                }
            }
            var dateComponents7A = DateComponents()
            dateComponents7A.hour = 12
            dateComponents7A.minute = 53
            dateComponents7A.second = 30
            let trigger7A = UNCalendarNotificationTrigger(dateMatching: dateComponents7A, repeats: true)
            let content7A = UNMutableNotificationContent()
            content7A.title = "Period 7 A Ends Soon!"
            let randomIdentifier7A = UUID().uuidString
            let request7A = UNNotificationRequest(identifier: randomIdentifier7A, content: content7A, trigger: trigger7A)
            UNUserNotificationCenter.current().add(request7A) { error in
                if error != nil {
                    print("something went wrong")
                }
            }
            var dateComponents7C = DateComponents()
            dateComponents7C.hour = 11
            dateComponents7C.minute = 47
            dateComponents7C.second = 30
            let trigger7C = UNCalendarNotificationTrigger(dateMatching: dateComponents7C, repeats: true)
            let content7C = UNMutableNotificationContent()
            content7C.title = "Period 7 C Ends Soon!"
            let randomIdentifier7C = UUID().uuidString
            let request7C = UNNotificationRequest(identifier: randomIdentifier7C, content: content7C, trigger: trigger7C)
            UNUserNotificationCenter.current().add(request7C) { error in
                if error != nil {
                    print("something went wrong")
                }
            }
            var dateComponents7D = DateComponents()
            dateComponents7D.hour = 13
            dateComponents7D.minute = 29
            dateComponents7D.second = 30
            let trigger7D = UNCalendarNotificationTrigger(dateMatching: dateComponents7D, repeats: true)
            let content7D = UNMutableNotificationContent()
            content7D.title = "Period 7 D Ends Soon!"
            let randomIdentifier7D = UUID().uuidString
            let request7D = UNNotificationRequest(identifier: randomIdentifier7D, content: content7D, trigger: trigger7D)
            UNUserNotificationCenter.current().add(request7D) { error in
                if error != nil {
                    print("something went wrong")
                }
            }
            var dateComponents8A = DateComponents()
            dateComponents8A.hour = 13
            dateComponents8A.minute = 43
            dateComponents8A.second = 30
            let trigger8A = UNCalendarNotificationTrigger(dateMatching: dateComponents8A, repeats: true)
            let content8A = UNMutableNotificationContent()
            content8A.title = "Period 8 A Ends Soon!"
            let randomIdentifier8A = UUID().uuidString
            let request8A = UNNotificationRequest(identifier: randomIdentifier8A, content: content8A, trigger: trigger8A)
            UNUserNotificationCenter.current().add(request8A) { error in
                if error != nil {
                    print("something went wrong")
                }
            }
            var dateComponents8C = DateComponents()
            dateComponents8C.hour = 12
            dateComponents8C.minute = 23
            dateComponents8C.second = 30
            let trigger8C = UNCalendarNotificationTrigger(dateMatching: dateComponents8C, repeats: true)
            let content8C = UNMutableNotificationContent()
            content8C.title = "Period 8 C Ends Soon!"
            let randomIdentifier8C = UUID().uuidString
            let request8C = UNNotificationRequest(identifier: randomIdentifier8C, content: content8C, trigger: trigger8C)
            UNUserNotificationCenter.current().add(request8C) { error in
                if error != nil {
                    print("something went wrong")
                }
            }
            var dateComponents8D = DateComponents()
            dateComponents8D.hour = 13
            dateComponents8D.minute = 59
            dateComponents8D.second = 30
            let trigger8D = UNCalendarNotificationTrigger(dateMatching: dateComponents8D, repeats: true)
            let content8D = UNMutableNotificationContent()
            content8D.title = "Period 8 D Ends Soon!"
            let randomIdentifier8D = UUID().uuidString
            let request8D = UNNotificationRequest(identifier: randomIdentifier8D, content: content8D, trigger: trigger8D)
            UNUserNotificationCenter.current().add(request8D) { error in
                if error != nil {
                    print("something went wrong")
                }
            }
            var dateComponents9A = DateComponents()
            dateComponents9A.hour = 14
            dateComponents9A.minute = 29
            dateComponents9A.second = 30
            let trigger9A = UNCalendarNotificationTrigger(dateMatching: dateComponents9A, repeats: true)
            let content9A = UNMutableNotificationContent()
            content9A.title = "Period 9 A Ends Soon!"
            let randomIdentifier9A = UUID().uuidString
            let request9A = UNNotificationRequest(identifier: randomIdentifier9A, content: content9A, trigger: trigger9A)
            UNUserNotificationCenter.current().add(request9A) { error in
                if error != nil {
                    print("something went wrong")
                }
            }
            var dateComponents9C = DateComponents()
            dateComponents9C.hour = 12
            dateComponents9C.minute = 59
            dateComponents9C.second = 30
            let trigger9C = UNCalendarNotificationTrigger(dateMatching: dateComponents9C, repeats: true)
            let content9C = UNMutableNotificationContent()
            content9C.title = "Period 9 C Ends Soon!"
            let randomIdentifier9C = UUID().uuidString
            let request9C = UNNotificationRequest(identifier: randomIdentifier9C, content: content9C, trigger: trigger9C)
            UNUserNotificationCenter.current().add(request9C) { error in
                if error != nil {
                    print("something went wrong")
                }
            }
            var dateComponents9D = DateComponents()
            dateComponents9D.hour = 14
            dateComponents9D.minute = 29
            dateComponents9D.second = 30
            let trigger9D = UNCalendarNotificationTrigger(dateMatching: dateComponents9D, repeats: true)
            let content9D = UNMutableNotificationContent()
            content9D.title = "Period 9 D Ends Soon!"
            let randomIdentifier9D = UUID().uuidString
            let request9D = UNNotificationRequest(identifier: randomIdentifier9D, content: content9D, trigger: trigger9D)
            UNUserNotificationCenter.current().add(request9D) { error in
                if error != nil {
                    print("something went wrong")
                }
            }
            let remove1A = UNUserNotificationCenter.current()
            remove1A.removeDeliveredNotifications(withIdentifiers: [randomIdentifier1A])
            remove1A.removePendingNotificationRequests(withIdentifiers: [randomIdentifier1A])
            
            let remove1C = UNUserNotificationCenter.current()
            remove1C.removeDeliveredNotifications(withIdentifiers: [randomIdentifier1C])
            remove1C.removePendingNotificationRequests(withIdentifiers: [randomIdentifier1C])
            
            let remove2A = UNUserNotificationCenter.current()
            remove2A.removeDeliveredNotifications(withIdentifiers: [randomIdentifier2A])
            remove2A.removePendingNotificationRequests(withIdentifiers: [randomIdentifier2A])
            
            let remove2C = UNUserNotificationCenter.current()
            remove2C.removeDeliveredNotifications(withIdentifiers: [randomIdentifier2C])
            remove2C.removePendingNotificationRequests(withIdentifiers: [randomIdentifier2C])
            
            let remove3A = UNUserNotificationCenter.current()
            remove3A.removeDeliveredNotifications(withIdentifiers: [randomIdentifier3A])
            remove3A.removePendingNotificationRequests(withIdentifiers: [randomIdentifier3A])
            
            let remove3C = UNUserNotificationCenter.current()
            remove3C.removeDeliveredNotifications(withIdentifiers: [randomIdentifier3C])
            remove3C.removePendingNotificationRequests(withIdentifiers: [randomIdentifier3C])
            
            let remove4A = UNUserNotificationCenter.current()
            remove4A.removeDeliveredNotifications(withIdentifiers: [randomIdentifier4A])
            remove4A.removePendingNotificationRequests(withIdentifiers: [randomIdentifier4A])
            
            let remove4C = UNUserNotificationCenter.current()
            remove4C.removeDeliveredNotifications(withIdentifiers: [randomIdentifier4C])
            remove4C.removePendingNotificationRequests(withIdentifiers: [randomIdentifier4C])
            
            let remove5A = UNUserNotificationCenter.current()
            remove5A.removeDeliveredNotifications(withIdentifiers: [randomIdentifier5A])
            remove5A.removePendingNotificationRequests(withIdentifiers: [randomIdentifier5A])
            
            let remove5C = UNUserNotificationCenter.current()
            remove5C.removeDeliveredNotifications(withIdentifiers: [randomIdentifier5C])
            remove5C.removePendingNotificationRequests(withIdentifiers: [randomIdentifier5C])
            
            let remove6A = UNUserNotificationCenter.current()
            remove6A.removeDeliveredNotifications(withIdentifiers: [randomIdentifier6A])
            remove6A.removePendingNotificationRequests(withIdentifiers: [randomIdentifier6A])
            
            let remove6C = UNUserNotificationCenter.current()
            remove6C.removeDeliveredNotifications(withIdentifiers: [randomIdentifier6C])
            remove6C.removePendingNotificationRequests(withIdentifiers: [randomIdentifier6C])
            
            let remove7A = UNUserNotificationCenter.current()
            remove7A.removeDeliveredNotifications(withIdentifiers: [randomIdentifier7A])
            remove7A.removePendingNotificationRequests(withIdentifiers: [randomIdentifier7A])
            
            let remove7C = UNUserNotificationCenter.current()
            remove7C.removeDeliveredNotifications(withIdentifiers: [randomIdentifier7C])
            remove7C.removePendingNotificationRequests(withIdentifiers: [randomIdentifier7C])
            
            let remove8A = UNUserNotificationCenter.current()
            remove8A.removeDeliveredNotifications(withIdentifiers: [randomIdentifier8A])
            remove8A.removePendingNotificationRequests(withIdentifiers: [randomIdentifier8A])
            
            let remove8C = UNUserNotificationCenter.current()
            remove8C.removeDeliveredNotifications(withIdentifiers: [randomIdentifier8C])
            remove8C.removePendingNotificationRequests(withIdentifiers: [randomIdentifier8C])
            
            let remove9A = UNUserNotificationCenter.current()
            remove9A.removeDeliveredNotifications(withIdentifiers: [randomIdentifier9A])
            remove9A.removePendingNotificationRequests(withIdentifiers: [randomIdentifier9A])
            
            let remove9C = UNUserNotificationCenter.current()
            remove9C.removeDeliveredNotifications(withIdentifiers: [randomIdentifier9C])
            remove9C.removePendingNotificationRequests(withIdentifiers: [randomIdentifier9C])
        }
    }
    
    
    
    
    
    //PERIOD 1 A
    
    //NOTIFICATIONS
    @objc func N1A() {
        
        
    }
    
    @objc func N1C() {
       
    }
    
    @objc func N1D() {
        
        
    }
    
    @objc func N2A() {
        
    }
    
    @objc func N2C() {
        
    }
    
    @objc func N2D() {
        
    }
    
    @objc func N3A() {
        
    }
    
    @objc func N3C() {
        
    }
    
    @objc func N3D() {
        
    }
    
    
    @objc func N4A() {
        
    }
    
    
    @objc func N4C() {
        
    }
    
    
    @objc func N4D() {
        
    }
    
    
    @objc func N5A() {
        
    }
    
    @objc func N5C() {
        
    }
    
    @objc func N5D() {
        
    }
    
    
    @objc func N6A() {
        
    }
    
    
    @objc func N6C() {
      
    }
    
    @objc func N6D() {
        
    }
    
    @objc func N7A() {
        
    }
    
    @objc func N7C() {
        
    }
    
    @objc func N7D() {
        
    }
    
    @objc func N8A() {
        
    }
    
    @objc func N8C() {
        
    }
    
    @objc func N8D() {
        
    }
    
    @objc func N9A() {
        
    }
    
    @objc func N9C() {
        
    }
    
    @objc func N9D() {
        
    }
    
    
    

    
    
    
    
    
    
    
    //PERIOD COUNTDOWNS
    @objc func p1A() {
        
    
        let userCalendar1 = Calendar.current
        // Set Current Date
        let date1 = Date()
        let components1 = userCalendar1.dateComponents([.hour, .minute, .month, .year, .day, .second], from: date1)
        let currentDate1 = userCalendar1.date(from: components1)!
        
        // Set Event Date
        var eventDateComponents1 = DateComponents()
        eventDateComponents1.year = components1.year
        eventDateComponents1.month = components1.month
        eventDateComponents1.day = components1.day
        eventDateComponents1.hour = 08
        eventDateComponents1.minute = 24
        eventDateComponents1.second = 00
        
        eventDateComponents1.timeZone = TimeZone(abbreviation: "EST")
        
        // Convert eventDateComponents to the user's calendar
        let eventDate1 = userCalendar1.date(from: eventDateComponents1)!
        
        // Change the seconds to days, hours, minutes and seconds
        let timeLeft1 = userCalendar1.dateComponents([.day, .hour, .minute, .second], from: currentDate1, to: eventDate1)
        
        var hours = ""
        var minutes = ""
        var seconds = ""
        // Display Countdown
       
        
        if timeLeft1.hour! <= 9 {
            hours = "0\(timeLeft1.hour!)"
        } else {
            hours = "\(timeLeft1.hour!)"
        }
        
        if timeLeft1.minute! <= 9 {
            minutes = "0\(timeLeft1.minute!)"
        } else {
            minutes = "\(timeLeft1.minute!)"
        }
        
        if timeLeft1.second! <= 9 {
            seconds = "0\(timeLeft1.second!)"
        } else {
            seconds = "\(timeLeft1.second!)"
        }
    
        
        
        oneALabel.text = "1| " + hours + " : " + minutes + " : " + seconds
        //item2Label.text = "2|  \(timeLeft2.hour!) : \(timeLeft2.minute!) : \(timeLeft2.second!)"
        // Show diffrent text when the event has passed
        endEvent(currentdate1: currentDate1, eventdate1: eventDate1)
    }
    
    func endEvent(currentdate1: Date, eventdate1: Date) {
        if currentdate1 >= eventdate1 {
            oneALabel.text = "1| Over!"
            // Stop Timer
            P1.invalidate()
        }
    }
    
    //PERIOD 1 C
    @objc func p1C() {
        
        let userCalendar1c = Calendar.current
        // Set Current Date
        let date1c = Date()
        let components1c = userCalendar1c.dateComponents([.hour, .minute, .month, .year, .day, .second], from: date1c)
        let currentDate1c = userCalendar1c.date(from: components1c)!
        
        // Set Event Date
        var eventDateComponents1c = DateComponents()
        eventDateComponents1c.year = components1c.year
        eventDateComponents1c.month = components1c.month
        eventDateComponents1c.day = components1c.day
        eventDateComponents1c.hour = 08
        eventDateComponents1c.minute = 12
        eventDateComponents1c.second = 00
        eventDateComponents1c.timeZone = TimeZone(abbreviation: "EST")
        
        // Convert eventDateComponents to the user's calendar
        let eventDate1c = userCalendar1c.date(from: eventDateComponents1c)!
        
        // Change the seconds to days, hours, minutes and seconds
        let timeLeft1c = userCalendar1c.dateComponents([.day, .hour, .minute, .second], from: currentDate1c, to: eventDate1c)
        
        var hours = ""
        var minutes = ""
        var seconds = ""
        // Display Countdown
       
        
        if timeLeft1c.hour! <= 9 {
            hours = "0\(timeLeft1c.hour!)"
        } else {
            hours = "\(timeLeft1c.hour!)"
        }
        
        if timeLeft1c.minute! <= 9 {
            minutes = "0\(timeLeft1c.minute!)"
        } else {
            minutes = "\(timeLeft1c.minute!)"
        }
        
        if timeLeft1c.second! <= 9 {
            seconds = "0\(timeLeft1c.second!)"
        } else {
            seconds = "\(timeLeft1c.second!)"
        }
        
        
        oneCLabel.text = "1| " + hours + " : " + minutes + " : " + seconds
        //item2Label.text = "2|  \(timeLeft2.hour!) : \(timeLeft2.minute!) : \(timeLeft2.second!)"
        // Show diffrent text when the event has passed
        endEvent(currentdate1c: currentDate1c, eventdate1c: eventDate1c)
    }
    
    func endEvent(currentdate1c: Date, eventdate1c: Date) {
        if currentdate1c >= eventdate1c {
            oneCLabel.text = "1| Over!"
            // Stop Timer
            P1.invalidate()
        }
    }
    
    
    
    //PERIOD 1 D
    @objc func p1D() {
        
        let userCalendar1d = Calendar.current
        // Set Current Date
        let date1d = Date()
        let components1d = userCalendar1d.dateComponents([.hour, .minute, .month, .year, .day, .second], from: date1d)
        let currentDate1d = userCalendar1d.date(from: components1d)!
        
        // Set Event Date
        var eventDateComponents1d = DateComponents()
        eventDateComponents1d.year = components1d.year
        eventDateComponents1d.month = components1d.month
        eventDateComponents1d.day = components1d.day
        eventDateComponents1d.hour = 10
        eventDateComponents1d.minute = 06
        eventDateComponents1d.second = 00
        eventDateComponents1d.timeZone = TimeZone(abbreviation: "EST")
        
        // Convert eventDateComponents to the user's calendar
        let eventDate1d = userCalendar1d.date(from: eventDateComponents1d)!
        
        // Change the seconds to days, hours, minutes and seconds
        let timeLeft1d = userCalendar1d.dateComponents([.day, .hour, .minute, .second], from: currentDate1d, to: eventDate1d)
        
        var hours = ""
        var minutes = ""
        var seconds = ""
        // Display Countdown
       
        
        if timeLeft1d.hour! <= 9 {
            hours = "0\(timeLeft1d.hour!)"
        } else {
            hours = "\(timeLeft1d.hour!)"
        }
        
        if timeLeft1d.minute! <= 9 {
            minutes = "0\(timeLeft1d.minute!)"
        } else {
            minutes = "\(timeLeft1d.minute!)"
        }
        
        if timeLeft1d.second! <= 9 {
            seconds = "0\(timeLeft1d.second!)"
        } else {
            seconds = "\(timeLeft1d.second!)"
        }
        
        
        oneDLabel.text = "1| " + hours + " : " + minutes + " : " + seconds
        //item2Label.text = "2|  \(timeLeft2.hour!) : \(timeLeft2.minute!) : \(timeLeft2.second!)"
        // Show diffrent text when the event has passed
        endEvent(currentdate1d: currentDate1d, eventdate1d: eventDate1d)
    }
    
    func endEvent(currentdate1d: Date, eventdate1d: Date) {
        if currentdate1d >= eventdate1d {
            oneDLabel.text = "1| Over!"
            // Stop Timer
            P1.invalidate()
        }
    }
    
    
    
    //PERIOD 2 A
    @objc func p2A() {
        
        let userCalendar2A = Calendar.current
        // Set Current Date
        let date2A = Date()
        let components2A = userCalendar2A.dateComponents([.hour, .minute, .month, .year, .day, .second], from: date2A)
        let currentDate2A = userCalendar2A.date(from: components2A)!
        
        // Set Event Date
        var eventDateComponents2A = DateComponents()
        eventDateComponents2A.year = components2A.year
        eventDateComponents2A.month = components2A.month
        eventDateComponents2A.day = components2A.day
        eventDateComponents2A.hour = 09
        eventDateComponents2A.minute = 09
        eventDateComponents2A.second = 00
        eventDateComponents2A.timeZone = TimeZone(abbreviation: "EST")
        
        // Convert eventDateComponents to the user's calendar
        let eventDate2A = userCalendar2A.date(from: eventDateComponents2A)!
        
        // Change the seconds to days, hours, minutes and seconds
        let timeLeft2A = userCalendar2A.dateComponents([.day, .hour, .minute, .second], from: currentDate2A, to: eventDate2A)
        
        var hours = ""
        var minutes = ""
        var seconds = ""
        // Display Countdown
       
        
        if timeLeft2A.hour! <= 9 {
            hours = "0\(timeLeft2A.hour!)"
        } else {
            hours = "\(timeLeft2A.hour!)"
        }
        
        if timeLeft2A.minute! <= 9 {
            minutes = "0\(timeLeft2A.minute!)"
        } else {
            minutes = "\(timeLeft2A.minute!)"
        }
        
        if timeLeft2A.second! <= 9 {
            seconds = "0\(timeLeft2A.second!)"
        } else {
            seconds = "\(timeLeft2A.second!)"
        }
        
        
        twoALabel.text = "2| " + hours + " : " + minutes + " : " + seconds
        //item2Label.text = "2|  \(timeLeft2.hour!) : \(timeLeft2.minute!) : \(timeLeft2.second!)"
        // Show diffrent text when the event has passed
        endEvent(currentdate2A: currentDate2A, eventdate2A: eventDate2A)
    }
    
    func endEvent(currentdate2A: Date, eventdate2A: Date) {
        if currentdate2A >= eventdate2A {
            twoALabel.text = "2| Over!"
            // Stop Timer
            P2.invalidate()
        }
    }
    
    
    //PERIOD 2 C
    @objc func p2C() {
        
        let userCalendar2C = Calendar.current
        // Set Current Date
        let date2C = Date()
        let components2C = userCalendar2C.dateComponents([.hour, .minute, .month, .year, .day, .second], from: date2C)
        let currentDate2C = userCalendar2C.date(from: components2C)!
        
        // Set Event Date
        var eventDateComponents2C = DateComponents()
        eventDateComponents2C.year = components2C.year
        eventDateComponents2C.month = components2C.month
        eventDateComponents2C.day = components2C.day
        eventDateComponents2C.hour = 08
        eventDateComponents2C.minute = 48
        eventDateComponents2C.second = 00
        eventDateComponents2C.timeZone = TimeZone(abbreviation: "EST")
        
        // Convert eventDateComponents to the user's calendar
        let eventDate2C = userCalendar2C.date(from: eventDateComponents2C)!
        
        // Change the seconds to days, hours, minutes and seconds
        let timeLeft2C = userCalendar2C.dateComponents([.day, .hour, .minute, .second], from: currentDate2C, to: eventDate2C)
        
        var hours = ""
        var minutes = ""
        var seconds = ""
        // Display Countdown
       
        
        if timeLeft2C.hour! <= 9 {
            hours = "0\(timeLeft2C.hour!)"
        } else {
            hours = "\(timeLeft2C.hour!)"
        }
        
        if timeLeft2C.minute! <= 9 {
            minutes = "0\(timeLeft2C.minute!)"
        } else {
            minutes = "\(timeLeft2C.minute!)"
        }
        
        if timeLeft2C.second! <= 9 {
            seconds = "0\(timeLeft2C.second!)"
        } else {
            seconds = "\(timeLeft2C.second!)"
        }
        
        
        twoCLabel.text = "2| " + hours + " : " + minutes + " : " + seconds
        //item2Label.text = "2|  \(timeLeft2.hour!) : \(timeLeft2.minute!) : \(timeLeft2.second!)"
        // Show diffrent text when the event has passed
        endEvent(currentdate2C: currentDate2C, eventdate2C: eventDate2C)
    }
    
    func endEvent(currentdate2C: Date, eventdate2C: Date) {
        if currentdate2C >= eventdate2C {
            twoCLabel.text = "2| Over!"
            // Stop Timer
            P2.invalidate()
        }
    }
    
    
    //PERIOD 2 D
    @objc func p2D() {
        
        let userCalendar2D = Calendar.current
        // Set Current Date
        let date2D = Date()
        let components2D = userCalendar2D.dateComponents([.hour, .minute, .month, .year, .day, .second], from: date2D)
        let currentDate2D = userCalendar2D.date(from: components2D)!
        
        // Set Event Date
        var eventDateComponents2D = DateComponents()
        eventDateComponents2D.year = components2D.year
        eventDateComponents2D.month = components2D.month
        eventDateComponents2D.day = components2D.day
        eventDateComponents2D.hour = 10
        eventDateComponents2D.minute = 36
        eventDateComponents2D.second = 00
        eventDateComponents2D.timeZone = TimeZone(abbreviation: "EST")
        
        // Convert eventDateComponents to the user's calendar
        let eventDate2D = userCalendar2D.date(from: eventDateComponents2D)!
        
        // Change the seconds to days, hours, minutes and seconds
        let timeLeft2D = userCalendar2D.dateComponents([.day, .hour, .minute, .second], from: currentDate2D, to: eventDate2D)
        
        var hours = ""
        var minutes = ""
        var seconds = ""
        // Display Countdown
       
        
        if timeLeft2D.hour! <= 9 {
            hours = "0\(timeLeft2D.hour!)"
        } else {
            hours = "\(timeLeft2D.hour!)"
        }
        
        if timeLeft2D.minute! <= 9 {
            minutes = "0\(timeLeft2D.minute!)"
        } else {
            minutes = "\(timeLeft2D.minute!)"
        }
        
        if timeLeft2D.second! <= 9 {
            seconds = "0\(timeLeft2D.second!)"
        } else {
            seconds = "\(timeLeft2D.second!)"
        }
        
        
        twoDLabel.text = "2| " + hours + " : " + minutes + " : " + seconds
        //item2Label.text = "2|  \(timeLeft2.hour!) : \(timeLeft2.minute!) : \(timeLeft2.second!)"
        // Show diffrent text when the event has passed
        endEvent(currentdate2D: currentDate2D, eventdate2D: eventDate2D)
    }
    
    func endEvent(currentdate2D: Date, eventdate2D: Date) {
        if currentdate2D >= eventdate2D {
            twoDLabel.text = "2| Over!"
            // Stop Timer
            P2.invalidate()
        }
    }
    
    
    //PERIOD 3 A
    @objc func p3A() {
        
        let userCalendar3A = Calendar.current
        // Set Current Date
        let date3A = Date()
        let components3A = userCalendar3A.dateComponents([.hour, .minute, .month, .year, .day, .second], from: date3A)
        let currentDate3A = userCalendar3A.date(from: components3A)!
        
        // Set Event Date
        var eventDateComponents3A = DateComponents()
        eventDateComponents3A.year = components3A.year
        eventDateComponents3A.month = components3A.month
        eventDateComponents3A.day = components3A.day
        eventDateComponents3A.hour = 09
        eventDateComponents3A.minute = 54
        eventDateComponents3A.second = 00
        eventDateComponents3A.timeZone = TimeZone(abbreviation: "EST")
        
        // Convert eventDateComponents to the user's calendar
        let eventDate3A = userCalendar3A.date(from: eventDateComponents3A)!
        
        // Change the seconds to days, hours, minutes and seconds
        let timeLeft3A = userCalendar3A.dateComponents([.day, .hour, .minute, .second], from: currentDate3A, to: eventDate3A)
        
        var hours = ""
        var minutes = ""
        var seconds = ""
        // Display Countdown
       
        
        if timeLeft3A.hour! <= 9 {
            hours = "0\(timeLeft3A.hour!)"
        } else {
            hours = "\(timeLeft3A.hour!)"
        }
        
        if timeLeft3A.minute! <= 9 {
            minutes = "0\(timeLeft3A.minute!)"
        } else {
            minutes = "\(timeLeft3A.minute!)"
        }
        
        if timeLeft3A.second! <= 9 {
            seconds = "0\(timeLeft3A.second!)"
        } else {
            seconds = "\(timeLeft3A.second!)"
        }
        
        
        threeALabel.text = "3| " + hours + " : " + minutes + " : " + seconds
        //item2Label.text = "2|  \(timeLeft2.hour!) : \(timeLeft2.minute!) : \(timeLeft2.second!)"
        // Show diffrent text when the event has passed
        endEvent(currentdate3A: currentDate3A, eventdate3A: eventDate3A)
    }
    
    func endEvent(currentdate3A: Date, eventdate3A: Date) {
        if currentdate3A >= eventdate3A {
            threeALabel.text = "3| Over!"
            // Stop Timer
            P3.invalidate()
        }
    }
    
    
    //PERIOD 3 C
    @objc func p3C() {
        
        let userCalendar3C = Calendar.current
        // Set Current Date
        let date3C = Date()
        let components3C = userCalendar3C.dateComponents([.hour, .minute, .month, .year, .day, .second], from: date3C)
        let currentDate3C = userCalendar3C.date(from: components3C)!
        
        // Set Event Date
        var eventDateComponents3C = DateComponents()
        eventDateComponents3C.year = components3C.year
        eventDateComponents3C.month = components3C.month
        eventDateComponents3C.day = components3C.day
        eventDateComponents3C.hour = 09
        eventDateComponents3C.minute = 24
        eventDateComponents3C.second = 00
        eventDateComponents3C.timeZone = TimeZone(abbreviation: "EST")
        
        // Convert eventDateComponents to the user's calendar
        let eventDate3C = userCalendar3C.date(from: eventDateComponents3C)!
        
        // Change the seconds to days, hours, minutes and seconds
        let timeLeft3C = userCalendar3C.dateComponents([.day, .hour, .minute, .second], from: currentDate3C, to: eventDate3C)
        
        var hours = ""
        var minutes = ""
        var seconds = ""
        // Display Countdown
       
        
        if timeLeft3C.hour! <= 9 {
            hours = "0\(timeLeft3C.hour!)"
        } else {
            hours = "\(timeLeft3C.hour!)"
        }
        
        if timeLeft3C.minute! <= 9 {
            minutes = "0\(timeLeft3C.minute!)"
        } else {
            minutes = "\(timeLeft3C.minute!)"
        }
        
        if timeLeft3C.second! <= 9 {
            seconds = "0\(timeLeft3C.second!)"
        } else {
            seconds = "\(timeLeft3C.second!)"
        }
        
        
        threeCLabel.text = "3| " + hours + " : " + minutes + " : " + seconds
        //item2Label.text = "2|  \(timeLeft2.hour!) : \(timeLeft2.minute!) : \(timeLeft2.second!)"
        // Show diffrent text when the event has passed
        endEvent(currentdate3C: currentDate3C, eventdate3C: eventDate3C)
    }
    
    func endEvent(currentdate3C: Date, eventdate3C: Date) {
        if currentdate3C >= eventdate3C {
            threeCLabel.text = "3| Over!"
            // Stop Timer
            P3.invalidate()
        }
    }
    
    
    
    //PERIOD 3 D
    @objc func p3D() {
        
        let userCalendar3D = Calendar.current
        // Set Current Date
        let date3D = Date()
        let components3D = userCalendar3D.dateComponents([.hour, .minute, .month, .year, .day, .second], from: date3D)
        let currentDate3D = userCalendar3D.date(from: components3D)!
        
        // Set Event Date
        var eventDateComponents3D = DateComponents()
        eventDateComponents3D.year = components3D.year
        eventDateComponents3D.month = components3D.month
        eventDateComponents3D.day = components3D.day
        eventDateComponents3D.hour = 11
        eventDateComponents3D.minute = 06
        eventDateComponents3D.second = 00
        eventDateComponents3D.timeZone = TimeZone(abbreviation: "EST")
        
        // Convert eventDateComponents to the user's calendar
        let eventDate3D = userCalendar3D.date(from: eventDateComponents3D)!
        
        // Change the seconds to days, hours, minutes and seconds
        let timeLeft3D = userCalendar3D.dateComponents([.day, .hour, .minute, .second], from: currentDate3D, to: eventDate3D)
        
        var hours = ""
        var minutes = ""
        var seconds = ""
        // Display Countdown
       
        
        if timeLeft3D.hour! <= 9 {
            hours = "0\(timeLeft3D.hour!)"
        } else {
            hours = "\(timeLeft3D.hour!)"
        }
        
        if timeLeft3D.minute! <= 9 {
            minutes = "0\(timeLeft3D.minute!)"
        } else {
            minutes = "\(timeLeft3D.minute!)"
        }
        
        if timeLeft3D.second! <= 9 {
            seconds = "0\(timeLeft3D.second!)"
        } else {
            seconds = "\(timeLeft3D.second!)"
        }
        
        
        threeDLabel.text = "3| " + hours + " : " + minutes + " : " + seconds
        //item2Label.text = "2|  \(timeLeft2.hour!) : \(timeLeft2.minute!) : \(timeLeft2.second!)"
        // Show diffrent text when the event has passed
        endEvent(currentdate3D: currentDate3D, eventdate3D: eventDate3D)
    }
    
    func endEvent(currentdate3D: Date, eventdate3D: Date) {
        if currentdate3D >= eventdate3D {
            threeDLabel.text = "3| Over!"
            // Stop Timer
            P3.invalidate()
        }
    }
    
    
    //PERIOD 4 A
    @objc func p4A() {
        
        let userCalendar4A = Calendar.current
        // Set Current Date
        let date4A = Date()
        let components4A = userCalendar4A.dateComponents([.hour, .minute, .month, .year, .day, .second], from: date4A)
        let currentDate4A = userCalendar4A.date(from: components4A)!
        
        // Set Event Date
        var eventDateComponents4A = DateComponents()
        eventDateComponents4A.year = components4A.year
        eventDateComponents4A.month = components4A.month
        eventDateComponents4A.day = components4A.day
        eventDateComponents4A.hour = 10
        eventDateComponents4A.minute = 39
        eventDateComponents4A.second = 00
        eventDateComponents4A.timeZone = TimeZone(abbreviation: "EST")
        
        // Convert eventDateComponents to the user's calendar
        let eventDate4A = userCalendar4A.date(from: eventDateComponents4A)!
        
        // Change the seconds to days, hours, minutes and seconds
        let timeLeft4A = userCalendar4A.dateComponents([.day, .hour, .minute, .second], from: currentDate4A, to: eventDate4A)
        
        var hours = ""
        var minutes = ""
        var seconds = ""
        // Display Countdown
       
        
        if timeLeft4A.hour! <= 9 {
            hours = "0\(timeLeft4A.hour!)"
        } else {
            hours = "\(timeLeft4A.hour!)"
        }
        
        if timeLeft4A.minute! <= 9 {
            minutes = "0\(timeLeft4A.minute!)"
        } else {
            minutes = "\(timeLeft4A.minute!)"
        }
        
        if timeLeft4A.second! <= 9 {
            seconds = "0\(timeLeft4A.second!)"
        } else {
            seconds = "\(timeLeft4A.second!)"
        }
        
        
        fourALabel.text = "4| " + hours + " : " + minutes + " : " + seconds
        //item2Label.text = "2|  \(timeLeft2.hour!) : \(timeLeft2.minute!) : \(timeLeft2.second!)"
        // Show diffrent text when the event has passed
        endEvent(currentdate4A: currentDate4A, eventdate4A: eventDate4A)
    }
    
    func endEvent(currentdate4A: Date, eventdate4A: Date) {
        if currentdate4A >= eventdate4A {
            fourALabel.text = "4| Over!"
            // Stop Timer
            P4.invalidate()
        }
    }
    
    
    //PERIOD 4 C
    @objc func p4C() {
        
        let userCalendar4C = Calendar.current
        // Set Current Date
        let date4C = Date()
        let components4C = userCalendar4C.dateComponents([.hour, .minute, .month, .year, .day, .second], from: date4C)
        let currentDate4C = userCalendar4C.date(from: components4C)!
        
        // Set Event Date
        var eventDateComponents4C = DateComponents()
        eventDateComponents4C.year = components4C.year
        eventDateComponents4C.month = components4C.month
        eventDateComponents4C.day = components4C.day
        eventDateComponents4C.hour = 10
        eventDateComponents4C.minute = 00
        eventDateComponents4C.second = 00
        eventDateComponents4C.timeZone = TimeZone(abbreviation: "EST")
        
        // Convert eventDateComponents to the user's calendar
        let eventDate4C = userCalendar4C.date(from: eventDateComponents4C)!
        
        // Change the seconds to days, hours, minutes and seconds
        let timeLeft4C = userCalendar4C.dateComponents([.day, .hour, .minute, .second], from: currentDate4C, to: eventDate4C)
        
        var hours = ""
        var minutes = ""
        var seconds = ""
        // Display Countdown
       
        
        if timeLeft4C.hour! <= 9 {
            hours = "0\(timeLeft4C.hour!)"
        } else {
            hours = "\(timeLeft4C.hour!)"
        }
        
        if timeLeft4C.minute! <= 9 {
            minutes = "0\(timeLeft4C.minute!)"
        } else {
            minutes = "\(timeLeft4C.minute!)"
        }
        
        if timeLeft4C.second! <= 9 {
            seconds = "0\(timeLeft4C.second!)"
        } else {
            seconds = "\(timeLeft4C.second!)"
        }
        
        
        fourCLabel.text = "4| " + hours + " : " + minutes + " : " + seconds
        //item2Label.text = "2|  \(timeLeft2.hour!) : \(timeLeft2.minute!) : \(timeLeft2.second!)"
        // Show diffrent text when the event has passed
        endEvent(currentdate4C: currentDate4C, eventdate4C: eventDate4C)
    }
    
    func endEvent(currentdate4C: Date, eventdate4C: Date) {
        if currentdate4C >= eventdate4C {
            fourCLabel.text = "4| Over!"
            // Stop Timer
            P4.invalidate()
        }
    }
    
    //PERIOD 4 D
    @objc func p4D() {
        
        let userCalendar4D = Calendar.current
        // Set Current Date
        let date4D = Date()
        let components4D = userCalendar4D.dateComponents([.hour, .minute, .month, .year, .day, .second], from: date4D)
        let currentDate4D = userCalendar4D.date(from: components4D)!
        
        // Set Event Date
        var eventDateComponents4D = DateComponents()
        eventDateComponents4D.year = components4D.year
        eventDateComponents4D.month = components4D.month
        eventDateComponents4D.day = components4D.day
        eventDateComponents4D.hour = 11
        eventDateComponents4D.minute = 42
        eventDateComponents4D.second = 00
        eventDateComponents4D.timeZone = TimeZone(abbreviation: "EST")
        
        // Convert eventDateComponents to the user's calendar
        let eventDate4D = userCalendar4D.date(from: eventDateComponents4D)!
        
        // Change the seconds to days, hours, minutes and seconds
        let timeLeft4D = userCalendar4D.dateComponents([.day, .hour, .minute, .second], from: currentDate4D, to: eventDate4D)
        
        var hours = ""
        var minutes = ""
        var seconds = ""
        // Display Countdown
       
        
        if timeLeft4D.hour! <= 9 {
            hours = "0\(timeLeft4D.hour!)"
        } else {
            hours = "\(timeLeft4D.hour!)"
        }
        
        if timeLeft4D.minute! <= 9 {
            minutes = "0\(timeLeft4D.minute!)"
        } else {
            minutes = "\(timeLeft4D.minute!)"
        }
        
        if timeLeft4D.second! <= 9 {
            seconds = "0\(timeLeft4D.second!)"
        } else {
            seconds = "\(timeLeft4D.second!)"
        }
        
        
        fourDLabel.text = "4| " + hours + " : " + minutes + " : " + seconds
        //item2Label.text = "2|  \(timeLeft2.hour!) : \(timeLeft2.minute!) : \(timeLeft2.second!)"
        // Show diffrent text when the event has passed
        endEvent(currentdate4D: currentDate4D, eventdate4D: eventDate4D)
    }
    
    func endEvent(currentdate4D: Date, eventdate4D: Date) {
        if currentdate4D >= eventdate4D {
            fourDLabel.text = "4| Over!"
            // Stop Timer
            P4.invalidate()
        }
    }
    
    
    //PERIOD 5 A
    @objc func p5A() {
        
        let userCalendar5A = Calendar.current
        // Set Current Date
        let date5A = Date()
        let components5A = userCalendar5A.dateComponents([.hour, .minute, .month, .year, .day, .second], from: date5A)
        let currentDate5A = userCalendar5A.date(from: components5A)!
        
        // Set Event Date
        var eventDateComponents5A = DateComponents()
        eventDateComponents5A.year = components5A.year
        eventDateComponents5A.month = components5A.month
        eventDateComponents5A.day = components5A.day
        eventDateComponents5A.hour = 11
        eventDateComponents5A.minute = 24
        eventDateComponents5A.second = 00
        eventDateComponents5A.timeZone = TimeZone(abbreviation: "EST")
        
        // Convert eventDateComponents to the user's calendar
        let eventDate5A = userCalendar5A.date(from: eventDateComponents5A)!
        
        // Change the seconds to days, hours, minutes and seconds
        let timeLeft5A = userCalendar5A.dateComponents([.day, .hour, .minute, .second], from: currentDate5A, to: eventDate5A)
        
        var hours = ""
        var minutes = ""
        var seconds = ""
        // Display Countdown
       
        
        if timeLeft5A.hour! <= 9 {
            hours = "0\(timeLeft5A.hour!)"
        } else {
            hours = "\(timeLeft5A.hour!)"
        }
        
        if timeLeft5A.minute! <= 9 {
            minutes = "0\(timeLeft5A.minute!)"
        } else {
            minutes = "\(timeLeft5A.minute!)"
        }
        
        if timeLeft5A.second! <= 9 {
            seconds = "0\(timeLeft5A.second!)"
        } else {
            seconds = "\(timeLeft5A.second!)"
        }
        
        
        fiveALabel.text = "5| " + hours + " : " + minutes + " : " + seconds
        //item2Label.text = "2|  \(timeLeft2.hour!) : \(timeLeft2.minute!) : \(timeLeft2.second!)"
        // Show diffrent text when the event has passed
        endEvent(currentdate5A: currentDate5A, eventdate5A: eventDate5A)
    }
    
    func endEvent(currentdate5A: Date, eventdate5A: Date) {
        if currentdate5A >= eventdate5A {
            fiveALabel.text = "5| Over!"
            // Stop Timer
            P5.invalidate()
        }
    }
    
    //PERIOD 5 C
    @objc func p5C() {
        
        let userCalendar5C = Calendar.current
        // Set Current Date
        let date5C = Date()
        let components5C = userCalendar5C.dateComponents([.hour, .minute, .month, .year, .day, .second], from: date5C)
        let currentDate5C = userCalendar5C.date(from: components5C)!
        
        // Set Event Date
        var eventDateComponents5C = DateComponents()
        eventDateComponents5C.year = components5C.year
        eventDateComponents5C.month = components5C.month
        eventDateComponents5C.day = components5C.day
        eventDateComponents5C.hour = 10
        eventDateComponents5C.minute = 36
        eventDateComponents5C.second = 00
        eventDateComponents5C.timeZone = TimeZone(abbreviation: "EST")
        
        // Convert eventDateComponents to the user's calendar
        let eventDate5C = userCalendar5C.date(from: eventDateComponents5C)!
        
        // Change the seconds to days, hours, minutes and seconds
        let timeLeft5C = userCalendar5C.dateComponents([.day, .hour, .minute, .second], from: currentDate5C, to: eventDate5C)
        
        var hours = ""
        var minutes = ""
        var seconds = ""
        // Display Countdown
       
        
        if timeLeft5C.hour! <= 9 {
            hours = "0\(timeLeft5C.hour!)"
        } else {
            hours = "\(timeLeft5C.hour!)"
        }
        
        if timeLeft5C.minute! <= 9 {
            minutes = "0\(timeLeft5C.minute!)"
        } else {
            minutes = "\(timeLeft5C.minute!)"
        }
        
        if timeLeft5C.second! <= 9 {
            seconds = "0\(timeLeft5C.second!)"
        } else {
            seconds = "\(timeLeft5C.second!)"
        }
        
        
        fiveCLabel.text = "5| " + hours + " : " + minutes + " : " + seconds
        //item2Label.text = "2|  \(timeLeft2.hour!) : \(timeLeft2.minute!) : \(timeLeft2.second!)"
        // Show diffrent text when the event has passed
        endEvent(currentdate5C: currentDate5C, eventdate5C: eventDate5C)
    }
    
    func endEvent(currentdate5C: Date, eventdate5C: Date) {
        if currentdate5C >= eventdate5C {
            fiveCLabel.text = "5| Over!"
            // Stop Timer
            P5.invalidate()
        }
    }
    
    //PERIOD 5 D
    @objc func p5D() {
        
        let userCalendar5D = Calendar.current
        // Set Current Date
        let date5D = Date()
        let components5D = userCalendar5D.dateComponents([.hour, .minute, .month, .year, .day, .second], from: date5D)
        let currentDate5D = userCalendar5D.date(from: components5D)!
        
        // Set Event Date
        var eventDateComponents5D = DateComponents()
        eventDateComponents5D.year = components5D.year
        eventDateComponents5D.month = components5D.month
        eventDateComponents5D.day = components5D.day
        eventDateComponents5D.hour = 12
        eventDateComponents5D.minute = 18
        eventDateComponents5D.second = 00
        eventDateComponents5D.timeZone = TimeZone(abbreviation: "EST")
        
        // Convert eventDateComponents to the user's calendar
        let eventDate5D = userCalendar5D.date(from: eventDateComponents5D)!
        
        // Change the seconds to days, hours, minutes and seconds
        let timeLeft5D = userCalendar5D.dateComponents([.day, .hour, .minute, .second], from: currentDate5D, to: eventDate5D)
        
        var hours = ""
        var minutes = ""
        var seconds = ""
        // Display Countdown
       
        
        if timeLeft5D.hour! <= 9 {
            hours = "0\(timeLeft5D.hour!)"
        } else {
            hours = "\(timeLeft5D.hour!)"
        }
        
        if timeLeft5D.minute! <= 9 {
            minutes = "0\(timeLeft5D.minute!)"
        } else {
            minutes = "\(timeLeft5D.minute!)"
        }
        
        if timeLeft5D.second! <= 9 {
            seconds = "0\(timeLeft5D.second!)"
        } else {
            seconds = "\(timeLeft5D.second!)"
        }
        
        
        fiveDLabel.text = "5| " + hours + " : " + minutes + " : " + seconds
        //item2Label.text = "2|  \(timeLeft2.hour!) : \(timeLeft2.minute!) : \(timeLeft2.second!)"
        // Show diffrent text when the event has passed
        endEvent(currentdate5D: currentDate5D, eventdate5D: eventDate5D)
    }
    
    func endEvent(currentdate5D: Date, eventdate5D: Date) {
        if currentdate5D >= eventdate5D {
            fiveDLabel.text = "5| Over!"
            // Stop Timer
            P5.invalidate()
        }
    }
    
    
    
    //PERIOD 6 A
    @objc func p6A() {
        
        let userCalendar6A = Calendar.current
        // Set Current Date
        let date6A = Date()
        let components6A = userCalendar6A.dateComponents([.hour, .minute, .month, .year, .day, .second], from: date6A)
        let currentDate6A = userCalendar6A.date(from: components6A)!
        
        // Set Event Date
        var eventDateComponents6A = DateComponents()
        eventDateComponents6A.year = components6A.year
        eventDateComponents6A.month = components6A.month
        eventDateComponents6A.day = components6A.day
        eventDateComponents6A.hour = 12
        eventDateComponents6A.minute = 09
        eventDateComponents6A.second = 00
        eventDateComponents6A.timeZone = TimeZone(abbreviation: "EST")
        
        // Convert eventDateComponents to the user's calendar
        let eventDate6A = userCalendar6A.date(from: eventDateComponents6A)!
        
        // Change the seconds to days, hours, minutes and seconds
        let timeLeft6A = userCalendar6A.dateComponents([.day, .hour, .minute, .second], from: currentDate6A, to: eventDate6A)
        
        var hours = ""
        var minutes = ""
        var seconds = ""
        // Display Countdown
       
        
        if timeLeft6A.hour! <= 9 {
            hours = "0\(timeLeft6A.hour!)"
        } else {
            hours = "\(timeLeft6A.hour!)"
        }
        
        if timeLeft6A.minute! <= 9 {
            minutes = "0\(timeLeft6A.minute!)"
        } else {
            minutes = "\(timeLeft6A.minute!)"
        }
        
        if timeLeft6A.second! <= 9 {
            seconds = "0\(timeLeft6A.second!)"
        } else {
            seconds = "\(timeLeft6A.second!)"
        }
        
        
        sixALabel.text = "6| " + hours + " : " + minutes + " : " + seconds
        //item2Label.text = "2|  \(timeLeft2.hour!) : \(timeLeft2.minute!) : \(timeLeft2.second!)"
        // Show diffrent text when the event has passed
        endEvent(currentdate6A: currentDate6A, eventdate6A: eventDate6A)
    }
    
    func endEvent(currentdate6A: Date, eventdate6A: Date) {
        if currentdate6A >= eventdate6A {
            sixALabel.text = "6| Over!"
            // Stop Timer
            P6.invalidate()
        }
    }
    
    
    
    //PERIOD 6 C
    @objc func p6C() {
        
        let userCalendar6C = Calendar.current
        // Set Current Date
        let date6C = Date()
        let components6C = userCalendar6C.dateComponents([.hour, .minute, .month, .year, .day, .second], from: date6C)
        let currentDate6C = userCalendar6C.date(from: components6C)!
        
        // Set Event Date
        var eventDateComponents6C = DateComponents()
        eventDateComponents6C.year = components6C.year
        eventDateComponents6C.month = components6C.month
        eventDateComponents6C.day = components6C.day
        eventDateComponents6C.hour = 11
        eventDateComponents6C.minute = 12
        eventDateComponents6C.second = 00
        eventDateComponents6C.timeZone = TimeZone(abbreviation: "EST")
        
        // Convert eventDateComponents to the user's calendar
        let eventDate6C = userCalendar6C.date(from: eventDateComponents6C)!
        
        // Change the seconds to days, hours, minutes and seconds
        let timeLeft6C = userCalendar6C.dateComponents([.day, .hour, .minute, .second], from: currentDate6C, to: eventDate6C)
        
        var hours = ""
        var minutes = ""
        var seconds = ""
        // Display Countdown
       
        
        if timeLeft6C.hour! <= 9 {
            hours = "0\(timeLeft6C.hour!)"
        } else {
            hours = "\(timeLeft6C.hour!)"
        }
        
        if timeLeft6C.minute! <= 9 {
            minutes = "0\(timeLeft6C.minute!)"
        } else {
            minutes = "\(timeLeft6C.minute!)"
        }
        
        if timeLeft6C.second! <= 9 {
            seconds = "0\(timeLeft6C.second!)"
        } else {
            seconds = "\(timeLeft6C.second!)"
        }
        
        
        sixCLabel.text = "6| " + hours + " : " + minutes + " : " + seconds
        //item2Label.text = "2|  \(timeLeft2.hour!) : \(timeLeft2.minute!) : \(timeLeft2.second!)"
        // Show diffrent text when the event has passed
        endEvent(currentdate6C: currentDate6C, eventdate6C: eventDate6C)
    }
    
    func endEvent(currentdate6C: Date, eventdate6C: Date) {
        if currentdate6C >= eventdate6C {
            sixCLabel.text = "6| Over!"
            // Stop Timer
            P6.invalidate()
        }
    }
    
    
    //PERIOD 6 D
    @objc func p6D() {
        
        let userCalendar6D = Calendar.current
        // Set Current Date
        let date6D = Date()
        let components6D = userCalendar6D.dateComponents([.hour, .minute, .month, .year, .day, .second], from: date6D)
        let currentDate6D = userCalendar6D.date(from: components6D)!
        
        // Set Event Date
        var eventDateComponents6D = DateComponents()
        eventDateComponents6D.year = components6D.year
        eventDateComponents6D.month = components6D.month
        eventDateComponents6D.day = components6D.day
        eventDateComponents6D.hour = 12
        eventDateComponents6D.minute = 54
        eventDateComponents6D.second = 00
        eventDateComponents6D.timeZone = TimeZone(abbreviation: "EST")
        
        // Convert eventDateComponents to the user's calendar
        let eventDate6D = userCalendar6D.date(from: eventDateComponents6D)!
        
        // Change the seconds to days, hours, minutes and seconds
        let timeLeft6D = userCalendar6D.dateComponents([.day, .hour, .minute, .second], from: currentDate6D, to: eventDate6D)
        
        var hours = ""
        var minutes = ""
        var seconds = ""
        // Display Countdown
       
        
        if timeLeft6D.hour! <= 9 {
            hours = "0\(timeLeft6D.hour!)"
        } else {
            hours = "\(timeLeft6D.hour!)"
        }
        
        if timeLeft6D.minute! <= 9 {
            minutes = "0\(timeLeft6D.minute!)"
        } else {
            minutes = "\(timeLeft6D.minute!)"
        }
        
        if timeLeft6D.second! <= 9 {
            seconds = "0\(timeLeft6D.second!)"
        } else {
            seconds = "\(timeLeft6D.second!)"
        }
        
        
        sixDLabel.text = "6| " + hours + " : " + minutes + " : " + seconds
        //item2Label.text = "2|  \(timeLeft2.hour!) : \(timeLeft2.minute!) : \(timeLeft2.second!)"
        // Show diffrent text when the event has passed
        endEvent(currentdate6D: currentDate6D, eventdate6D: eventDate6D)
    }
    
    func endEvent(currentdate6D: Date, eventdate6D: Date) {
        if currentdate6D >= eventdate6D {
            sixDLabel.text = "6| Over!"
            // Stop Timer
            P6.invalidate()
        }
    }
    
    
    
    //PERIOD 7 A
    @objc func p7A() {
        
        let userCalendar7A = Calendar.current
        // Set Current Date
        let date7A = Date()
        let components7A = userCalendar7A.dateComponents([.hour, .minute, .month, .year, .day, .second], from: date7A)
        let currentDate7A = userCalendar7A.date(from: components7A)!
        
        // Set Event Date
        var eventDateComponents7A = DateComponents()
        eventDateComponents7A.year = components7A.year
        eventDateComponents7A.month = components7A.month
        eventDateComponents7A.day = components7A.day
        eventDateComponents7A.hour = 12
        eventDateComponents7A.minute = 54
        eventDateComponents7A.second = 00
        eventDateComponents7A.timeZone = TimeZone(abbreviation: "EST")
        
        // Convert eventDateComponents to the user's calendar
        let eventDate7A = userCalendar7A.date(from: eventDateComponents7A)!
        
        // Change the seconds to days, hours, minutes and seconds
        let timeLeft7A = userCalendar7A.dateComponents([.day, .hour, .minute, .second], from: currentDate7A, to: eventDate7A)
        
        var hours = ""
        var minutes = ""
        var seconds = ""
        // Display Countdown
       
        
        if timeLeft7A.hour! <= 9 {
            hours = "0\(timeLeft7A.hour!)"
        } else {
            hours = "\(timeLeft7A.hour!)"
        }
        
        if timeLeft7A.minute! <= 9 {
            minutes = "0\(timeLeft7A.minute!)"
        } else {
            minutes = "\(timeLeft7A.minute!)"
        }
        
        if timeLeft7A.second! <= 9 {
            seconds = "0\(timeLeft7A.second!)"
        } else {
            seconds = "\(timeLeft7A.second!)"
        }
        
        
        sevenALabel.text = "7| " + hours + " : " + minutes + " : " + seconds
        //item2Label.text = "2|  \(timeLeft2.hour!) : \(timeLeft2.minute!) : \(timeLeft2.second!)"
        // Show diffrent text when the event has passed
        endEvent(currentdate7A: currentDate7A, eventdate7A: eventDate7A)
    }
    
    func endEvent(currentdate7A: Date, eventdate7A: Date) {
        if currentdate7A >= eventdate7A {
            sevenALabel.text = "7| Over!"
            // Stop Timer
            P7.invalidate()
        }
    }
    
    
    //PERIOD 7 C
    @objc func p7C() {
        
        let userCalendar7C = Calendar.current
        // Set Current Date
        let date7C = Date()
        let components7C = userCalendar7C.dateComponents([.hour, .minute, .month, .year, .day, .second], from: date7C)
        let currentDate7C = userCalendar7C.date(from: components7C)!
        
        // Set Event Date
        var eventDateComponents7C = DateComponents()
        eventDateComponents7C.year = components7C.year
        eventDateComponents7C.month = components7C.month
        eventDateComponents7C.day = components7C.day
        eventDateComponents7C.hour = 11
        eventDateComponents7C.minute = 48
        eventDateComponents7C.second = 00
        eventDateComponents7C.timeZone = TimeZone(abbreviation: "EST")
        
        // Convert eventDateComponents to the user's calendar
        let eventDate7C = userCalendar7C.date(from: eventDateComponents7C)!
        
        // Change the seconds to days, hours, minutes and seconds
        let timeLeft7C = userCalendar7C.dateComponents([.day, .hour, .minute, .second], from: currentDate7C, to: eventDate7C)
        
        var hours = ""
        var minutes = ""
        var seconds = ""
        // Display Countdown
       
        
        if timeLeft7C.hour! <= 9 {
            hours = "0\(timeLeft7C.hour!)"
        } else {
            hours = "\(timeLeft7C.hour!)"
        }
        
        if timeLeft7C.minute! <= 9 {
            minutes = "0\(timeLeft7C.minute!)"
        } else {
            minutes = "\(timeLeft7C.minute!)"
        }
        
        if timeLeft7C.second! <= 9 {
            seconds = "0\(timeLeft7C.second!)"
        } else {
            seconds = "\(timeLeft7C.second!)"
        }
        
        
        sevenCLabel.text = "7| " + hours + " : " + minutes + " : " + seconds
        //item2Label.text = "2|  \(timeLeft2.hour!) : \(timeLeft2.minute!) : \(timeLeft2.second!)"
        // Show diffrent text when the event has passed
        endEvent(currentdate7C: currentDate7C, eventdate7C: eventDate7C)
    }
    
    func endEvent(currentdate7C: Date, eventdate7C: Date) {
        if currentdate7C >= eventdate7C {
            sevenCLabel.text = "7| Over!"
            // Stop Timer
            P7.invalidate()
        }
    }
    
    
    //PERIOD 7 D
    @objc func p7D() {
        
        let userCalendar7D = Calendar.current
        // Set Current Date
        let date7D = Date()
        let components7D = userCalendar7D.dateComponents([.hour, .minute, .month, .year, .day, .second], from: date7D)
        let currentDate7D = userCalendar7D.date(from: components7D)!
        
        // Set Event Date
        var eventDateComponents7D = DateComponents()
        eventDateComponents7D.year = components7D.year
        eventDateComponents7D.month = components7D.month
        eventDateComponents7D.day = components7D.day
        eventDateComponents7D.hour = 13
        eventDateComponents7D.minute = 30
        eventDateComponents7D.second = 00
        eventDateComponents7D.timeZone = TimeZone(abbreviation: "EST")
        
        // Convert eventDateComponents to the user's calendar
        let eventDate7D = userCalendar7D.date(from: eventDateComponents7D)!
        
        // Change the seconds to days, hours, minutes and seconds
        let timeLeft7D = userCalendar7D.dateComponents([.day, .hour, .minute, .second], from: currentDate7D, to: eventDate7D)
        
        var hours = ""
        var minutes = ""
        var seconds = ""
        // Display Countdown
       
        
        if timeLeft7D.hour! <= 9 {
            hours = "0\(timeLeft7D.hour!)"
        } else {
            hours = "\(timeLeft7D.hour!)"
        }
        
        if timeLeft7D.minute! <= 9 {
            minutes = "0\(timeLeft7D.minute!)"
        } else {
            minutes = "\(timeLeft7D.minute!)"
        }
        
        if timeLeft7D.second! <= 9 {
            seconds = "0\(timeLeft7D.second!)"
        } else {
            seconds = "\(timeLeft7D.second!)"
        }
        
        
        sevenDLabel.text = "7| " + hours + " : " + minutes + " : " + seconds
        //item2Label.text = "2|  \(timeLeft2.hour!) : \(timeLeft2.minute!) : \(timeLeft2.second!)"
        // Show diffrent text when the event has passed
        endEvent(currentdate7D: currentDate7D, eventdate7D: eventDate7D)
    }
    
    func endEvent(currentdate7D: Date, eventdate7D: Date) {
        if currentdate7D >= eventdate7D {
            sevenDLabel.text = "7| Over!"
            // Stop Timer
            P7.invalidate()
        }
    }
    
    
    
    //PERIOD 8 A
    @objc func p8A() {
        
        let userCalendar8A = Calendar.current
        // Set Current Date
        let date8A = Date()
        let components8A = userCalendar8A.dateComponents([.hour, .minute, .month, .year, .day, .second], from: date8A)
        let currentDate8A = userCalendar8A.date(from: components8A)!
        
        // Set Event Date
        var eventDateComponents8A = DateComponents()
        eventDateComponents8A.year = components8A.year
        eventDateComponents8A.month = components8A.month
        eventDateComponents8A.day = components8A.day
        eventDateComponents8A.hour = 13
        eventDateComponents8A.minute = 44
        eventDateComponents8A.second = 00
        eventDateComponents8A.timeZone = TimeZone(abbreviation: "EST")
        
        // Convert eventDateComponents to the user's calendar
        let eventDate8A = userCalendar8A.date(from: eventDateComponents8A)!
        
        // Change the seconds to days, hours, minutes and seconds
        let timeLeft8A = userCalendar8A.dateComponents([.day, .hour, .minute, .second], from: currentDate8A, to: eventDate8A)
        
        var hours = ""
        var minutes = ""
        var seconds = ""
        // Display Countdown
       
        
        if timeLeft8A.hour! <= 9 {
            hours = "0\(timeLeft8A.hour!)"
        } else {
            hours = "\(timeLeft8A.hour!)"
        }
        
        if timeLeft8A.minute! <= 9 {
            minutes = "0\(timeLeft8A.minute!)"
        } else {
            minutes = "\(timeLeft8A.minute!)"
        }
        
        if timeLeft8A.second! <= 9 {
            seconds = "0\(timeLeft8A.second!)"
        } else {
            seconds = "\(timeLeft8A.second!)"
        }
        
        
        eightALabel.text = "8| " + hours + " : " + minutes + " : " + seconds
        //item2Label.text = "2|  \(timeLeft2.hour!) : \(timeLeft2.minute!) : \(timeLeft2.second!)"
        // Show diffrent text when the event has passed
        endEvent(currentdate8A: currentDate8A, eventdate8A: eventDate8A)
    }
    
    func endEvent(currentdate8A: Date, eventdate8A: Date) {
        if currentdate8A >= eventdate8A {
            eightALabel.text = "8| Over!"
            // Stop Timer
            P8.invalidate()
        }
    }
    
    
    
    
    //PERIOD 8 C
    @objc func p8C() {
        
        let userCalendar8C = Calendar.current
        // Set Current Date
        let date8C = Date()
        let components8C = userCalendar8C.dateComponents([.hour, .minute, .month, .year, .day, .second], from: date8C)
        let currentDate8C = userCalendar8C.date(from: components8C)!
        
        // Set Event Date
        var eventDateComponents8C = DateComponents()
        eventDateComponents8C.year = components8C.year
        eventDateComponents8C.month = components8C.month
        eventDateComponents8C.day = components8C.day
        eventDateComponents8C.hour = 13
        eventDateComponents8C.minute = 24
        eventDateComponents8C.second = 00
        eventDateComponents8C.timeZone = TimeZone(abbreviation: "EST")
        
        // Convert eventDateComponents to the user's calendar
        let eventDate8C = userCalendar8C.date(from: eventDateComponents8C)!
        
        // Change the seconds to days, hours, minutes and seconds
        let timeLeft8C = userCalendar8C.dateComponents([.day, .hour, .minute, .second], from: currentDate8C, to: eventDate8C)
        
        var hours = ""
        var minutes = ""
        var seconds = ""
        // Display Countdown
       
        
        if timeLeft8C.hour! <= 9 {
            hours = "0\(timeLeft8C.hour!)"
        } else {
            hours = "\(timeLeft8C.hour!)"
        }
        
        if timeLeft8C.minute! <= 9 {
            minutes = "0\(timeLeft8C.minute!)"
        } else {
            minutes = "\(timeLeft8C.minute!)"
        }
        
        if timeLeft8C.second! <= 9 {
            seconds = "0\(timeLeft8C.second!)"
        } else {
            seconds = "\(timeLeft8C.second!)"
        }
        
        
        eightCLabel.text = "8| " + hours + " : " + minutes + " : " + seconds
        //item2Label.text = "2|  \(timeLeft2.hour!) : \(timeLeft2.minute!) : \(timeLeft2.second!)"
        // Show diffrent text when the event has passed
        endEvent(currentdate8C: currentDate8C, eventdate8C: eventDate8C)
    }
    
    func endEvent(currentdate8C: Date, eventdate8C: Date) {
        if currentdate8C >= eventdate8C {
            eightCLabel.text = "8| Over!"
            // Stop Timer
            P8.invalidate()
        }
    }
    
    
    //PERIOD 8 D
    @objc func p8D() {
        
        let userCalendar8D = Calendar.current
        // Set Current Date
        let date8D = Date()
        let components8D = userCalendar8D.dateComponents([.hour, .minute, .month, .year, .day, .second], from: date8D)
        let currentDate8D = userCalendar8D.date(from: components8D)!
        
        // Set Event Date
        var eventDateComponents8D = DateComponents()
        eventDateComponents8D.year = components8D.year
        eventDateComponents8D.month = components8D.month
        eventDateComponents8D.day = components8D.day
        eventDateComponents8D.hour = 14
        eventDateComponents8D.minute = 00
        eventDateComponents8D.second = 00
        eventDateComponents8D.timeZone = TimeZone(abbreviation: "EST")
        
        // Convert eventDateComponents to the user's calendar
        let eventDate8D = userCalendar8D.date(from: eventDateComponents8D)!
        
        // Change the seconds to days, hours, minutes and seconds
        let timeLeft8D = userCalendar8D.dateComponents([.day, .hour, .minute, .second], from: currentDate8D, to: eventDate8D)
        
        var hours = ""
        var minutes = ""
        var seconds = ""
        // Display Countdown
       
        
        if timeLeft8D.hour! <= 9 {
            hours = "0\(timeLeft8D.hour!)"
        } else {
            hours = "\(timeLeft8D.hour!)"
        }
        
        if timeLeft8D.minute! <= 9 {
            minutes = "0\(timeLeft8D.minute!)"
        } else {
            minutes = "\(timeLeft8D.minute!)"
        }
        
        if timeLeft8D.second! <= 9 {
            seconds = "0\(timeLeft8D.second!)"
        } else {
            seconds = "\(timeLeft8D.second!)"
        }
        
        
        eightDLabel.text = "8| " + hours + " : " + minutes + " : " + seconds
        //item2Label.text = "2|  \(timeLeft2.hour!) : \(timeLeft2.minute!) : \(timeLeft2.second!)"
        // Show diffrent text when the event has passed
        endEvent(currentdate8D: currentDate8D, eventdate8D: eventDate8D)
    }
    
    func endEvent(currentdate8D: Date, eventdate8D: Date) {
        if currentdate8D >= eventdate8D {
            eightDLabel.text = "8| Over!"
            // Stop Timer
            P8.invalidate()
        }
    }
    
    
    //PERIOD 9 A
    @objc func p9A() {
        
        let userCalendar9A = Calendar.current
        // Set Current Date
        let date9A = Date()
        let components9A = userCalendar9A.dateComponents([.hour, .minute, .month, .year, .day, .second], from: date9A)
        let currentDate9A = userCalendar9A.date(from: components9A)!
        
        // Set Event Date
        var eventDateComponents9A = DateComponents()
        eventDateComponents9A.year = components9A.year
        eventDateComponents9A.month = components9A.month
        eventDateComponents9A.day = components9A.day
        eventDateComponents9A.hour = 14
        eventDateComponents9A.minute = 30
        eventDateComponents9A.second = 00
        eventDateComponents9A.timeZone = TimeZone(abbreviation: "EST")
        
        // Convert eventDateComponents to the user's calendar
        let eventDate9A = userCalendar9A.date(from: eventDateComponents9A)!
        
        // Change the seconds to days, hours, minutes and seconds
        let timeLeft9A = userCalendar9A.dateComponents([.day, .hour, .minute, .second], from: currentDate9A, to: eventDate9A)
        
        var hours = ""
        var minutes = ""
        var seconds = ""
        // Display Countdown
       
        
        if timeLeft9A.hour! <= 9 {
            hours = "0\(timeLeft9A.hour!)"
        } else {
            hours = "\(timeLeft9A.hour!)"
        }
        
        if timeLeft9A.minute! <= 9 {
            minutes = "0\(timeLeft9A.minute!)"
        } else {
            minutes = "\(timeLeft9A.minute!)"
        }
        
        if timeLeft9A.second! <= 9 {
            seconds = "0\(timeLeft9A.second!)"
        } else {
            seconds = "\(timeLeft9A.second!)"
        }
        
        
        nineALabel.text = "9| " + hours + " : " + minutes + " : " + seconds
        //item2Label.text = "2|  \(timeLeft2.hour!) : \(timeLeft2.minute!) : \(timeLeft2.second!)"
        // Show diffrent text when the event has passed
        endEvent(currentdate9A: currentDate9A, eventdate9A: eventDate9A)
    }
    
    func endEvent(currentdate9A: Date, eventdate9A: Date) {
        if currentdate9A >= eventdate9A {
            nineALabel.text = "9| Over!"
            // Stop Timer
            P9.invalidate()
        }
    }
    
    
    //PERIOD 9 C
    @objc func p9C() {
        
        let userCalendar9C = Calendar.current
        // Set Current Date
        let date9C = Date()
        let components9C = userCalendar9C.dateComponents([.hour, .minute, .month, .year, .day, .second], from: date9C)
        let currentDate9C = userCalendar9C.date(from: components9C)!
        
        // Set Event Date
        var eventDateComponents9C = DateComponents()
        eventDateComponents9C.year = components9C.year
        eventDateComponents9C.month = components9C.month
        eventDateComponents9C.day = components9C.day
        eventDateComponents9C.hour = 13
        eventDateComponents9C.minute = 00
        eventDateComponents9C.second = 00
        eventDateComponents9C.timeZone = TimeZone(abbreviation: "EST")
        
        // Convert eventDateComponents to the user's calendar
        let eventDate9C = userCalendar9C.date(from: eventDateComponents9C)!
        
        // Change the seconds to days, hours, minutes and seconds
        let timeLeft9C = userCalendar9C.dateComponents([.day, .hour, .minute, .second], from: currentDate9C, to: eventDate9C)
        
        var hours = ""
        var minutes = ""
        var seconds = ""
        // Display Countdown
       
        
        if timeLeft9C.hour! <= 9 {
            hours = "0\(timeLeft9C.hour!)"
        } else {
            hours = "\(timeLeft9C.hour!)"
        }
        
        if timeLeft9C.minute! <= 9 {
            minutes = "0\(timeLeft9C.minute!)"
        } else {
            minutes = "\(timeLeft9C.minute!)"
        }
        
        if timeLeft9C.second! <= 9 {
            seconds = "0\(timeLeft9C.second!)"
        } else {
            seconds = "\(timeLeft9C.second!)"
        }
        
        
        nineCLabel.text = "9| " + hours + " : " + minutes + " : " + seconds
        //item2Label.text = "2|  \(timeLeft2.hour!) : \(timeLeft2.minute!) : \(timeLeft2.second!)"
        // Show diffrent text when the event has passed
        endEvent(currentdate9C: currentDate9C, eventdate9C: eventDate9C)
    }
    
    func endEvent(currentdate9C: Date, eventdate9C: Date) {
        if currentdate9C >= eventdate9C {
            nineCLabel.text = "9| Over!"
            // Stop Timer
            P9.invalidate()
        }
    }
    
    //PERIOD 9 D
    @objc func p9D() {
        
        let userCalendar9D = Calendar.current
        // Set Current Date
        let date9D = Date()
        let components9D = userCalendar9D.dateComponents([.hour, .minute, .month, .year, .day, .second], from: date9D)
        let currentDate9D = userCalendar9D.date(from: components9D)!
        
        // Set Event Date
        var eventDateComponents9D = DateComponents()
        eventDateComponents9D.year = components9D.year
        eventDateComponents9D.month = components9D.month
        eventDateComponents9D.day = components9D.day
        eventDateComponents9D.hour = 14
        eventDateComponents9D.minute = 30
        eventDateComponents9D.second = 00
        eventDateComponents9D.timeZone = TimeZone(abbreviation: "EST")
        
        // Convert eventDateComponents to the user's calendar
        let eventDate9D = userCalendar9D.date(from: eventDateComponents9D)!
        
        // Change the seconds to days, hours, minutes and seconds
        let timeLeft9D = userCalendar9D.dateComponents([.day, .hour, .minute, .second], from: currentDate9D, to: eventDate9D)
        
        var hours = ""
        var minutes = ""
        var seconds = ""
        // Display Countdown
       
        
        if timeLeft9D.hour! <= 9 {
            hours = "0\(timeLeft9D.hour!)"
        } else {
            hours = "\(timeLeft9D.hour!)"
        }
        
        if timeLeft9D.minute! <= 9 {
            minutes = "0\(timeLeft9D.minute!)"
        } else {
            minutes = "\(timeLeft9D.minute!)"
        }
        
        if timeLeft9D.second! <= 9 {
            seconds = "0\(timeLeft9D.second!)"
        } else {
            seconds = "\(timeLeft9D.second!)"
        }
        
        
        nineDLabel.text = "9| " + hours + " : " + minutes + " : " + seconds
        //item2Label.text = "2|  \(timeLeft2.hour!) : \(timeLeft2.minute!) : \(timeLeft2.second!)"
        // Show diffrent text when the event has passed
        endEvent(currentdate9D: currentDate9D, eventdate9D: eventDate9D)
    }
    
    func endEvent(currentdate9D: Date, eventdate9D: Date) {
        if currentdate9D >= eventdate9D {
            nineDLabel.text = "9| Over!"
            // Stop Timer
            P9.invalidate()
        }
    }
}
 
