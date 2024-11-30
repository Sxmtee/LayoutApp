//
//  ResizeGeometry.swift
//  LayoutApp
//
//  Created by mac on 30/11/2024.
//

import SwiftUI

struct ResizeGeometry: View {
    var body: some View {
//       ScrollView(.horizontal, showsIndicators: false) {
//           HStack(spacing: 0) {
//               ForEach(1..<20) { num in
//                   GeometryReader { proxy in
//                       Text("Number \(num)")
//                           .font(.largeTitle)
//                           .padding()
//                           .background(.red)
//                           .rotation3DEffect(
//                            .degrees(-proxy.frame(in: .global).minX) / 8, axis: (x: 0, y: 1, z: 0)
//                           )
//                           .frame(width: 200, height: 200)
//                   }
//                   .frame(width: 200, height: 200)
//               }
//           }
//       }
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 0) {
                ForEach(1..<20) { num in
                    Text("Number \(num)")
                        .font(.largeTitle)
                        .padding()
                        .background(.red)
                        .frame(width: 200, height: 200)
                        .visualEffect { content, proxy in
                            content
                                .rotation3DEffect(.degrees(-proxy.frame(in: .global).minX) / 8, axis: (x: 0, y: 1, z: 0))
                        }

                }
            }
        }
   }
}

#Preview {
    ResizeGeometry()
}
