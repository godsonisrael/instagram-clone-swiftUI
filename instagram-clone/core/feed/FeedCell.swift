//
//  FeedCell.swift
//  instagram-clone
//
//  Created by Godson on 14/12/23.
//

import SwiftUI

struct FeedCell: View {
    var body: some View {
        VStack {
            //image and username
            HStack {
                Image("profile-pic")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                Text("Godson")
                    .font(.footnote)
                    .fontWeight(.semibold)
              
                Spacer()
            }
            .padding(.leading, 8)
            //post image
            Image("profile-pic")
                .resizable()
                .scaledToFill()
                .frame(height: 400)
                .clipShape(Rectangle())
            
            //action buttons
            HStack(spacing: 16) {
                Button {
                    print("Like post")
                } label: {
                    Image(systemName: "heart").imageScale(.large).foregroundColor(.black)
                }
                Button {
                    print("Comment post")
                } label: {
                    Image(systemName: "bubble.right").imageScale(.large).foregroundColor(.black)
                }
                Button {
                    print("Share post")
                } label: {
                    Image(systemName: "paperplane").imageScale(.large).foregroundColor(.black)
                }
                
                Spacer()
                
            }
            .padding(.leading, 8)
            .padding(.top, 4)
            
            //likes label
            
            Text("23 Likes")
                .font(.footnote)
                .fontWeight(.semibold)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                .padding(.leading, 8)
                .padding(.top, 1)
            
            //caption label
            
            HStack {
                Text("Text ").fontWeight(.semibold) +
                Text("This is a test caption fhkk fs asdf  fsdfsf agsgsadfdsgsdfdfsdsfsdf fsfsffsdf fsfs dfdsdfs")
            }
            .font(.footnote)
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
            .padding(.leading, 8)
            .padding(.top, 0.5)
            
            Text("6 hours ago")
                .font(.footnote)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                .padding(.leading, 8)
                .padding(.top, 1)
                .foregroundColor(.gray)
        }
        .padding(.vertical)
    }
}

#Preview {
    FeedCell()
}
