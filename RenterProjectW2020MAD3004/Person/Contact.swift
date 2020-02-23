//
//  Contact.swift
//  RenterProjectW2020MAD3004
//
//  Created by Raghav Bobal on 2020-02-12.
//  Copyright © 2020 com.lambton. All rights reserved.
//

import Foundation


public class Contact
{
    private var mobileNumber: String
    private var emailId: String
    private var address: Address
    
    
    /* Function to validate the email id */
    
    public func isValid(emailAddressString: String) -> Bool
     {
         var returnValue = true
         let emailRegEx = "[A-Z0-9a-z.-_]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,3}"
    do
     {
         let regex = try NSRegularExpression(pattern: emailRegEx)
         let nsString = emailAddressString as NSString
         let results = regex.matches(in: emailAddressString, range: NSRange(location: 0, length: nsString.length))
         
         if results.count == 0
         {
             returnValue = false
         }
     }
     catch let error as NSError
     {
         print("invalid regex: \(error.localizedDescription)")
         returnValue = false
     }
     
     return  returnValue
     }

    
    internal init(mobileNumber: String, emailId: String, address: Address)
       {
        self.mobileNumber = mobileNumber
        self.address = address
        self.emailId = emailId
        if isValid(emailAddressString: self.emailId)
        {
        self.emailId = emailId
        }
        else
        {
        print("Please enter a valid email address")
        exit(0)
        }
       }
    
    
    convenience init(contactDict: [String: String], address: Address) throws {
        
        guard let mobileNumber = contactDict["mobileNumber"] else {
                   throw JsonValidationError.isNotValidInput(
                       className: String(describing:type(of: self)),
                       memberName: "mobileNumber")
               }
        
        guard let emailId = contactDict["emailId"] else {
            throw JsonValidationError.isNotValidInput(
                className: String(describing:type(of: self)),
                memberName: "emailId")
        }
        
        self.init(mobileNumber: mobileNumber, emailId: emailId, address: address)
    }

        
}

