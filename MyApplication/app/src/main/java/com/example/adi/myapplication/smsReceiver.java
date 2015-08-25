package com.example.adi.myapplication;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.telephony.SmsManager;
import android.telephony.SmsMessage;
import android.util.Log;

/**
 * Created by adi on 23/3/15.
 */

public class smsReceiver extends BroadcastReceiver{

    @Override
    public void onReceive(Context context,Intent intent){

        Log.d("MyApplication","Broadcast receiver started");

        //Reteriving the received SMS
        Object[] pdus = (Object[])intent.getExtras().get("pdus");
        SmsMessage sms = SmsMessage.createFromPdu((byte[]) pdus[0]);

        /// Getting SMS body and sender details
        String senderAddress = sms.getOriginatingAddress();
        String receivedSMS = sms.getDisplayMessageBody();

        Log.d("MyApplication", "Received SMS: " +receivedSMS+" from sender: "+ senderAddress);

        //Starting the intent if it is already running it will queue the request

        Intent i=new Intent(context,MyIntentService.class);
        i.putExtra("SenderAddress",senderAddress);
        i.putExtra("Message",receivedSMS);
        context.startService(i);

    }


}
