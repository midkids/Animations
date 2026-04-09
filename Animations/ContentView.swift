//
//  ContentView.swift
//  Animations
//
//  Created by Myron Snelson on 3/30/26.
//
//  Animation: animation is a function of our
//    view state, just like the rest of the
//    views themselves



import SwiftUI

struct ContentView: View {
    
    // size is 100%
    // use value of 1.0 for implicit, and animated bindings
//    @State private var animationAmount = 1.0
    // use value of 0.0 for explicit animation
    @State private var animationAmount = 1.0
    
    // use for controlling the animation stack
    // and animating gestures
    @State private var enabled = false
    
    // use for animating gestures
    @State private var dragAmount = CGSize.zero
    let letters = Array("Hello SwiftUI")
    
    // used for Showing and hiding views with transitions
    @State private var isShowingRed = false
     
    
    var body: some View {
        
        /*
         // Creating implicit animations
         //
         // The first way to animate
         // This is the simplest type of animation
         // Animation is attached to a view
         // We tell the view ahead of time how to respond
         // SwiftUI makes sure any changes that do occur
         // follow the animations the program specified
         // Our animation is a function of our view state
         
         // Button will get bigger
         // every time it is tapped
         Button("Tap me") {
         animationAmount += 1
         }
         .padding(50)
         .background(.red)
         .foregroundStyle(.white)
         .clipShape(.circle)
         .scaleEffect(animationAmount)
         
         // Initially, blur amount = 0
         // but steadily increases as the button grows
         .blur(radius: (animationAmount - 1) * 3)
         
         // IMPORTANT: apply a default amount of animation
         // whenever the value of animationAmount changes
         // Causes smooth growth
         
         // Takes effect on all properties
         // of the view it changes
         // and all the animations change together
         .animation(.default, value: animationAmount)
         */
        
        /*
         // Customizing animations in SwiftUI
         //
         // Button will get bigger
         // every time it is tapped
         Button("Tap me") {
         //           animationAmount += 1
         }
         .padding(50)
         .background(.red)
         .foregroundStyle(.white)
         .clipShape(.circle)
         //        .scaleEffect(animationAmount)
         
         // Initially, blur amount = 0
         // but steadily increases as the button grows
         //        .blur(radius: (animationAmount - 1) * 3)
         
         // IMPORTANT: apply a default amount of animation
         // whenever the value of animationAmount changes
         // Causes smooth growth
         
         // Takes effect on all properties
         // of the view it changes
         // and all the animations change together
         
         // constant speed
         // .animation(.linear, value: animationAmount)
         
         // can specify spring: how fast it scales up
         // can specify bounce: 0 - no bounce, 1 = big bounce
         // very bouncy
         // .animation(.spring(duration: 1, bounce: 0.9), value: animationAmount)
         
         // grows slowly, then fast, then slowly again
         // .animation(.easeInOut(duration: 2), value: animationAmount)
         
         // can specify easeInOut modifiers
         // delays 1 second before it
         // grows slowly, then fast, then slowly again
         // .animation(
         //    .easeInOut(duration: 2)
         //        .delay(1),
         //   value: animationAmount)
         
         // repeats animation 3 times, out, in, out
         // IMPORTANT: when the animation completes,
         // SwiftUI must match the state of our program
         // in this case, the current value of animationAmount
         //.animation(
         //    .easeInOut(duration: 2)
         //        .repeatCount(3, autoreverses: true),
         //   value: animationAmount)
         
         // repeats animation forever, out, in, out
         //.animation(
         //   .easeInOut(duration: 2)
         //       .repeatForever(autoreverses: true),
         //  value: animationAmount)
         
         // In this example, we remove animation from button
         // and put it on to the circle
         // overlays let us create new views
         // at the same size and position on the screen
         // as the view we are overlaying
         // We will create a circle in our overlay
         // Overlay BEFORE animation
         // opacity = 1 (2 - 1 animationAmount) completely opaque
         // opacity = 0 (2 - 2 animationAmount) completely transparent
         // IMPORTANT:
         // to see this effect, we commented out
         // scaleEffect, blur, and animationAmount increment
         // Result: circle starts the same size as our button,
         // expands, then disappears...repeatedly
         .overlay(
         Circle()
         .stroke(.red)
         .scaleEffect(animationAmount)
         .opacity(2 - animationAmount)
         .animation(
         .easeOut(duration: 1)
         .repeatForever(autoreverses: false),
         value: animationAmount
         )
         )
         // when view first displayed
         .onAppear() {
         animationAmount = 2
         }
         */
        
        /*
         // Animated bindings
         // A second way to animate
         // the animation modifier can be added
         // Animation is attached to a binding
         // Animating between the old and new value
         // this works even between true and false
         
         // Iteration 1: two ways to of changing the value of animationAmount
         // stepper or button
         // VStack {
         
         // Iterations 2:
         // Must have return
         // return tells SwiftUI this is the part being sent
         // back for the view
         // animationAmount is updated by the Stepper
         // then the view is updated
         // Allows us to add print statement (only in Iteration 2)
         print(animationAmount)
         
         // SwiftUI is examining the state of our view
         // before the binding of $animationAmount changes
         // and then it examines the target state of our view
         // It then applies animation to get from the
         // initial value of animationAmount to the
         // changed amount of animationAmount
         // We don't have to watch the value for changes
         // The animation is attached to the value it should watch
         return VStack {
         Stepper("Scale amount", value: $animationAmount.animation(
         .easeInOut(duration: 1)
         .repeatCount(3, autoreverses: true)
         
         ),
         in: 0...10)
         Spacer()
         Button("Tap me") {
         animationAmount += 1
         }
         .padding(40)
         .background(.red)
         .foregroundStyle(.white)
         .clipShape(.circle)
         .scaleEffect(animationAmount)
         }
         */
        
        /*
         
         // Creating explicit animations
         // A third way to animate
         // Explicitly animating with a state change
         // SwiftUI is examining the state of our view
         // before and after, applying animation
         // to get from the initial value
         // to the changed value
         Button("Tap me") {
         withAnimation(.spring(duration: 1, bounce: 0.5)) {
         animationAmount += 360
         }
         }
         .padding(50)
         .background(.red)
         .foregroundStyle(.white)
         .clipShape(.circle)
         .rotation3DEffect(
         .degrees(animationAmount),
         axis: (x: 0.0, y: 1.0, z: 0.0)
         )
         
         }
         */
        
        /*
         // Controlling the animation stack
         // Concept 1: The order of modifiers matter!
         //   Only changes before the animation modifier
         //   get animated
         // Concept 2: We can attach the animation modifier
         //   several times...the order matters!
         //   Can have as many animation modifier
         //   as you want!
         // Concept 3: It is possible to bypass the animation
         //   entirely by passing nil to the modifier
         
         Button("Tap me") {
         enabled.toggle()
         }
         .frame(width: 200, height: 200)
         .background(enabled ? .blue : .red)
         //               .frame(width: 200, height: 200)
         .foregroundStyle(.white)
         // animation occurs between red and blue
         // with clipShape before animation modifier,
         // rounding is animated
         //   .clipShape(.rect(cornerRadius: enabled ? 60 : 0))
         .animation(.default, value: enabled)
         
         // turns off this animation
         // .animation(nil, value: enabled)
         
         // but the rounding is immediate
         // to animate: move it before animation
         .clipShape(.rect(cornerRadius: enabled ? 60 : 0))
         
         // Adding an additional animation modifier
         // after clipShape animates only the clipShape
         .animation(.spring(duration: 1, bounce: 0.9),
         value: enabled)
         */
        
// Animating gestures
    //
/*
    // The effects of gestures can be animated
        LinearGradient(colors: [.yellow,.red], startPoint: .topLeading, endPoint: .bottomTrailing)
            .frame(width: 300, height: 200)
            .clipShape(.rect(cornerRadius: 10))
            .offset(dragAmount)
        // drag gesture object
        // attached to our card-shape from above
        // enables user to drag card around screen
        // and return it to its starting point when
        // user lets go of card
            .gesture(
                DragGesture()
                    .onChanged { value in
                        dragAmount = value.translation
                    }
                    .onEnded { _ in
                        // explicitly animates the return
                        // to zero (starting point)
                        withAnimation(.bouncy) {
                            dragAmount = .zero
                        }
                    }
            )
        // implicit animation to whole view
        //    .animation(.bouncy, value: dragAmount)

        // We will drag the array of letters around
        // num will count up from zero to the number of
        // characters in our letters array
        // affecting the delay
        HStack(spacing: 0) {
            ForEach(0..<letters.count, id: \.self) {
                num in Text(String(letters[num]))
                    .padding(5)
                    .font(.title)
                    .background(enabled ? .blue : .red)
                    .offset(dragAmount)
                    // very small delay that increases
                    // as it goes through the array letters
                    // result letters toward the end snap
                    // to dragged position slower
                    .animation(.linear.delay(Double(num) / 20),
                               value: dragAmount)
                
            }
        }
        // gesture applies to entire HStack
        // enables user to drag array around screen
        // and return it to its starting point when
        // user lets go of array
        .gesture(
            DragGesture()
                .onChanged { value in
                    dragAmount = value.translation
                }
                .onEnded {_ in 
                    dragAmount = .zero
                    // toggles background between red and blue
                    enabled.toggle()
                }
        )
 */

// Showing and hiding views with transitions
        VStack {
            Button("Tap me") {
                // animate the Boolean change
                // therefore animate the the rectangle appearing
                // instead of the Tap Me button just jumping
                // in and out of the rectangle
                withAnimation {
                    isShowingRed.toggle()
                }
            }
            // we will make this red rectangle
            // only appear when if isShowingRed is true
            if isShowingRed {
                Rectangle()
                    .fill(.red)
                    .frame(width: 200, height: 200)
                // scale rectangle up and down in size
                // allows Tap Me to always stay outside
                // of rectangle
                //    .transition(.scale)
                // transition differently on insertion
                // versus removal
                    .transition(.asymmetric(insertion: .scale, removal: .opacity))
            }
        }
        
    }
}



#Preview {
    ContentView()
}
