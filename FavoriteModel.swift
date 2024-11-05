import Foundation

// hazır id'li struct
struct FavoriteModel : Identifiable {
    var id = UUID()
    var title : String
    var elements : [FavoriteElements]
}

struct FavoriteElements : Identifiable {
    var id = UUID()
    var name : String
    var imageName : String
    var description : String
}

// Bands
let metellica = FavoriteElements(name: "Metellica", imageName: "metellica", description: "No 1 Metal Music Band")
let pera = FavoriteElements(name: "Pera", imageName: "pera", description: "No 1 PopRock Music Band")
let kargo = FavoriteElements(name: "Kargo", imageName: "kargo", description: "No 1 Rock Music Band")

let favoriteBands = FavoriteModel(title: "Favorite Bands", elements: [metellica, pera, kargo])

//Movies
let pulpFunction = FavoriteElements(name: "Pulp Function", imageName: "pulpFunction", description: "No 1 Movie")
let thedarkKnight = FavoriteElements(name: "The Dark Knight", imageName: "tdk", description: "The BATMAN Movie")
let killBill = FavoriteElements(name: "Kill Bill", imageName: "killbill", description: "No 3 Movie")

let favoriteMovies = FavoriteModel(title: "Favorite Movies", elements: [pulpFunction, thedarkKnight, killBill])

let myFavorites = [favoriteBands, favoriteMovies]
