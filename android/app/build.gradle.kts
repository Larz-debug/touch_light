plugins {
    id("com.android.application")
    id("kotlin-android")
    // The Flutter Gradle Plugin must be applied after the Android and Kotlin Gradle plugins.
    id("dev.flutter.flutter-gradle-plugin")
}

android {
    kotlinOptions {
        jvmTarget = "1.8"
    }
    namespace = "com.example.touch_light"
    compileSdk = 34

    ndkVersion = "27.0.12077973"  // 👈 Add here

    defaultConfig {
        applicationId = "com.example.touch_light"
        minSdk = 23
        targetSdk = 34
        versionCode = 1
        versionName = "1.0"
        
    }
}



flutter {
    source = "../.."
}
