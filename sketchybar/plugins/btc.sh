#!/usr/bin/env python3

import requests
import os
import sys

try:
    # Utiliser l'API Gemini qui est plus fiable
    response = requests.get('https://api.gemini.com/v1/pricefeed', timeout=10)
    
    if response.status_code == 200:
        data = response.json()
        
        # Chercher la paire BTCUSD dans les données
        btc_data = None
        for item in data:
            if item.get('pair') == 'BTCUSD':
                btc_data = item
                break
        
        if btc_data:
            usd_price = float(btc_data.get('price', 0))
            
            # Formater le prix en USD sans décimales et avec espace
            usd_price_formatted = f"{usd_price:,.0f} $"
            icon = "💰"
            
            # Mettre à jour sketchybar
            os.system(f'sketchybar -m --set btc label="{usd_price_formatted}" --set btc icon="{icon}"')
        else:
            # Données manquantes
            os.system('sketchybar -m --set btc label="N/A" --set btc icon="❓"')
    else:
        # Erreur HTTP
        os.system('sketchybar -m --set btc label="Error" --set btc icon="❌"')
        
except requests.exceptions.RequestException as e:
    # Erreur de connexion
    os.system('sketchybar -m --set btc label="Offline" --set btc icon="🌐"')
except Exception as e:
    # Erreur générale
    os.system('sketchybar -m --set btc label="Error" --set btc icon="❓"')