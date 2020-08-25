//
//  SearchBarView.swift
//  Ultimate_Calculator
//
//  Created by Hritik Raj on 8/16/20.
//  Copyright © 2020 Hritik Raj. All rights reserved.
//
//
import SwiftUI
//
//struct SearchBarView: UIV {
//    @Binding var searchText: String
//        @State private var showCancelButton: Bool = false
//        var onCommit: () ->Void = { ("onCommit")}
//
//        var body: some View {
//            HStack {
//                HStack {
//                    Image(systemName: "magnifyingglass")
//
//                    // Search text field
//                    ZStack (alignment: .leading) {
//                        if searchText.isEmpty { // Separate text for placeholder to give it the proper color
//                            Text("Search")
//                        }
//                        TextField("", text: $searchText, onEditingChanged: { isEditing in
//                            self.showCancelButton = true
//                        }, onCommit: onCommit).foregroundColor(.primary)
//                    }
//                    // Clear button
//                    Button(action: {
//                        self.searchText = ""
//                    }) {
//                        Image(systemName: "xmark.circle.fill").opacity(searchText == "" ? 0 : 1)
//                    }
//                }
//                .padding(EdgeInsets(top: 8, leading: 6, bottom: 8, trailing: 6))
//                .foregroundColor(.secondary) // For magnifying glass and placeholder test
//                .background(Color(.tertiarySystemFill))
//                .cornerRadius(10.0)
//
//                if showCancelButton  {
//                    // Cancel button
//                    Button("Cancel") {
//                        UIApplication.shared.endEditing(true) // this must be placed before the other commands here
//                        self.searchText = ""
//                        self.showCancelButton = false
//                    }
//                    .foregroundColor(Color(.systemBlue))
//                }
//            }
//            .padding(.horizontal)
//            .navigationBarHidden(showCancelButton)
//        }
//    }
//
//
//extension UIApplication {
//    func endEditing(_ force: Bool) {
//        self.windows
//            .filter{$0.isKeyWindow}
//            .first?
//            .endEditing(force)
//    }
//}
//
//struct ResignKeyboardOnDragGesture: ViewModifier {
//    var gesture = DragGesture().onChanged{_ in
//        UIApplication.shared.endEditing(true)
//    }
//    func body(content: Content) -> some View {
//        content.gesture(gesture)
//    }
//}
//
//extension View {
//    func resignKeyboardOnDragGesture() -> some View {
//        modifier(ResignKeyboardOnDragGesture())
//    }
//}
//
//struct SearchBarView_Previews: PreviewProvider {
//    static var previews: some View {
//        SearchBarView()
//    }
//}


struct SearchBarView : UIViewRepresentable {
    
    @Binding var text : String
    
    class Cordinator : NSObject, UISearchBarDelegate {
        
        @Binding var text : String
        
        init(text : Binding<String>) {
            _text = text
        }
        
        func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
            text = searchText
        }
    }
    
    func makeCoordinator() -> SearchBarView.Cordinator {
        return Cordinator(text: $text)
    }
    
    func makeUIView(context: UIViewRepresentableContext<SearchBarView>) -> UISearchBar {
        let searchBar = UISearchBar(frame: .zero)
        searchBar.delegate = context.coordinator
        return searchBar
    }
    
    func updateUIView(_ uiView: UISearchBar, context: UIViewRepresentableContext<SearchBarView>) {
        uiView.text = text
    }
}
