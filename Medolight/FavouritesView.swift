//
//  FavouritesView.swift
//  Medolight
//
//  Created by Евгений Соболь on 11/25/19.
//  Copyright © 2019 Esobol. All rights reserved.
//

import SwiftUI

struct FavouritesView: View {

    @Environment(\.managedObjectContext) var managedObjectContext

    @FetchRequest(entity: Program.entity(),
                  sortDescriptors: [],
                  predicate: NSPredicate(format: "isFavourite == YES")) var programs: FetchedResults<Program>

    var body: some View {
        NavigationView {
            List(programs, id: \.name) { program in
                NavigationLink(destination: ProgramDetailsView(program: program)) {
                    ProgramRow(program: program)
                }
            }
            .navigationBarTitle("Избранное")
        }
    }
}

struct FavouritesView_Previews: PreviewProvider {
    static var previews: some View {
        ProgramsView()
    }
}
