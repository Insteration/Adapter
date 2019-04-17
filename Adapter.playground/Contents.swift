import UIKit

protocol BirdDelegate {
    func sing()
    func fly()
}

class Bird: BirdDelegate {
    func sing() {
        print("tew - tew - tew")
    }
    
    func fly() {
        print("flyyyy home away")
    }
}

class Raven {
    func flySearchAndDestroy() {
        print("Search and destroy activated")
    }
    func voice() {
        print("Kaaaaaar kaaaaar")
    }
}


// обертка адаптер
class RavenAdapter: BirdDelegate {
    func sing() {
        raven.voice()
    }
    
    func fly() {
        raven.flySearchAndDestroy()
    }
    
    private var raven: Raven
    init(adaptee: Raven) {
        raven = adaptee
    }
}

func makeTheBirdTest(bird: BirdDelegate) {
    bird.fly()
    bird.sing()
}

let simpleBird = Bird()
let simpleRaven = Raven()
let ravenApadter = RavenAdapter(adaptee: simpleRaven)


makeTheBirdTest(bird: simpleBird)
makeTheBirdTest(bird: ravenApadter)
