import SwiftUI

struct HomeView: View {
    var body: some View {
        ScrollView(.vertical){
            HomeTopScrollView()
            Divider()
            ImageCell()
        }
    }
}

struct HomeTopScrollView: View {
    var body: some View{
        ScrollView(.horizontal){
            HStack{
                ForEach(0 ..< 5){ _ in
                    StoryView()
                }
               
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

struct StoryView: View {
    var body: some View{
        VStack{
            LinearGradient(gradient: Gradient(colors: [.purple, .pink, .orange]), startPoint: .topTrailing, endPoint: .bottomLeading)
                .frame(width: 100, height: 100)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            
            Text("Your Story")
        }
        .padding()
    }
}

struct ImageCell: View {
    var body: some View{
        VStack{
            TopPersonView()
            Divider()
            ImageHomeView()
            BottomButtonsView()
        }
    }
}

struct TopPersonView: View {
    var body: some View{
        VStack{
            HStack{
                Image(systemName: "person.crop.circle")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                Text("swift_code")
                Spacer()
                
                Button(action:{
                    
                }){
                    Image(systemName: "ellipsis")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color(.label))
                }
            }
            .padding()
        }
    }
}

struct ImageHomeView: View {
    var body: some View {
            Image(systemName: "airplane")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: UIScreen.main.bounds.width, height: 375)
    
    }
}

struct BottomButtonsView: View {
    let buttons = ["heart","bubble.right","paperplane"]
    
    var body: some View{
        HStack{
            ForEach(buttons, id: \.self){ image in
                Button(action:{
                    
                }){
                    Image(systemName: image)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color(.label))
                        .padding(.horizontal)
                }
            }
           
            Spacer()
            Button(action:{
                
            }){
                Image(systemName: "bookmark")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .foregroundColor(Color(.label))
            }
        }
        .padding([.vertical,.trailing])
    }
}

