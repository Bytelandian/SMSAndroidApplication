package com.example.adi.myapplication;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;

public class MyAppSmsSendService extends Service {
    public MyAppSmsSendService() {
    }

    @Override
    public IBinder onBind(Intent intent) {
        // TODO: Return the communication channel to the service.
        throw new UnsupportedOperationException("Not yet implemented");
    }
}
