#Remove the Service Worker folder before running WhatsApp so that [To use WhatsApp, update Chrome or use Mozilla Firefox, Safari, Microsoft Edge or Opera.] error won't occurs.
sudo rm -rf "~/.config/whatsapp-nativefier-*/Service Worker" && ~/WhatsApp-linux-`uname -m`/WhatsAppWeb
