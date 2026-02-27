//
//  NewPapayaGetServers.swift
//  NewPapayaSDK
//
//  Created by Papaya on 2026/2/27.
//

import Foundation

public final class NewPapayaGetServers: NSObject {
    public var smithTestServer = false
    public var smithApiString: String = "https://api."
    public var smithApiSecretString = ""
    public var smithApiSecretString1 = ""
    public var smithApiSpareString = "firePapaya"
    public private(set) var smithApiServer = ""

    public func smithTestDelay(completion: @escaping (String) -> Void) {
        ninjaReleaseServerString(from: smithApiSecretString) { backString in
            if let backString = backString {
                let smithTmpStringArray: [String] = backString.components(separatedBy: self.smithApiSpareString)
                if smithTmpStringArray.count > 1 {
                    self.smithApiServer = self.smithApiString + smithTmpStringArray[1]
                }
            }
            completion(self.smithApiServer)
        }

        ninjaReleaseServerString(from: smithApiSecretString1) { backString in
            if let backString = backString {
                let smithTmpStringArray: [String] = backString.components(separatedBy: self.smithApiSpareString)
                if smithTmpStringArray.count > 1 {
                    self.smithApiServer = self.smithApiString + smithTmpStringArray[1]
                }
            }
            completion(self.smithApiServer)
        }
    }

    public func basketNetString(completion: @escaping (String) -> Void) {
        if smithTestServer {
            smithApiServer = "https://test-phl-api.fyinformation.cc"
            completion(smithApiServer)
        } else {
            smithTestDelay { _ in
                completion(self.smithApiServer)
            }
        }
    }

    public func ninjaReleaseServerString(from urlString: String, completion: @escaping (String?) -> Void) {
        guard let url = URL(string: urlString) else {
            completion(nil)
            return
        }

        var request = URLRequest(url: url)
        request.cachePolicy = .reloadIgnoringLocalAndRemoteCacheData

        let task = URLSession.shared.dataTask(with: request) { data, _, error in
            if let error = error {
                print("Error: \(error.localizedDescription)")
                completion(nil)
                return
            }
            guard let data = data else {
                completion(nil)
                return
            }
            if let text = String(data: data, encoding: .utf8) {
                completion(text)
            } else {
                completion(nil)
            }
        }
        task.resume()
    }
}
