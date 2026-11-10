# SheSkills — Women Skill Training Portal (Flutter Frontend)

A Flutter Material 3 frontend starter for a women-focused skill training and learning portal.

## Included screens
- Welcome / onboarding
- Login and registration UI
- Home dashboard
- Explore courses with search and category filters
- Course details and demo enrollment
- My Learning with progress indicators
- Trainer information
- Certificates placeholder
- Student profile and settings

## Run in VS Code (Windows)
1. Install Flutter and the Flutter/Dart extensions in VS Code.
2. Extract this ZIP.
3. Open the extracted `sheskills_flutter` folder in VS Code.
4. Open **Terminal → New Terminal**.
5. Run:

   ```powershell
   flutter pub get
   flutter run
   ```

To build an Android APK:

```powershell
flutter build apk --release
```

APK output:
`build/app/outputs/flutter-apk/app-release.apk`

## Demo limitations
This is a frontend-only starter. Login/registration, course enrollment, profile actions and course progress use local demo state. They are not connected to Firebase or another backend. No real account is created and no data is saved permanently. Connect Firebase Authentication, Cloud Firestore, and your own course/video service before production use.

## Suggested next integrations
- Firebase Authentication for student/trainer accounts
- Cloud Firestore for users, courses, enrollments and progress
- Firebase Storage or another media host for course images/videos (review current pricing and billing requirements first)
- Admin/trainer dashboard and role-based access
