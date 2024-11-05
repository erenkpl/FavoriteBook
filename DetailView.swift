import SwiftUI

struct DetailView: View {
    
    var choosenFavoriteElement : FavoriteElements
    
    var body: some View {
        VStack {
            Image(choosenFavoriteElement.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: UIScreen.main.bounds.width*0.8, height: UIScreen.main.bounds.height*0.3)
                .padding()
            Text(choosenFavoriteElement.name)
                .padding()
                .font(.largeTitle)
            Text(choosenFavoriteElement.description)
                .padding()
        }
    }
}
