<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : convert.xsl
    Created on : April 19, 2017, 3:34 PM
    Author     : Widy
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="text"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="profilHrace">
        {
        "profilHrace": {
        "jmenoHrace": "<xsl:value-of select="jmenoHrace"/>",
        "hodnoceniHrace": "<xsl:value-of select="hodnoceniHrace"/>",
        "hodnoceniSkupiny": "<xsl:value-of select="hodnoceniSkupiny"/>",
        "pocetVyher": "<xsl:value-of select="pocetVyher"/>",
        "oceneni": "<xsl:value-of select="oceneni"/>",
        "pocetZapasu": "<xsl:value-of select="pocetZapasu"/>",
        "prvniZapas": "<xsl:value-of select="prvniZapas"/>",
        "pozice": {
        "support": { "-enable": "<xsl:value-of select="pozice/support/@enable"/>" },
        "carry": { "-enable": "<xsl:value-of select="pozice/carry/@enable"/>" },
        "tank": { "-enable": "<xsl:value-of select="pozice/tank/@enable"/>" },
        "mid": { "-enable": "<xsl:value-of select="pozice/mid/@enable"/>" }
        },
        "ovladani": {
        "predmety": {
        "predmet":         [
        <xsl:for-each select="ovladani/predmety/predmet">
            {
            "-id": "<xsl:value-of select="@id"/>",
            "#text": "<xsl:value-of select="."/>"
            }
            <xsl:if test="position() != last()">,</xsl:if>
        </xsl:for-each>
      
        ]},
        "schopnosti": {
        "schopnost":[
        <xsl:for-each select="ovladani/schopnosti/schopnost">
            {
            "-id": "<xsl:value-of select="schopnost/@id"/>",
            "#text": "<xsl:value-of select="."/>"
            }
            <xsl:if test="position() != last()">,</xsl:if>
        </xsl:for-each>
        ]},
        "chat": {
        "zpravaTymu": "<xsl:value-of select="ovladani/chat/zpravaTymu"/>",
        "zpravaVsem": "<xsl:value-of select="ovladani/chat/zpravaVsem"/>",
        "promluvitkTymu": "<xsl:value-of select="ovladani/chat/promluvitkTymu"/>",
        "chatavociKolecko": "<xsl:value-of select="ovladani/chat/chatavociKolecko"/>",
        "chatavociKoleckoZpravy": {
        "pozicovani": {
        "zautocte": { "-enable": "<xsl:value-of select="ovladani/chat/chatavociKoleckoZpravy/pozicovani/zautocte/@enable"/>" },
        "stahnout": { "-enable": "<xsl:value-of select="ovladani/chat/chatavociKoleckoZpravy/pozicovani/stahnout/@enable"/>" },
        "past": { "-enable": "<xsl:value-of select="ovladani/chat/chatavociKoleckoZpravy/pozicovani/past/@enable"/>" }
        },
        "nepritel": {
        "chybi": { "-enable": "<xsl:value-of select="ovladani/chat/chatavociKoleckoZpravy/nepritel/chybi/@chybi"/>" },
        "nepritelSeVratil": { "-enable": "<xsl:value-of select="ovladani/chat/chatavociKoleckoZpravy/nepritel/nepritelSeVratil/@enable"/>" },
        "nepritelMaRunu": { "-enable": "<xsl:value-of select="ovladani/chat/chatavociKoleckoZpravy/nepritel/nepritelMaRunu/@enable"/>" }
        },
        "predmety": {
        "wardy": { "-enable": "<xsl:value-of select="ovladani/chat/chatavociKoleckoZpravy/predmety/wardy/@enable"/>" },
        "stavimMeka": { "-enable": "<xsl:value-of select="ovladani/chat/chatavociKoleckoZpravy/predmety/stavimMeka/@enable"/>" },
        "stavimPipe": { "-enable": "<xsl:value-of select="ovladani/chat/chatavociKoleckoZpravy/predmety/stavimPipe/@enable"/>" }
        },
        "ostatni": {
        "dobre": { "-enable": "<xsl:value-of select="ovladani/chat/chatavociKoleckoZpravy/ostatni/dobre/@enable"/>" },
        "rozumim": { "-enable": "<xsl:value-of select="ovladani/chat/chatavociKoleckoZpravy/ostatni/rozumim/@enable"/>" },
        "pockejte": { "-enable": "<xsl:value-of select="ovladani/chat/chatavociKoleckoZpravy/ostatni/pockejte/@enable"/>" }
        }
        }
        },
        "akcevObchodu": {
        "vybratKuryra": "<xsl:value-of select="ovladani/akcevObchodu/vybratKuryra"/>",
        "dorucitPredmety": "<xsl:value-of select="ovladani/akcevObchodu/dorucitPredmety"/>",
        "koupitPredmety": "<xsl:value-of select="ovladani/akcevObchodu/koupitPredmety"/>",
        "vzitPredmety": "<xsl:value-of select="ovladani/akcevObchodu/vzitPredmety"/>"
        }
        },
        "nastaveniZvuku": {
        "celokovaHlasitosHry": "<xsl:value-of select="nastaveniZvuku/celokovaHlasitosHry"/>",
        "zvukyHry": "<xsl:value-of select="nastaveniZvuku/zvukyHry"/>",
        "hudba": "<xsl:value-of select="nastaveniZvuku/hudba"/>",
        "hlas": "<xsl:value-of select="nastaveniZvuku/hlas"/>",
        "hlaskyJednotky": {
        "zadne": { "-enable": "<xsl:value-of select="nastaveniZvuku/hlaskyJednotky/zadne"/>" },
        "pouzeKomentareUdalosti": { "-enable": "<xsl:value-of select="nastaveniZvuku/hlaskyJednotky/pouzeKomentareUdalosti"/>" },
        "vsechny": { "-enable": "<xsl:value-of select="nastaveniZvuku/hlaskyJednotky/vsechny"/>" }
        }
        }
        }
        }
    </xsl:template>
</xsl:stylesheet>

