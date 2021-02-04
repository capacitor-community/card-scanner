import { WebPlugin } from '@capacitor/core';
import { CardScannerPlugin } from './definitions';

export class CardScannerWeb extends WebPlugin implements CardScannerPlugin {
  constructor() {
    super({
      name: 'CardScanner',
      platforms: ['web'],
    });
  }

  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }
}

const CardScanner = new CardScannerWeb();

export { CardScanner };

import { registerWebPlugin } from '@capacitor/core';
registerWebPlugin(CardScanner);
