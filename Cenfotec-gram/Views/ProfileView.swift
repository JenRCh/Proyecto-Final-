import SwiftUI

struct ProfileView: View {
    @State private var selected = 1
    
    var body: some View {
        NavigationView{
            
            TabView(selection: $selected) {
                HomeView()
                    .tabItem { Image(systemName: "house")}
                    .tag(1)
                Text("Tab Content 2")
                    .tabItem { Image(systemName: "magnifyingglass")}
                    .tag(2)
                Text("Tab Content 3")
                    .tabItem { Image(systemName: "plus.square")}
                    .tag(3)
                Text("Tab Content 4")
                    .tabItem { Image(systemName: "heart")}
                    .tag(4)

                MainView()
                .tabItem { Image(systemName: "person.fill")}
                .tag(5)
                    }
            .navigationBarTitle("Cenfotec-gram",displayMode: .inline)
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

//MARK: -New .swift file.
struct Info: Hashable {
    let number: Int
    let label: String
}

//MARK: -New .swift file.
struct InfoVStackView: View {
    
    let infos = [
        Info(number: 2, label: "Publicaciones"),
        Info(number: 6, label: "Seguidores"),
        Info(number: 7, label: "Siguiendo")
    ]
    
    var body: some View{
        HStack{
            ForEach(infos, id: \.self){ info in
                VStack {
                    Text("\(info.number)")
                        .font(.system(size: 20))
                        .bold()
                    Text(info.label)
                        .font(.system(size: 12))
                        .bold()
                }
                .padding(.horizontal)
            }
        }
    }
}

//MARK: -New .swift file.
struct TopView: View {
    var body: some View{
        HStack{
            Image(systemName: "person.crop.circle.badge.plus")
                .font(.system(size: 52))
                .padding(.horizontal)
            InfoVStackView()
        }
        .padding(.top, 44)
    }
}

struct MainView: View {
    var body: some View{
        ScrollView(.vertical){
            TopView()
            BioView()
            EditButtonView()
            HButtonView()
            ImageView()
        }
    }
}

struct BioView: View {
    var body: some View{
        HStack{
            VStack(alignment: .leading){
                Text("A Swiftly Tilting Planet")
                Text("www.youtube.com/")
            }
            Spacer()
        }
        .padding()
    }
}

struct EditButtonView: View {
    var body: some View{
        Button(action: {
            print("Edit")
        }){
            Text("Edit Profile")
                .bold()
                .foregroundColor(Color(.label))
        }
        .frame(width: UIScreen.main.bounds.width - 32, height: 50)
        .background(Color(.secondarySystemBackground))
        .cornerRadius(8)
    }
}

struct HButtonView: View {
    let buttons = ["square.grid.2x2","person.crop.rectangle"]
    
    var body: some View{

        HStack{
            ForEach(buttons, id: \.self) { button in
                HStack{
                    Spacer()
                Button(action: {
                    
                }) {
                    Image(systemName: button)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color(.label))
                }
                    Spacer()
                }
            }
        }
        .padding()
    }
}

struct ImageView: View {
    var body: some View{
        HStack(spacing: 2){
            ForEach(0 ..< 3){ _ in
                LinearGradient(gradient: Gradient(colors: [.orange, .pink]), startPoint: .topLeading, endPoint: .bottomTrailing).frame(height: 138)
            }
        }
    }
}
