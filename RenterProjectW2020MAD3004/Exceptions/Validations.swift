//
//  Validation.swift
//  RenterProjectW2020MAD3004
//
//  Created by Prakash on 2020-02-21.
//  Copyright © 2020 com.lambton. All rights reserved.
//

import Foundation

enum EmailValidationError: Error{
    case isNotValidEmail
    case isEmpty
    case isNotValidLength
}

enum PhoneNumberValidationError: Error{
    case voiletsMinLength
    case voiletsMaxLength
}

public enum JsonValidationError: Error
{
    case isNotValidInput(className: String, memberName: String)
}


public enum CustomErrors: Error
{
  case invalidEmail, invalidPhone
}
