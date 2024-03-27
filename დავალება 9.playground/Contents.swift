import UIKit

var greeting = "Hello, playground"

// 1.შექმენით ენამი Gender სადაც იქნება 2 გენდერი (გენდერზე არ გამომეკიდოთ, თუ გინდათ მეტი ჩაამატეთ)

enum Gender {
    case male, female
}

// 2.შექმენით Protocol სახელად SuperBeing. გაუწერეთ მას ფროფერთები - name: String, strength: Int, speed: Int, weakness: String, gender: Gender

protocol SuperBeing {
    var name: String { get }
    var strenght: Int { get }
    var speed: Int { get }
    var weakness: String { get }
    var gender: Gender { get }
}

// 3.SuperBeing-ის strength-სა და speed-ს მიეცით default მნიშვნელობა

extension SuperBeing {
    var strenght: Int {
        100
    }
    var speed: Int {
        10
    }
}
//4. შექმენით კლასები Superhero და SuperVillain, დაუქონფორმეთ SuperBeing-ს.
//5.გაუწერეთ Superhero კლასს დამატებითი პარამეტრები outfitColor: String, equipment: String, vehicle: String
//6.გაუწერეთ Superhero კლასს მეთოდი - rescue, რომელიც პარამეტრად მიიღებს დაზარალებულის სახელს და დაბეჭდავს -სუპერგმირის სახელი’ არ შეუშინდა სახიფათო სიტუაციას და ‘დაზარალებულის სახელი’ გადაარჩინა სიკვდილს” (მაგ: “ბეტმენი” არ შეუშინდა სახიფათო სიტუაციას და “გელა” გადაარჩინა სიკვდილს).
//7.გაუწერეთ Superhero კლასს მეთოდი - combat, რომელიც პარამეტრად მიიღებს Supervillain-ს და დაბეჭდავს -სუპერგმირის სახელი’ შეერკინა და დაამარცხა ‘ბოროტმოქმედის სახელი’” (მაგ: “ბეტმენი” შეერკინა და დაამარცხა “ჯოკერი”
class Superhero: SuperBeing {
    var name: String
    var weakness: String
    let gender: Gender
    var outfitColor: String
    var equipment: String
    var vehicle: String
    
    init(name: String, weankess: String, gender: Gender, outfitColor: String, equipment: String, vehicle: String) {
        self.name = "Spider-Man"
        self.weakness = "Ethyl Chloride and water"
        self.gender = Gender.male
        self.outfitColor = "redAndBlue"
        self.equipment = "Artificial web-shooters"
        self.vehicle = "Niva"
    }
    
    func rescue(victimName: String) {
        let victimsName = "Mary Jane"
        print( name + "არ შეუშინდა სახიფათო სიტუაციას და" + (victimsName) + "გადაარჩინა სიკვდილს")
    }
    func combat(SupperVillain: SuperVillain) {
        print((name) + "შეერკინა და დაამარცხა" + (SupperVillain.name))
    }
}
//8.გაუწერეთ SuperVillain კლასს დამატებითი პარამეტრები evilScheme: String, obsession: String, rivalry: String
//9.გაუწერეთ SuperVillain კლასს მეთოდი - attack - რომელიც პარამეტრად მიიღებს Superhero-ს და დაბეჭდავს -"ბოროტმ. სახელი” გეგმავს თავდასხმას და მთელი ქალაქის მიწასთან გასწორებას, საეჭვოა “სუპერგმირის სახელი” მის შეჩერებას თუ შეძლებს” (მაგ: “ჯოკერი” გეგმავს თავდასხმას და მთელი ქალაქის მიწასთან გასწორებას, საეჭვოა “ბეტმენი” მის შეჩერებას თუ შეძლებს)
//10. გაუწერეთ SuperVillain კლასს მეთოდი experimentation - რომელიც პარამეტრად მიიღებს სტრინგს (subject) და დაბეჭდავს -ბოროტმოქმედის სახელი’ ექსპერიმენტებს ატარებს დაუცველ მოქალაქებზე, მისი მსხვერპლი ამჟამად ‘მსხვერპლის სახელი’ აღმოჩნდა” (მაგ: “ჯოკერი” ექსპერიმენტებს ატარებს დაუცველ მოქალაქებზე, მისი მსხვერპლი ამჟამად “გელა” აღმოჩნდა)
class SuperVillain: SuperBeing {
    var name: String
    var weakness: String
    let gender: Gender
    var evilScheme: String
    var obsession: String
    var rivalry: String
    
    init(name: String, weankess: String, gender: Gender, evilScheme: String, obsession: String, rivalry: String) {
        self.name = name
        self.weakness = weankess
        self.gender = gender
        self.evilScheme = evilScheme
        self.obsession = obsession
        self.rivalry = rivalry
    }
    
    func attack(Superhero: Superhero) {
        print((name) + "გეგმავს თავდასხმას და მთელი ქალაქის მიწასთან გასწორებას, საეჭვოა" + Superhero.name + "მის შეჩერებას თუ შეძლებს")
    }
    
    
    func experimentation(Subject: String ) {
        let victimsName = "Mary Jane"
        print( name + " ექსპერიმენტებს ატარებს დაუცველ მოქალაქებზე, მისი მსხვერპლი ამჟამად " + victimsName + " აღმოჩნდა")
        print(name + " ექსპერიმენტებს ატარებს დაუცველ მოქალაქებზე, მისი მსხვერპლი ამჟამად " + victimsName + " აღმოჩნდა")
    }
}
//11.შექმენით მინიმუმ 5-5 ობიექტი თითოეული SuperBeing-ის დაქონფირმებული კლასებიდან

//Superheroes:
var spiderMan = Superhero(name: "Peter Benjamin Parker", weankess: "Ethyl Chloride and water", gender: Gender.male, outfitColor: "red and blue", equipment: "Artificial web-shooters", vehicle: "Niva")

var me = Superhero(name: "სალომე", weankess: "არ მაქვს", gender: Gender.female, outfitColor: "ამბობენ, რომ წითელი მიხდება", equipment: "არ მჭირდება", vehicle: "volkswagen passat 2020")

var TinosBichi = Superhero(name: "ტარიელი", weankess: "გულჩვილობა", gender: Gender.male, outfitColor: "ვეფხვისფერი", equipment: "ვეფხისტყავი და ხანჯალი", vehicle: "ცხენი")

var batMan = Superhero(name: "Bruce Wayne", weankess: "Psychological trauma", gender: Gender.male, outfitColor: "Black is always ellegant", equipment: "Batman's utility belt", vehicle: "Batmobile")

var superMan = Superhero(name: "Clark Joseph Kent", weankess: "kryptonite ", gender: Gender.male, outfitColor: "blue and red", equipment: "-", vehicle: "თვითონ არის")

//Supervillains:

var venom = SuperVillain(name: "Eddie Brock", weankess: "fire and sound", gender: Gender.male, evilScheme: "ვინ იცის?!", obsession: "eating people's heads off", rivalry: "Spider-Man")

var giorgi = SuperVillain(name: "ბექა თაბუნიძე", weankess: "მატივი დავალებების შექმნა", gender: Gender.male, evilScheme: "30 ადამიანისთვის ცხოვრების გართულება", obsession: "closures", rivalry: "დავითი")

var joker = SuperVillain(name: "Jack Oswald White", weankess: "his ego ", gender: Gender.male, evilScheme: "შხამით დააინფიციროს მთელი მსოფლიო", obsession: "obsessed with batman", rivalry: "Batman")

var greenGoblin = SuperVillain(name: "Norman Osborn", weankess: "outlandish madness", gender: Gender.male, evilScheme: "Spider-Man-ის მოკვლა", obsession: "Spider-Man", rivalry: "Spider-Man")

var turkSelChukebi = SuperVillain(name: "სელჩუკი", weankess: "თავზე დიდი წარმოდგენა", gender: Gender.male, evilScheme: "დამპყრობლური მიზნები", obsession: "", rivalry: "დავით აღმაშენებელი")


//weakness- სიტყვა მაქვს არასწორად ჩაწერილი და ჩასწორებისას ერორები ამომიყარა და აღარ ჩავასწორე
