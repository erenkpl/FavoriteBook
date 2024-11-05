import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            NavigationView{
                List {
                    ForEach(myFavorites) { favorite in
                        Section(header: Text(favorite.title)) { 
                            ForEach(favorite.elements){ element in
                                // Burda element variable'ı seçilen elementi temsil ediyor.
                                NavigationLink(destination: DetailView(choosenFavoriteElement: element)) { 
                                    Text(element.name)
                                }
                            }
                        }
                    }
                }.navigationTitle("Favorites")
            }
        }
    }
}
