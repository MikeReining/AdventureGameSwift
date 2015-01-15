// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

enum Suit: Int {
    case Spades, Hearts, Diamonds, Clubs
    func simpleDescription() -> String {
        switch self {
        case .Spades:
            return "spades"
        case .Hearts:
            return "hearts"
        case .Diamonds:
            return "diamonds"
        case .Clubs:
            return "clubs"
            
        }
    }
    
    func color() -> String {
        switch self {
        case .Spades, .Clubs:
            return "black"
        case .Hearts, .Diamonds:
            return "red"
        }
    }
}

enum Rank: Int {
    case Ace = 1
    case Two, Three, Four, Five, Six, Seven, Eight, Nine, Ten
    case Jack, Queen, King
    func simpleDescription() -> String {
        switch self {
        case .Ace:
            return "ace"
        case .Jack:
            return "jack"
        case .Queen:
            return "Queen"
        case .King:
            return "king"
        default:
            return String(self.rawValue)
            
        }
    }
}

struct Card {
    var rank: Rank
    var suit: Suit
    func simpleDescription() -> String {
        return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
        
    }
    
    
}


// Create deck of 52 cards

func createDeck() -> [Card] {
    
    var deck = [Card]()
    
    var n = 1
    while let rank = Rank(rawValue: n) {
        
        var m = 0
        while let suit = Suit(rawValue: m) {
            deck.append(Card(rank: rank, suit: suit))
            m++
        }
        n++
    }
    
    return deck
}

var newDeck = createDeck()

newDeck.count