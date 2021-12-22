package com.example.deffered;

import com.google.android.play.core.splitcompat.SplitCompatApplication;

import io.flutter.FlutterInjector;
import io.flutter.embedding.engine.deferredcomponents.PlayStoreDeferredComponentManager;

public class Appstate extends SplitCompatApplication {


    @Override
    public void onCreate() {
        super.onCreate();

        PlayStoreDeferredComponentManager deferredComponentManager = new
                PlayStoreDeferredComponentManager(this, null);
        FlutterInjector.setInstance(new FlutterInjector.Builder()
                .setDeferredComponentManager(deferredComponentManager).build());
    }
}
