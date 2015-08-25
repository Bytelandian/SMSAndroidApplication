package com.example.adi.myapplication;

import android.content.Intent;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.support.v7.app.ActionBarActivity;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;


public class MainActivity extends ActionBarActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        //Initialiing the Sharedpreference and button

        final SharedPreferences mySMSapp = getSharedPreferences("mySMSapp",0);

        Button settings=(Button) findViewById(R.id.settings);

        final EditText hostaddress=(EditText) findViewById(R.id.host);

        hostaddress.setText(mySMSapp.getString("host",mySMSapp.getString("host","http://10.1.34.69/csl6/")));

        //Onclick Listener of the settings button
        settings.setOnClickListener(new View.OnClickListener(){

                                        @Override
                                        public void onClick(View v) {
                                            //Updating the shared preferences
                                            SharedPreferences.Editor myAppEdit=mySMSapp.edit();
                                            myAppEdit.putString("host",hostaddress.getText().toString());
                                            Log.e("MyApplication","Shared Preferences Updated");
                                            myAppEdit.commit();
                                        }
                                    }
        );

    }


    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        // Inflate the menu; this adds items to the action bar if it is present.
        getMenuInflater().inflate(R.menu.menu_main, menu);
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        // Handle action bar item clicks here. The action bar will
        // automatically handle clicks on the Home/Up button, so long
        // as you specify a parent activity in AndroidManifest.xml.
        int id = item.getItemId();

        //noinspection SimplifiableIfStatement
        if (id == R.id.action_settings) {
            return true;
        }

        return super.onOptionsItemSelected(item);
    }


}
