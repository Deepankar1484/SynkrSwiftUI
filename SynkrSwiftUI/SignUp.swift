import SwiftUI

struct SignupView: View {
    
    @State private var fullName = ""
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        VStack(spacing: 15) { // Reduced spacing
            // App Logo
            Image("Logo") // Replace with your asset name
                .resizable()
                .scaledToFit()
                .frame(width: 250, height: 250)
                 // Adjust padding instead of default VStack spacing
            
            // Short text under the logo
            Text("Create your new account")
                .font(.headline)
                .foregroundColor(.gray)
                 // Pull it up slightly

            // Full Name Field
            TextField("Full Name", text: $fullName)
                .textFieldStyle(.roundedBorder)
                .padding(.horizontal)

            // Email Field
            TextField("Email", text: $email)
                .textFieldStyle(.roundedBorder)
                .keyboardType(.emailAddress)
                .autocapitalization(.none)
                .padding(.horizontal)

            // Password Field
            SecureField("Password", text: $password)
                .textFieldStyle(.roundedBorder)
                .padding(.horizontal)
            
            // Signup Button
            Button(action: {
                print("Signup Button Tapped")
            }) {
                Text("Sign Up")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding(.horizontal)
            
            Text("or continue with")
                .foregroundColor(.gray)
            
            // Continue with Google Button
            Button(action: {
                print("Continue with Google")
            }) {
                HStack {
                    Image(systemName: "globe")
                        .foregroundColor(.red)
                    Text("Continue with Google")
                }
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.gray.opacity(0.2))
                .foregroundColor(.black)
                .cornerRadius(10)
            }
            .padding(.horizontal)

            Spacer()
            
            // Login Link
            HStack {
                Text("Already have an account?")
                NavigationLink(destination: LoginView()) {
                    Text("Log in")
                        .foregroundColor(.blue)
                        .fontWeight(.bold)
                }
            }
            .padding(.bottom, 20)
        }
        .padding()
    }
}

// Preview
#Preview {
    NavigationView {
        SignupView()
    }
}
