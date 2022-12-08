//
//  Home.swift
//  FlightAppUI
//
//  Created by Lucas Newlands on 08/12/22.
//

import SwiftUI

struct Home: View {
    //MARK: View Bounds
    var size: CGSize
    var safeArea: EdgeInsets
    
    var body: some View {
        VStack(spacing: 0) {
            HeaderView()
            
        }
    }
    
    @ViewBuilder
    func HeaderView() -> some View {
        VStack {
            Image("Logo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: size.width * 0.5)
                .frame(maxWidth: .infinity, alignment: .top)
            
            HStack {
                FlightDetailsView(place: "São Paulo", code: "GRU", timing: "8 Dez, 23:22")
                
                VStack(spacing: 8) {
                    Image(systemName: "chevron.right")
                        .font(.title2)
                    Text("8h 10m")
                }
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity)
                FlightDetailsView(alignment: .trailing, place: "Nova Iorque", code: "JFK", timing: "9 Dez, 07:32")
            }
            .padding(.top, 20)
            
            //MARK: Airplane Image View
            Image("Airplane")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 200)
                .padding(.bottom, -20)
        }
        .padding([.horizontal, .top],15)
        .padding(.top, safeArea.top)
    }
    
    //MARK: Flight Details
    
    @ViewBuilder
    func FlightDetailsView(alignment: HorizontalAlignment = .leading, place: String, code: String, timing: String) -> some View {
        VStack(alignment: alignment, spacing: 6) {
            Text(place)
                .font(.caption)
                .foregroundColor(.black)
            
            Text(code)
                .font(.title)
                .foregroundColor(.black)
            
            Text(timing)
                .font(.caption)
                .foregroundColor(.black)
        }
        .frame(maxWidth: .infinity)
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
