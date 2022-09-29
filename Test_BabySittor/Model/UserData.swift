// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let userData = try? newJSONDecoder().decode(UserData.self, from: jsonData)

import Foundation

// MARK: - UserData
struct UserData: Decodable {
    let count: Int
    let data: [UserInfos]
    let hasMore: Bool
    let object: String
    let totalCount: Int

    enum CodingKeys: String, CodingKey {
        case count, data
        case hasMore = "has_more"
        case object
        case totalCount = "total_count"
    }
}

// MARK: - Datum
struct UserInfos: Decodable {
    let active: Bool
    let averageReviewScore: Double?
    let banned: Bool
    let birthday: Birthday
    let cguAccepted: Bool
    let cguAcceptedAt: String?
    let country: Country
    let createdAt: String
    let currentAddressID, currentPictureID: Int
    let defaultPictureURL: String
    let datumDescription, education, email: String?
    let emailAccepted: Bool?
    let emailAcceptedAt: String?
    let facebookFriendsTotalCount: Int?
    let facebookID, firebaseID: String?
    let firstName: String
    let gender: Gender?
    let gensDeConfianceNbReferrers: Int?
    let gensDeConfianceURL: String?
    let hasBasicData: Bool
    let homeCardsSyncedAt: String?
    let id: Int
    let isBanned, isCguAccepted: Bool
    let isEmailAccepted: Bool?
    let isSubscribed, isTelephoneVerified: Bool
    let lastActivityAt, lastName: String
    let locale: Country
    let object: Object
    let reviewsTotalCount: Int
    let stripeCustomerCurrency: StripeCustomerCurrency?
    let stripeCustomerID, telephone: String?
    let telephoneVerified: Bool
    let updatedAt: String

    enum CodingKeys: String, CodingKey {
        case active
        case averageReviewScore = "average_review_score"
        case banned, birthday
        case cguAccepted = "cgu_accepted"
        case cguAcceptedAt = "cgu_accepted_at"
        case country
        case createdAt = "created_at"
        case currentAddressID = "current_address_id"
        case currentPictureID = "current_picture_id"
        case defaultPictureURL = "default_picture_url"
        case datumDescription = "description"
        case education, email
        case emailAccepted = "email_accepted"
        case emailAcceptedAt = "email_accepted_at"
        case facebookFriendsTotalCount = "facebook_friends_total_count"
        case facebookID = "facebook_id"
        case firebaseID = "firebase_id"
        case firstName = "first_name"
        case gender
        case gensDeConfianceNbReferrers = "gens_de_confiance_nb_referrers"
        case gensDeConfianceURL = "gens_de_confiance_url"
        case hasBasicData = "has_basic_data"
        case homeCardsSyncedAt = "home_cards_synced_at"
        case id
        case isBanned = "is_banned"
        case isCguAccepted = "is_cgu_accepted"
        case isEmailAccepted = "is_email_accepted"
        case isSubscribed = "is_subscribed"
        case isTelephoneVerified = "is_telephone_verified"
        case lastActivityAt = "last_activity_at"
        case lastName = "last_name"
        case locale, object
        case reviewsTotalCount = "reviews_total_count"
        case stripeCustomerCurrency = "stripe_customer_currency"
        case stripeCustomerID = "stripe_customer_id"
        case telephone
        case telephoneVerified = "telephone_verified"
        case updatedAt = "updated_at"
    }
}

enum Birthday: String, Decodable {
    case the19870912000000 = "1987-09-12 00:00:00"
    case the19891107000000 = "1989-11-07 00:00:00"
    case the19891108000000 = "1989-11-08 00:00:00"
    case the19920429000000 = "1992-04-29 00:00:00"
    case the20021114000000 = "2002-11-14 00:00:00"
}

enum Country: String, Decodable {
    case en = "en"
    case fr = "fr"
}

enum Gender: String, Decodable {
    case female = "female"
    case male = "male"
}

enum Object: String, Decodable {
    case user = "user"
}

enum StripeCustomerCurrency: String, Decodable {
    case eur = "eur"
    case usd = "usd"
}
