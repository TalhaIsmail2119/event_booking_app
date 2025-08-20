import com.android.build.gradle.AppExtension

val android = project.extensions.getByType(AppExtension::class.java)

android.apply {
    flavorDimensions("env")

    productFlavors {
        create("dev") {
            dimension = "env"
            applicationId = "com.example.event_booking_app.dev"
            resValue(type = "string", name = "app_name", value = "Event Booking App Dev")
        }
        create("staging") {
            dimension = "env"
            applicationId = "com.example.event_booking_app.staging"
            resValue(type = "string", name = "app_name", value = "Event Booking App Staging")
        }
        create("prod") {
            dimension = "env"
            applicationId = "com.example.event_booking_app"
            resValue(type = "string", name = "app_name", value = "Event Booking App")
        }
    }
}