package tn.sesame.sesa_life

import android.os.Bundle
import android.os.PersistableBundle
import androidx.core.splashscreen.SplashScreen.Companion.installSplashScreen
import io.flutter.embedding.android.FlutterActivity

class MainActivity: FlutterActivity(){
    override fun onCreate(savedInstanceState: Bundle?, persistentState: PersistableBundle?) {
        installSplashScreen()
        super.onCreate(savedInstanceState, persistentState)
    }
}
