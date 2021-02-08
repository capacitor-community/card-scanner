import Foundation
import Capacitor

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitorjs.com/docs/plugins/ios
 */
@objc(CardScanner)
public class CardScanner: CAPPlugin {

    @objc func echo(_ call: CAPPluginCall) {
        let value = call.getString("value") ?? ""
        call.success([
            "value": value
        ])
    }
    
    @objc func scanCard(_ call: CAPPluginCall){
        let scanCardHolderName = call.getBool("scanCardHolderName") ?? false
        let scanCardIssuer = call.getBool("scanCardIssuer") ?? false
        
        let scanProcessor: ScanProcessor = ScanProcessor(withOptions: CardScanOptions(from: [scanCardHolderName,scanCardIssuer]))
        
        call.success([
            "cardNumber": cardNumber,
            "expiryMonth": expiryMonth,
            "expiryYear": expiryYear,
            "cardIssuer": cardIssuer,
            "cardHolderName": cardHolderName
        ])
    }
}
