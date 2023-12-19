//
//  ProfileView.swift
//  instagram-clone
//
//  Created by Godson on 14/12/23.
//

import SwiftUI

struct ProfileView: View {
    
    private let gridItems: [GridItem] = [
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
    ]
    
    var body: some View {
        
        NavigationStack {
            ScrollView {
                //header
                
                VStack(spacing: 10) {
                    //pic and stats
                    HStack {
                        Image("profile-pic").resizable().scaledToFill().frame(width: 80, height: 80).clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        Spacer()
                        HStack(spacing: 10){
                            UserStatView(value: 3, title: "Posts")
                            UserStatView(value: 3, title: "Followers")
                            UserStatView(value: 3, title: "Following")
                        }
                    }
                    .padding(.horizontal)
                    
                    //name and bio
                    
                    VStack(alignment: .leading, spacing: 4) {
                        Text("Godson").font(.footnote).fontWeight(.semibold)
                        Text("Bio").font(.footnote)
                    }
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                    .padding(.horizontal)
                    
                    //button
                    
                    Button {
                        
                    } label: {
                        Text("Edit profile")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .frame(width: 360, height: 32)
                            .foregroundColor(.black)
                            .overlay(RoundedRectangle(cornerRadius: 6).stroke(Color.gray, lineWidth: 1))
                    }
                    
                    Divider()
                }
                
                //post grid view
                
                LazyVGrid(columns: gridItems, spacing: 1, content: {
                    ForEach(0 ... 15, id: \.self){ index in
                        Image("profile-pic").resizable().scaledToFill()
                    }
                })
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing, content: {
                    Button {
                        
                    } label: {
                        Image(systemName: "line.3.horizontal").foregroundColor(.black)
                    }
                })
            }
        }

    
    }
}

#Preview {
    ProfileView()
}
