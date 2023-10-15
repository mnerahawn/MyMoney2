//
//  Chart.swift
//  MyMoney2
// chart page
//  Created by Reyouf Alqahtani on 30/03/1445 AH.
//

import SwiftUI
import Charts

struct PChart: View {
    var data = [
        Chartdata(category:"البقالة", amount:15)
           ,
        Chartdata(category:"الألعاب", amount:20)
        ,Chartdata(category:"الوجبات السريعة", amount:12)
        ,Chartdata(category:"الحصالة", amount:3)]
    
    
    var body: some View {
        Chart{
            ForEach(data) { categ in
                BarMark(x: PlottableValue.value("الانواع", categ.category), y: PlottableValue.value("المبلغ", categ.amount))
                
                
                    .annotation{
                        Text("\(String(categ.amount)) ريال ")                            .fontWeight(.heavy)
                            .foregroundStyle(Color.gray)
                        
                    }
                    .foregroundStyle(Color("chartc").gradient)
                    .cornerRadius(20)}
          
    }
        .cornerRadius(20)
        .frame(height: 200)
        .chartYScale(domain: 0...50)
        .chartYAxis(.hidden)
    }}

#Preview {
    PChart()
}

