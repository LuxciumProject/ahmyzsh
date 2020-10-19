function backupall2() {
  (vucp "/run/media/luxcium/D:\ Archive locale/backup/" "/run/media/luxcium/B/") &
  (vucp "/run/media/luxcium/D:\ Archive locale/luxcium-backup/" "/run/media/luxcium/B/") &
  (vucp "/run/media/luxcium/D:\ Archive locale/old drive - windows backup/" "/run/media/luxcium/B/") &
  (vucp "/run/media/luxcium/D:\ Archive locale/Documents/" "/run/media/luxcium/B/") &
  (vucp "/run/media/luxcium/D:\ Archive locale/NeB_4o1" "/run/media/luxcium/B/") &
  (vucp "/run/media/luxcium/D:\ Archive locale/C.. 4 juin 2020" "/run/media/luxcium/B/") &
  (vucp "/run/media/luxcium/D:\ Archive locale/C.. 4 juin 2020" "/run/media/luxcium/B/") &
}
# // sudo nice -n -10 ionice -c 1 -n 5
# (vucp "/run/media/luxcium/LaCie/" "/run/media/luxcium/D:\ Archive locale/la-cie/")

function backuplacie() {
  ( 
    # echo '003G'
    (vucp "/run/media/luxcium/LaCie/Backup Traktor/" "/run/media/luxcium/D:\ Archive locale/la-cie")
    # echo '004G'
    (vucp "/run/media/luxcium/LaCie/\!\!Traktor 2.10.0/" "/run/media/luxcium/D:\ Archive locale/la-cie")
    # echo '036G'
    (vucp "/run/media/luxcium/LaCie/OPEN HOUSE PRODUCTIONS/" "/run/media/luxcium/D:\ Archive locale/la-cie")
    # echo '156G'
    (vucp "/run/media/luxcium/LaCie/Music Production/" "/run/media/luxcium/D:\ Archive locale/la-cie")
    # echo '162G'
    (vucp "/run/media/luxcium/LaCie/OLSEN/" "/run/media/luxcium/D:\ Archive locale/la-cie")
    # echo '173G'
    (vucp "/run/media/luxcium/LaCie/Markets Data/" "/run/media/luxcium/D:\ Archive locale/la-cie")
    # echo '196G'
    (vucp "/run/media/luxcium/LaCie/Youtube Videos/" "/run/media/luxcium/D:\ Archive locale/la-cie")
    # echo '453G'
    (vucp "/run/media/luxcium/LaCie/Archives/" "/run/media/luxcium/D:\ Archive locale/la-cie")
    # echo '604G'
    (vucp "/run/media/luxcium/LaCie/PhotosEtVideos/" "/run/media/luxcium/D:\ Archive locale/la-cie")
    # +++++
    # echo '012M'
    (vucp "/run/media/luxcium/LaCie/System/" "/run/media/luxcium/D:\ Archive locale/la-cie")
    # echo '021M'
    (vucp "/run/media/luxcium/LaCie/Library/" "/run/media/luxcium/D:\ Archive locale/la-cie")
    # echo '024M'
    (vucp "/run/media/luxcium/LaCie/NeB_4o1 Corp./" "/run/media/luxcium/D:\ Archive locale/la-cie")
    # echo '162M'
    (vucp "/run/media/luxcium/LaCie/Ableton/" "/run/media/luxcium/D:\ Archive locale/la-cie")
    # echo '323M'
    (vucp "/run/media/luxcium/LaCie/Backups.backupdb/" "/run/media/luxcium/D:\ Archive locale/la-cie")
    # echo '401M'
    (vucp "/run/media/luxcium/LaCie/.LaCie/" "/run/media/luxcium/D:\ Archive locale/la-cie")
    # echo '704M'
    (vucp "/run/media/luxcium/LaCie/.Spotlight-V100/" "/run/media/luxcium/D:\ Archive locale/la-cie")
    # echo '008K'
    (vucp "/run/media/luxcium/LaCie/.Fichiers/" "/run/media/luxcium/D:\ Archive locale/la-cie")
    # echo '008K'
    (vucp "/run/media/luxcium/LaCie/.TemporaryItems/" "/run/media/luxcium/D:\ Archive locale/la-cie")
    # echo '008K'
    (vucp "/run/media/luxcium/LaCie/.Trashes/" "/run/media/luxcium/D:\ Archive locale/la-cie")
    # echo '008K'
    (vucp "/run/media/luxcium/LaCie/DamagedFiles/" "/run/media/luxcium/D:\ Archive locale/la-cie")
    # echo '020K'
    (vucp "/run/media/luxcium/LaCie/.fseventsd/" "/run/media/luxcium/D:\ Archive locale/la-cie")
    # echo '188K'
    (vucp "/run/media/luxcium/LaCie/.DocumentRevisions-V100/" "/run/media/luxcium/D:\ Archive locale/la-cie")
  )

}

function backuplacierenamed() {
  # (vucp '/run/media/luxcium/LaCie/) &
  ( 
    (vucp '/run/media/luxcium/LaCie/Archives/09-septembre-2019/Images folder/photos de josmar 2019 ' '/run/media/luxcium/D:\ Archive locale/la-cie/Archives/09-septembre-2019/Images folder/photos de josmar 2019')
    (vucp '/run/media/luxcium/LaCie/Archives/avril-juin 2020/Mexique 2019 juin-juillet et David et Pâques 2020 ' '/run/media/luxcium/D:\ Archive locale/la-cie/Archives/avril-juin 2020/Mexique 2019 juin-juillet et David et Pâques 2020')
    (vucp '/run/media/luxcium/LaCie/Archives/avril-juin 2020/PHOTOS lundi-4 mai 2020 -- ma chambre ' '/run/media/luxcium/D:\ Archive locale/la-cie/Archives/avril-juin 2020/PHOTOS lundi-4 mai 2020 -- ma chambre')
    (vucp '/run/media/luxcium/LaCie/Archives/BACKUP 21 juillet 2018/Documents/Kigston files march 2018 ' '/run/media/luxcium/D:\ Archive locale/la-cie/Archives/BACKUP 21 juillet 2018/Documents/Kigston files march 2018')
    (vucp '/run/media/luxcium/LaCie/Archives/BACKUP 21 juillet 2018/Documents/Lettres à maitre Gallichan ' '/run/media/luxcium/D:\ Archive locale/la-cie/Archives/BACKUP 21 juillet 2018/Documents/Lettres à maitre Gallichan')
    (vucp '/run/media/luxcium/LaCie/Archives/BACKUP 21 juillet 2018/Documents/Mai 2018/Fraudde lundi 7 mai 2018 ' '/run/media/luxcium/D:\ Archive locale/la-cie/Archives/BACKUP 21 juillet 2018/Documents/Mai 2018/Fraudde lundi 7 mai 2018')
    (vucp '/run/media/luxcium/LaCie/Archives/BACKUP 21 juillet 2018/LUXCIUM 2/setup/bash/last ' '/run/media/luxcium/D:\ Archive locale/la-cie/Archives/BACKUP 21 juillet 2018/LUXCIUM 2/setup/bash/last')
    (vucp '/run/media/luxcium/LaCie/Archives/Books/Audio  Books/Persuasion IQ ' '/run/media/luxcium/D:\ Archive locale/la-cie/Archives/Books/Audio  Books/Persuasion IQ')
    (vucp '/run/media/luxcium/LaCie/Archives/Documents 14 septembre 2019/19 janvier 2019 archives téléchargement ' '/run/media/luxcium/D:\ Archive locale/la-cie/Archives/Documents 14 septembre 2019/19 janvier 2019 archives téléchargement')
    (vucp '/run/media/luxcium/LaCie/Archives/Documents 14 septembre 2019/Archives 2018/Bureau 2018/Octobre 2018/tester les partiesséparées ' '/run/media/luxcium/D:\ Archive locale/la-cie/Archives/Documents 14 septembre 2019/Archives 2018/Bureau 2018/Octobre 2018/tester les partiesséparées')
    (vucp '/run/media/luxcium/LaCie/Archives/Documents 14 septembre 2019/Archives 2018/Ecma script print ' '/run/media/luxcium/D:\ Archive locale/la-cie/Archives/Documents 14 septembre 2019/Archives 2018/Ecma script print')
    (vucp '/run/media/luxcium/LaCie/Archives/Documents 14 septembre 2019/Bureau 2019/Janvier 2019/Transfert Canon 28 janvier 2019 ' '/run/media/luxcium/D:\ Archive locale/la-cie/Archives/Documents 14 septembre 2019/Bureau 2019/Janvier 2019/Transfert Canon 28 janvier 2019')
    (vucp '/run/media/luxcium/LaCie/Archives/Documents_/Copie du usb 64/COPIES DE LA CAPITALE ' '/run/media/luxcium/D:\ Archive locale/la-cie/Archives/Documents_/Copie du usb 64/COPIES DE LA CAPITALE')
    (vucp '/run/media/luxcium/LaCie/Archives/Documents/Backup server configurations ' '/run/media/luxcium/D:\ Archive locale/la-cie/Archives/Documents/Backup server configurations')
    (vucp '/run/media/luxcium/LaCie/Archives/Documents/BTC_OFFICIAL/TRANSACTIONS/jully 16 2017 18h48 L12713111B7KHHZ ' '/run/media/luxcium/D:\ Archive locale/la-cie/Archives/Documents/BTC_OFFICIAL/TRANSACTIONS/jully 16 2017 18h48 L12713111B7KHHZ')
    (vucp '/run/media/luxcium/LaCie/Archives/Documents/FEVRIER 2018/Relevés Bancaires Desjardins 2017 ' '/run/media/luxcium/D:\ Archive locale/la-cie/Archives/Documents/FEVRIER 2018/Relevés Bancaires Desjardins 2017')
    (vucp '/run/media/luxcium/LaCie/Archives/Old Desktops/2019-2020/Avril - Juin 2020/Mexique 2019 juin-juillet et David et Pâques 2020 ' '/run/media/luxcium/D:\ Archive locale/la-cie/Archives/Old Desktops/2019-2020/Avril - Juin 2020/Mexique 2019 juin-juillet et David et Pâques 2020')
    (vucp '/run/media/luxcium/LaCie/Archives/Old Desktops/2019-2020/Avril - Juin 2020/PHOTOS lundi-4 mai 2020 -- ma chambre ' '/run/media/luxcium/D:\ Archive locale/la-cie/Archives/Old Desktops/2019-2020/Avril - Juin 2020/PHOTOS lundi-4 mai 2020 -- ma chambre')
    (vucp '/run/media/luxcium/LaCie/Archives/Old Desktops/Bureau Fevrier 2017/offline ' '/run/media/luxcium/D:\ Archive locale/la-cie/Archives/Old Desktops/Bureau Fevrier 2017/offline')
    (vucp '/run/media/luxcium/LaCie/Backup Traktor/TRAKTOR PRO/Traktor 2.5 Remix Deck Content/Smells Like Flowers ' '/run/media/luxcium/D:\ Archive locale/la-cie/Backup Traktor/TRAKTOR PRO/Traktor 2.5 Remix Deck Content/Smells Like Flowers')
    (vucp '/run/media/luxcium/LaCie/Music Production/Ableton Files/Ableton Files ' '/run/media/luxcium/D:\ Archive locale/la-cie/Music Production/Ableton Files/Ableton Files')
    (vucp '/run/media/luxcium/LaCie/Music Production/Ableton Files/Ableton Final/My Sagala Way (Original Version) by Self_Sab0tage (Exclusive version for Seven Island Recordings c:o Premier Muzik International Corp.) ' '/run/media/luxcium/D:\ Archive locale/la-cie/Music Production/Ableton Files/Ableton Final/My Sagala Way (Original Version) by Self_Sab0tage (Exclusive version for Seven Island Recordings c:o Premier Muzik International Corp.)')
    (vucp '/run/media/luxcium/LaCie/Music Production/Controlers and devices/Maschine Mk2 ' '/run/media/luxcium/D:\ Archive locale/la-cie/Music Production/Controlers and devices/Maschine Mk2')
    (vucp '/run/media/luxcium/LaCie/Music Production/DJ MUSIC/5 Years Of Mau5 Cd 1 ' '/run/media/luxcium/D:\ Archive locale/la-cie/Music Production/DJ MUSIC/5 Years Of Mau5 Cd 1')
    (vucp '/run/media/luxcium/LaCie/Music Production/DJ MUSIC/5 Years Of Mouse Cd 2 ' '/run/media/luxcium/D:\ Archive locale/la-cie/Music Production/DJ MUSIC/5 Years Of Mouse Cd 2')
    (vucp '/run/media/luxcium/LaCie/OPEN HOUSE PRODUCTIONS/Logos etc/15 Jan 2016/Photos de l'\''évenement ' '/run/media/luxcium/D:\ Archive locale/la-cie/OPEN HOUSE PRODUCTIONS/Logos etc/15 Jan 2016/Photos de l'\''évenement')
    (vucp '/run/media/luxcium/LaCie/PhotosEtVideos/depuis mexico jusqu'\''au 28 octobre 2018 ' '/run/media/luxcium/D:\ Archive locale/la-cie/PhotosEtVideos/depuis mexico jusqu'\''au 28 octobre 2018')
    (vucp '/run/media/luxcium/LaCie/PhotosEtVideos/E0S-70D/moving files ' '/run/media/luxcium/D:\ Archive locale/la-cie/PhotosEtVideos/E0S-70D/moving files')
    (vucp '/run/media/luxcium/LaCie/PhotosEtVideos/Images du MAC Janvier 2019/December Dump data iPhone 7 will be iPhone 8 ' '/run/media/luxcium/D:\ Archive locale/la-cie/PhotosEtVideos/Images du MAC Janvier 2019/December Dump data iPhone 7 will be iPhone 8')
    (vucp '/run/media/luxcium/LaCie/PhotosEtVideos/Mexique 2019 juin-juillet et David et Pâques 2020 ' '/run/media/luxcium/D:\ Archive locale/la-cie/PhotosEtVideos/Mexique 2019 juin-juillet et David et Pâques 2020')
    (vucp '/run/media/luxcium/LaCie/Youtube Videos/[CODE NAMES] Projects/Archives/[Summer Forgotten]/14 juin 2017 [Summer Forgotten] (Jimmy'\''s idea) # 1/Adobe Premiere Pro Captured Audio/walking hauteville ' '/run/media/luxcium/D:\ Archive locale/la-cie/Youtube Videos/[CODE NAMES] Projects/Archives/[Summer Forgotten]/14 juin 2017 [Summer Forgotten] (Jimmy'\''s idea) # 1/Adobe Premiere Pro Captured Audio/walking hauteville')
    (vucp '/run/media/luxcium/LaCie/Youtube Videos/Archives/Premiere Pro SDXC v0.01/Archives/Inbox/a new test ' '/run/media/luxcium/D:\ Archive locale/la-cie/Youtube Videos/Archives/Premiere Pro SDXC v0.01/Archives/Inbox/a new test')
    (vucp '/run/media/luxcium/LaCie/Youtube Videos/Archives/Youtube/Archives/dossier sans titre/Keep it organise ' '/run/media/luxcium/D:\ Archive locale/la-cie/Youtube Videos/Archives/Youtube/Archives/dossier sans titre/Keep it organise')
    (vucp '/run/media/luxcium/LaCie/Youtube Videos/Bibliotheque/David et moi dans le lit ' '/run/media/luxcium/D:\ Archive locale/la-cie/Youtube Videos/Bibliotheque/David et moi dans le lit')
  ) 1>>/home/luxcium/ahmyzsh/vucp-lacie1-renamed-dirs-f.txt 2>>/home/luxcium/ahmyzsh/vucp-lacie2-renamed-dirs-f.txt
}

## '/run/media/luxcium/LaCie/Music Production/Ableton Files/Ableton Files /default ableton Project/Icon'$'\r'
## '/run/media/luxcium/LaCie/Music Production/Ableton Files/Ableton Final/My Sagala Way (Original Version) by Self_Sab0tage (Exclusive version for Seven Island Recordings c:o Premier Muzik International Corp.)'
# (
#&   (vucp '/run/media/luxcium/LaCie/Archives/BACKUP 21 juillet 2018/Documents/Mai 2018/Fraudde lundi 7 mai 2018 /LocalBitcoins.com: Fastest and easiest way to buy and sell bitcoins.pdf' '/run/media/luxcium/D:\ Archive locale/la-cie/Archives/BACKUP 21 juillet 2018/Documents/Mai 2018/Fraudde lundi 7 mai 2018/LocalBitcoins.com-Fastest and easiest way to buy and sell bitcoins.pdf')
#&  (vucp '/run/media/luxcium/LaCie/Music Production/Ableton Files/Ableton Files /pure thecno Project/Audio Exports/Lazer Is For Life *Free Download*.aif' '/run/media/luxcium/D:\ Archive locale/la-cie/Music Production/Ableton Files/Ableton Files/pure thecno Project/Audio Exports/Lazer Is For Life-Free Download.aif')
#  (vucp '/run/media/luxcium/LaCie/Music Production/Ableton Files/Ableton Files /default ableton Project/Icon'$'\r' '/run/media/luxcium/D:\ Archive locale/la-cie/Music Production/Ableton Files/Ableton Files/default ableton Project/Icon')
#  (vucp '/run/media/luxcium/LaCie/Music Production/Ableton Files/Ableton Files /Default set  Project/Icon'$'\r' '/run/media/luxcium/D:\ Archive locale/la-cie/Music Production/Ableton Files/Ableton Files/Default set Project/Icon')
#  (vucp '/run/media/luxcium/LaCie/Music Production/Ableton Files/Ableton Files /Barbara/2 Unlimited - No Limit Project/Icon'$'\r' '/run/media/luxcium/D:\ Archive locale/la-cie/Music Production/Ableton Files/Ableton Files/Barbara/2 Unlimited - No Limit Project/Icon')
#  (vucp '/run/media/luxcium/LaCie/Music Production/Ableton Files/Ableton Files /first track Project/Icon'$'\r' '/run/media/luxcium/D:\ Archive locale/la-cie/Music Production/Ableton Files/Ableton Files/first track Project/Icon')
#  (vucp '/run/media/luxcium/LaCie/Music Production/Ableton Files/Ableton Files /my deap house one  Project/Icon'$'\r' '/run/media/luxcium/D:\ Archive locale/la-cie/Music Production/Ableton Files/Ableton Files/my deap house one Project/Icon')
#  (vucp '/run/media/luxcium/LaCie/Music Production/Ableton Files/Ableton Files /MyWorkInProgress Project/Icon'$'\r' '/run/media/luxcium/D:\ Archive locale/la-cie/Music Production/Ableton Files/Ableton Files/MyWorkInProgress Project/Icon')
#  (vucp '/run/media/luxcium/LaCie/Music Production/Ableton Files/Ableton Files /September Project/Icon'$'\r' '/run/media/luxcium/D:\ Archive locale/la-cie/Music Production/Ableton Files/Ableton Files/September Project/Icon')
# ) 1>>/home/luxcium/ahmyzsh/vucp-lacie1-renamed-files-g.txt 2>>/home/luxcium/ahmyzsh/vucp-lacie2-renamed-files-g.txt

# '/run/media/luxcium/LaCie/Archives/BACKUP 21 juillet 2018/Documents/Mai 2018/Fraudde lundi 7 mai 2018 /LocalBitcoins.com: Fastest and easiest way to buy and sell bitcoins.pdf'
## cp: impossible de créer le répertoire
## /run/media/luxcium/LaCie/

# (vucp '/run/media/luxcium/LaCie/Archives/Documents 14 septembre 2019/19 janvier 2019 archives téléchargement/janvier 2019 ' '/run/media/luxcium/D:\ Archive locale/la-cie/Archives/Documents 14 septembre 2019/19 janvier 2019 archives téléchargement/janvier 2019') 1>>/home/luxcium/ahmyzsh/vucp-lacie1-renamed-dirs-d.txt 2>>/home/luxcium/ahmyzsh/vucp-lacie2-renamed-dirs-d.txt
# (vucp '/run/media/luxcium/LaCie/Music Production/Ableton Files/Ableton Final/My Sagala Way (Original Version) by Self_Sab0tage (Exclusive version for Seven Island Recordings c:o Premier Muzik International Corp.)' '/run/media/luxcium/D:\ Archive locale/la-cie/Music Production/Ableton Files/Ableton Final/My-Sagala-Way-Original-Exclusive-versionfor-SevenIslandRecordings-c.o.-Premier-Muzik-Intl-Corp') 1>>/home/luxcium/ahmyzsh/vucp-lacie1-renamed-dirs-e.txt 2>>/home/luxcium/ahmyzsh/vucp-lacie2-renamed-dirs-e.txt

# vrmf '/run/media/luxcium/D:\ Archive locale/la-cie/Archives/09-septembre-2019/Images folder/photos de josmar 2019' &
# vrmf '/run/media/luxcium/D:\ Archive locale/la-cie/Archives/avril-juin 2020/Mexique 2019 juin-juillet et David et Pâques 2020' &
# vrmf '/run/media/luxcium/D:\ Archive locale/la-cie/Archives/avril-juin 2020/PHOTOS lundi-4 mai 2020 -- ma chambre' &
# vrmf '/run/media/luxcium/D:\ Archive locale/la-cie/Archives/BACKUP 21 juillet 2018/Documents/Kigston files march 2018' &
# vrmf '/run/media/luxcium/D:\ Archive locale/la-cie/Archives/BACKUP 21 juillet 2018/Documents/Lettres à maitre Gallichan' &
# vrmf '/run/media/luxcium/D:\ Archive locale/la-cie/Archives/BACKUP 21 juillet 2018/Documents/Mai 2018/Fraudde lundi 7 mai 2018' &
# vrmf '/run/media/luxcium/D:\ Archive locale/la-cie/Archives/BACKUP 21 juillet 2018/LUXCIUM 2/setup/bash/last' &
# vrmf '/run/media/luxcium/D:\ Archive locale/la-cie/Archives/Books/Audio  Books/Persuasion IQ' &
# vrmf '/run/media/luxcium/D:\ Archive locale/la-cie/Archives/Documents 14 septembre 2019/19 janvier 2019 archives téléchargement' &
# vrmf '/run/media/luxcium/D:\ Archive locale/la-cie/Archives/Documents 14 septembre 2019/Archives 2018/Bureau 2018/Octobre 2018/tester les partiesséparées' &
# vrmf '/run/media/luxcium/D:\ Archive locale/la-cie/Archives/Documents 14 septembre 2019/Archives 2018/Ecma script print' &
# vrmf '/run/media/luxcium/D:\ Archive locale/la-cie/Archives/Documents 14 septembre 2019/Bureau 2019/Janvier 2019/Transfert Canon 28 janvier 2019' &
# vrmf '/run/media/luxcium/D:\ Archive locale/la-cie/Archives/Documents_/Copie du usb 64/COPIES DE LA CAPITALE' &
# vrmf '/run/media/luxcium/D:\ Archive locale/la-cie/Archives/Documents/Backup server configurations' &
# vrmf '/run/media/luxcium/D:\ Archive locale/la-cie/Archives/Documents/BTC_OFFICIAL/TRANSACTIONS/jully 16 2017 18h48 L12713111B7KHHZ' &
# vrmf '/run/media/luxcium/D:\ Archive locale/la-cie/Archives/Documents/FEVRIER 2018/Relevés Bancaires Desjardins 2017' &
# vrmf '/run/media/luxcium/D:\ Archive locale/la-cie/Archives/Old Desktops/2019-2020/Avril - Juin 2020/Mexique 2019 juin-juillet et David et Pâques 2020' &
# vrmf '/run/media/luxcium/D:\ Archive locale/la-cie/Archives/Old Desktops/2019-2020/Avril - Juin 2020/PHOTOS lundi-4 mai 2020 -- ma chambre' &
# vrmf '/run/media/luxcium/D:\ Archive locale/la-cie/Archives/Old Desktops/Bureau Fevrier 2017/offline' &
# vrmf '/run/media/luxcium/D:\ Archive locale/la-cie/Backup Traktor/TRAKTOR PRO/Traktor 2.5 Remix Deck Content/Smells Like Flowers' &
# vrmf '/run/media/luxcium/D:\ Archive locale/la-cie/Music Production/Ableton Files/Ableton Files' &
# vrmf '/run/media/luxcium/D:\ Archive locale/la-cie/Music Production/Ableton Files/Ableton Final/My Sagala Way (Original Version) by Self_Sab0tage (Exclusive version for Seven Island Recordings c:o Premier Muzik International Corp.)' &
# vrmf '/run/media/luxcium/D:\ Archive locale/la-cie/Music Production/Controlers and devices/Maschine Mk2' &
# vrmf '/run/media/luxcium/D:\ Archive locale/la-cie/Music Production/DJ MUSIC/5 Years Of Mau5 Cd 1' &
# vrmf '/run/media/luxcium/D:\ Archive locale/la-cie/Music Production/DJ MUSIC/5 Years Of Mouse Cd 2' &
# vrmf '/run/media/luxcium/D:\ Archive locale/la-cie/OPEN HOUSE PRODUCTIONS/Logos etc/15 Jan 2016/Photos de l'\''évenement' &
# vrmf '/run/media/luxcium/D:\ Archive locale/la-cie/PhotosEtVideos/depuis mexico jusqu'\''au 28 octobre 2018' &
# vrmf '/run/media/luxcium/D:\ Archive locale/la-cie/PhotosEtVideos/E0S-70D/moving files' &
# vrmf '/run/media/luxcium/D:\ Archive locale/la-cie/PhotosEtVideos/Images du MAC Janvier 2019/December Dump data iPhone 7 will be iPhone 8' &
# vrmf '/run/media/luxcium/D:\ Archive locale/la-cie/PhotosEtVideos/Mexique 2019 juin-juillet et David et Pâques 2020' &
# vrmf '/run/media/luxcium/D:\ Archive locale/la-cie/Youtube Videos/[CODE NAMES] Projects/Archives/[Summer Forgotten]/14 juin 2017 [Summer Forgotten] (Jimmy'\''s idea) # 1/Adobe Premiere Pro Captured Audio/walking hauteville' &
# vrmf '/run/media/luxcium/D:\ Archive locale/la-cie/Youtube Videos/Archives/Premiere Pro SDXC v0.01/Archives/Inbox/a new test' &
# vrmf '/run/media/luxcium/D:\ Archive locale/la-cie/Youtube Videos/Archives/Youtube/Archives/dossier sans titre/Keep it organise' &
# vrmf '/run/media/luxcium/D:\ Archive locale/la-cie/Youtube Videos/Bibliotheque/David et moi dans le lit' &
# cp: impossible de créer le répertoire '/run/media/luxcium/D:\ Archive locale/la-cie/NeB_4o1 Corp.': Argument invalide
# '/run/media/luxcium/LaCie/Ableton/Live Recordings/Temp Project/Icon'$'\r' -> '/run/media/luxcium/D:\ Archive locale/la-cie/Ableton/Live Recordings/Temp Project/Icon'$'\r'
# cp: impossible de créer le fichier standard '/run/media/luxcium/D:\ Archive locale/la-cie/Ableton/Live Recordings/Temp Project/Icon'$'\r': Argument invalide
# '/run/media/luxcium/LaCie/Ableton/Live Recordings/Temp-1 Project/Icon'$'\r' -> '/run/media/luxcium/D:\ Archive locale/la-cie/Ableton/Live Recordings/Temp-1 Project/Icon'$'\r'
# cp: impossible de créer le fichier standard '/run/media/luxcium/D:\ Archive locale/la-cie/Ableton/Live Recordings/Temp-1 Project/Icon'$'\r': Argument invalide
# '/run/media/luxcium/LaCie/Ableton/User Library/Icon'$'\r' -> '/run/media/luxcium/D:\ Archive locale/la-cie/Ableton/User Library/Icon'$'\r'
# cp: impossible de créer le fichier standard '/run/media/luxcium/D:\ Archive locale/la-cie/Ableton/User Library/Icon'$'\r': Argument invalide
# '/run/media/luxcium/LaCie/Ableton/User Library/Samples/Imported/What is Self Sabotage Behavior?.mp3' -> '/run/media/luxcium/D:\ Archive locale/la-cie/Ableton/User Library/Samples/Imported/What is Self Sabotage Behavior?.mp3'
# cp: impossible de créer le fichier standard '/run/media/luxcium/D:\ Archive locale/la-cie/Ableton/User Library/Samples/Imported/What is Self Sabotage Behavior?.mp3': Argument invalide
# '/run/media/luxcium/LaCie/Ableton/User Library/Samples/Imported/What is Self Sabotage Behavior?.mp3.asd' -> '/run/media/luxcium/D:\ Archive locale/la-cie/Ableton/User Library/Samples/Imported/What is Self Sabotage Behavior?.mp3.asd'
# cp: impossible de créer le fichier standard '/run/media/luxcium/D:\ Archive locale/la-cie/Ableton/User Library/Samples/Imported/What is Self Sabotage Behavior?.mp3.asd': Argument invalide
# '/run/media/luxcium/LaCie/Ableton/Sythétiseurs/Golthor Project/Icon'$'\r' -> '/run/media/luxcium/D:\ Archive locale/la-cie/Ableton/Sythétiseurs/Golthor Project/Icon'$'\r'
# cp: impossible de créer le fichier standard '/run/media/luxcium/D:\ Archive locale/la-cie/Ableton/Sythétiseurs/Golthor Project/Icon'$'\r': Argument invalide
# '/run/media/luxcium/D:\ Archive locale/la-cie/Backups.backupdb/NeB_4o1'\''s MacBook Pro/2018-07-21-075629.inProgress/3667D27F-40A3-4D09-BCA1-21A64CED87D8/NeB_4o1'\''s HD/Developer/NVIDIA/CUDA-9.0/jre/Contents/MacOS/libjli.dylib' supprimé
# '/run/media/luxcium/D:\ Archive locale/la-cie/Backups.backupdb/NeB_4o1'\''s MacBook Pro/2018-07-21-075629.inProgress/3667D27F-40A3-4D09-BCA1-21A64CED87D8/NeB_4o1'\''s HD/Developer/NVIDIA/CUDA-9.0/bin/computeprof' supprimé
