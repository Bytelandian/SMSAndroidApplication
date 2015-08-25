package com.example.adi.myapplication;

import android.app.IntentService;
import android.content.Intent;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.net.Uri;
import android.telephony.SmsManager;
import android.util.Log;

import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.ResponseHandler;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.BasicResponseHandler;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;
import org.json.JSONArray;
import org.json.JSONObject;
import org.json.JSONTokener;

import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;

/**
 * An {@link IntentService} subclass for handling asynchronous task requests in
 * a service on a separate handler thread.
 * <p/>
 * TODO: Customize class - update intent actions, extra parameters and static
 * helper methods.
 */
public class MyIntentService extends IntentService {

    public MyIntentService() {
        super("MyIntentService");
    }

    @Override
    protected void onHandleIntent(Intent intent) {

        //Getting details received from the started intent
        String senderAddress=intent.getStringExtra("SenderAddress");
        String receivedMessage=intent.getStringExtra("Message");

        Log.i("MyApplication",senderAddress+receivedMessage);

        try {
            //Connecting with the Server

            HttpClient httpclient = new DefaultHttpClient();

            List<BasicNameValuePair> value = new ArrayList<>(2);
            value.add(new BasicNameValuePair("SenderAddress", senderAddress));
            value.add(new BasicNameValuePair("Message", receivedMessage));

            //Getting server details from the shared preferences
            final SharedPreferences mySMSapp = getSharedPreferences("mySMSapp",0);

            Log.i("MyApplication","Host address = "+mySMSapp.getString("host","http://10.1.34.69/csl6/"));

            //Setting the post request
            HttpPost httppost = new HttpPost(mySMSapp.getString("host","http://10.1.34.69/csl6/"));

            httppost.setEntity(new UrlEncodedFormEntity(value));

            //Getting response and reading the reply message
            HttpResponse response = httpclient.execute(httppost);

            InputStreamReader myInput = new InputStreamReader(response.getEntity().getContent());

            BufferedReader myReader=new BufferedReader(myInput);

            String myOut=myReader.readLine();
            JSONTokener myToken=new JSONTokener((myOut));

            //Converting the received message into JSON format
            JSONObject myJsonObject=new JSONObject(myToken);

            Log.i("MyApplication","Response"+myJsonObject);

            String replyMessage=myJsonObject.get("replyMessage").toString();

            Log.i("MyApplication","Reply : "+replyMessage);


            //Setting SMS Manager to send the reply
            SmsManager smsManager = SmsManager.getDefault();


            //Sending the message
            Log.e("MyApplication","Sending SMS to "+senderAddress + "With Message : "+replyMessage);
            smsManager.sendTextMessage(senderAddress, null, replyMessage, null, null);

            Log.d("MyApplication","Message Sent");


        }
        catch(Exception e)
        {
            Log.i("MyApplication",e.toString());
        }


    }


}
