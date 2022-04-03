package com.hps.HPS;

import android.app.Activity;
import android.content.Intent;
import android.provider.Telephony;

public class SMSActivity extends Activity {
    private void startSMS() {
    String defaultSmsPackageName = Telephony.Sms.getDefaultSmsPackage(this); // Need to change the build to API 19
    Intent smsIntent = new Intent(Intent.ACTION_VIEW);
    smsIntent.setType("text/plain");
         if (defaultSmsPackageName != null)// Can be null in case that there is no default, then the user would be able to choose
         // any app that support this intent.
         {
            smsIntent.setPackage(defaultSmsPackageName);
         }
    startActivity(smsIntent);
    }
}
