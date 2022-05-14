//
//  Post.swift
//  Example-MVP
//
//  Created by Abduladzhi on 14.05.2022.
//

struct Post: Decodable {
    let userId: Int
    let id: Int
    let title: String
    let body: String
}
