declare module '@capacitor/core' {
  interface PluginRegistry {
    CardScanner: CardScannerPlugin;
  }
}

export interface CardScannerPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
}
