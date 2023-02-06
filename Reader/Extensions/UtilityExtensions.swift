//
//  UtilityExtensions.swift
//  ExtractBank
//
//  Created by Jovan Radivojsa on 12.2.23..
//

import Foundation

enum ExtensionConstants {
    static let dateFormatter: DateFormatter = {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd-MM-yyyy"
        return dateFormatter
    }()
}

extension String {
    var bankStringToDouble: Double {
        guard let value = Double(self.replacingOccurrences(of: ",", with: "")) else {
            assertionFailure("Unable to convert amount to double")
            return .zero
        }
        return value
    }
    
    var bankDateToTimeInterval: TimeInterval {
        guard let date = ExtensionConstants.dateFormatter.date(from: self) else {
            assertionFailure("Unable to convert string date to time interval")
            return .zero
        }
        return date.timeIntervalSince1970
    }
}
