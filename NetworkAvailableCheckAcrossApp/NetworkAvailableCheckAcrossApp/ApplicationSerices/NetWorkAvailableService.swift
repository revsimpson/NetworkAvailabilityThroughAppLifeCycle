//
//  NetWorkAvailableService.swift
//  NetworkAvailableCheckAcrossApp
//
//  Created by Richard Simpson on 23/02/2019.
//  Copyright © 2019 Richard Simpson. All rights reserved.
//

import Foundation
import UIKit
import Network

final class NetWorkAvailableService: ApplicationService {
    
    func start() {
        
        let networkMonitor = NWPathMonitor()
        networkMonitor.pathUpdateHandler = { path in
            if path.status == .satisfied {
                let networkType : String = path.isExpensive ? "with cellular data or wifi through a hotspot" : ""
                let alert = UIAlertController(title: "Nice!", message: "You have internet... \(networkType)", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "Close", style: .default, handler: nil))
                DispatchQueue.main.async {
                    UIApplication.shared.keyWindow?.rootViewController?.present(alert, animated: true, completion: nil)
                }
            } else {
                let alert = UIAlertController(title: "Warning!", message: "You do not have internet at the moment...", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "Close", style: .default, handler: nil))
                DispatchQueue.main.async {
                    UIApplication.shared.keyWindow?.rootViewController?.present(alert, animated: true, completion: nil)
                }
            }
        }
        
        let networkQueue = DispatchQueue(label:"NetworkMonitor")
        networkMonitor.start(queue: networkQueue)
        
    }
}
