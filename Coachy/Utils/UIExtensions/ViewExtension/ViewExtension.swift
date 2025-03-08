//
//  ViewExtension.swift
//  Coachy
//
//  Created by Manuel Alejandro Hernandez Marin on 07/03/25.
//

import Foundation
import UIKit
import SwiftUI
import AVFoundation

/// A collection of utility extensions for SwiftUI `View` components to enhance view behavior and interaction.
///
/// These extensions provide methods for dismissing views based on certain conditions and showing loading indicators in a modular way.
public extension View {
    
    /// Dismisses a view when a given condition becomes true, with the option to execute functions before dismissing.
    ///
    /// This method allows a SwiftUI view to observe a condition and trigger the dismissal of the view when the condition evaluates to `true`.
    /// Additionally, it offers functionality to disable dismissal temporarily and execute arbitrary functions or modify other values during the process.
    ///
    /// - Parameters:
    ///   - condition: A `Binding<Bool>` that determines whether the dismissal should occur.
    ///   - disablesDismiss: A boolean flag that, if set to `true`, prevents the dismissal from occurring. Defaults to `false`.
    ///   - function: A closure to execute when the condition becomes true and the view is about to be dismissed.
    ///   - values: A closure that allows changes to other values when the condition changes.
    ///
    /// - Returns: A `some View` that is modified to execute the given actions and dismiss when necessary.
    ///
    /// - Example:
    ///   ```
    ///   .dismissOnTrue($isDismissed) {
    ///       performCleanup()
    ///   } andChange: {
    ///       updateUI()
    ///   }
    ///   ```
    func dismissOnTrue(_ condition: Binding<Bool>, disablesDismiss: Bool = false, with function: @escaping () -> (), andChange values: @escaping () -> ()) -> some View {
        return self.onChange(of: condition.wrappedValue) { newValue in
            // Executes the function when the condition is true and dismissal is not disabled.
            if newValue && !disablesDismiss {
                function()
            }
            
            // Executes the values closure for other state changes.
            values()
            
            // If dismissal is disabled, reset the condition to false.
            if disablesDismiss {
                condition.wrappedValue = false
            }
        }
    }
    
    /// Displays a spinner overlay when the specified condition is true, indicating a loading state.
    ///
    /// This method overlays a `LoadingView` spinner on top of the view when the condition is true,
    /// and disables interaction with the underlying view during the loading state.
    ///
    /// - Parameters:
    ///   - condition: A boolean flag that controls when the spinner should be visible. If `true`, the spinner is shown.
    ///
    /// - Returns: A `some View` with an overlay spinner when the condition is true, or no overlay if the condition is false.
    ///
    /// - Example:
    ///   ```
    ///   .showSpinner(when: isLoading)
    ///   ```
    func showSpinner(when condition: Bool) -> some View {
        return self
            .disabled(condition)  // Disables interaction with the view when the spinner is shown.
            .overlay(
                ZStack {
                    // Shows the loading spinner if the condition is true.
                    if condition { LoadingView() } else { EmptyView() }
                }
                , alignment: .center)  // Centers the spinner within the view.
    }
}
