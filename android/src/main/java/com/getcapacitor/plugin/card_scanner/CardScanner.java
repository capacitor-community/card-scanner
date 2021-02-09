package com.getcapacitor.plugin.card_scanner;

import com.getcapacitor.JSObject;
import com.getcapacitor.NativePlugin;
import com.getcapacitor.Plugin;
import com.getcapacitor.PluginCall;
import com.getcapacitor.PluginMethod;

@NativePlugin
public class CardScanner extends Plugin {
    private static final int SCAN_REQUEST_CODE = 49193;

    @PluginMethod
    public void echo(PluginCall call) {
        String value = call.getString("value");

        JSObject ret = new JSObject();
        ret.put("value", value);
        call.success(ret);
    }

    @PluginMethod()
    public void scanCard(PluginCall call){
        Boolean scanCardHolderName = call.getBoolean("scanCardHolderName", false);
        Boolean scanCardIssuer = call.getBoolean("scanCardIssuer", false);
    }

}
