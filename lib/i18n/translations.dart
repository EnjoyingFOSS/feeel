// Copyright (C) 2019-2022 Miroslav Mazel
//
// This file is part of Feeel.
//
// Feeel is free software: you can redistribute it and/or modify
// it under the terms of the GNU Affero General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version. As an additional permission under
// section 7, you are allowed to distribute the software through an app
// store, even if that store has restrictive terms and conditions that
// are incompatible with the AGPL, provided that the source is also
// available under the AGPL with or without this permission through a
// channel without those restrictive terms and conditions.
//
// Feeel is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Affero General Public License for more details.
//
// You should have received a copy of the GNU Affero General Public License
// along with Feeel.  If not, see <http://www.gnu.org/licenses/>.
//
// Some of the strings here use the CC BY-SA license rather than the AGPL.
// For more info, see the LICENSE file in Feeel's topmost directory.

import 'package:i18n_extension/i18n_extension.dart';

extension Localization on String {
  static var t = Translations("en") +
      {
        "zh": """完成了！""",
        "tr": """Başardınız!""",
        "nl": """Goed gedaan!""",
        "de": """Du hast es geschafft!""",
        "ru": """Молодец!""",
        "pt": """Você conseguiu!""",
        "en": """You did it!""",
        "it": """Ce l'hai fatta!""",
        "hr": """Uspio/uspjela si!""",
        "fr": """Vous avez réussi !""",
        "el": """Τα κατάφερες!""",
        "cs": """Dobrá práce!""",
        "id": """Kamu berhasil!""",
        "es": """¡Lo ha conseguido!""",
        "ar": """أنت فعلت ذلك!""",
      } +
      {
        "zh": """下 一个：""",
        "tr": """Sonraki:""",
        "nl": """Hierna:""",
        "de": """Als nächstes:""",
        "ru": """Далее:""",
        "pt": """Próximo:""",
        "en": """Next up:""",
        "it": """Preparati per:""",
        "hr": """Sljedeće:""",
        "fr": """Ensuite :""",
        "el": """Επόμενη:""",
        "cs": """Další cvik:""",
        "id": """Berikutnya:""",
        "es": """A continuación:""",
        "ar": """التالي:""",
      } +
      {
        "zh": """准备！""",
        "tr": """Hazır olun!""",
        "nl": """Get ready!""",
        "de": """Mach dich bereit!""",
        "ru": """Get ready!""",
        "pt": """Get ready!""",
        "en": """Get ready!""",
        "it": """Preparati!""",
        "hr": """Pripremi se!""",
        "fr": """Préparez-vous !""",
        "el": """Ετοιμαστείτε!""",
        "cs": """Připravte se!""",
        "id": """Get ready!""",
        "es": """Get ready!""",
        "ar": """استعد!""",
      } +
      {
        "zh": """开始吧！第一个：%s""",
        "tr": """Haydi başlayalım. Birinci: %s""",
        "nl": """Tijd om aan de slag te gaan! Allereerst: %s""",
        "de": """Auf gehts zur ersten Übung: %s""",
        "ru": """Поехали! Сначала: %s""",
        "pt": """Vamos lá! Começando com: %s""",
        "en": """Let's go! First up: %s""",
        "it": """Si parte! Primo esercizio: %s""",
        "hr": """Počni! Prva vježba: %s""",
        "fr": """Allons-y ! Première étape : %s""",
        "el": """Ξεκινάμε! Πρώτη άσκηση: %s""",
        "cs": """Pojďme na to! První cvik: %s""",
        "id": """Ayo! Pertama: %s""",
        "es": """¡Vamos! Primer paso: %s""",
        "ar": """لنذهب! أولا: %s""",
      } +
      {
        "zh": """剩余 %d 秒""",
        "tr": """%d saniye kaldı""",
        "nl": """Nog %d seconden te gaan""",
        "de": """%d Sekunden übrig""",
        "ru": """Осталось: %d секунд""",
        "pt": """%d segundos restantes""",
        "en": """%d seconds left""",
        "it": """Mancano %d secondi""",
        "hr": """još %d s""",
        "fr": """Encore %d secondes""",
        "el": """απομένουν %d δευτερόλεπτα""",
        "cs": """Zbývá %d vteřin""",
        "id": """%d detik tersisa""",
        "es": """%d segundos restante""",
        "ar": """%d ثانية متبقية""",
      } +
      {
        "zh": """休息！""",
        "tr": """Mola zamanı!""",
        "nl": """Tijd voor een pauze!""",
        "de": """Pause!""",
        "ru": """Пауза!""",
        "pt": """Pausa!""",
        "en": """Break!""",
        "it": """Pausa!""",
        "hr": """Odmor!""",
        "fr": """Pause !""",
        "el": """Διάλειμμα!""",
        "cs": """Pauza!""",
        "id": """Istirahat!""",
        "es": """¡Descanso!""",
        "ar": """استراحة!""",
      } +
      {
        "zh": """点击屏幕，操控软件""",
        "tr": """Denetimler için dokunun""",
        "nl": """Druk om bediening te tonen""",
        "de": """Berühren für die Steuerung""",
        "ru": """Нажатие для управления""",
        "pt": """Toque para os controles""",
        "en": """Tap for controls""",
        "it": """Tocca per i controlli""",
        "hr": """Dodirni za prikaz kontrola""",
        "fr": """Appuyez pour les commandes""",
        "el": """Πατήστε για κουμπιά ελέγχου""",
        "cs": """Ťukněte pro ovládání""",
        "id": """Ketuk untuk kontrol""",
        "es": """Tocar para controles""",
        "ar": """اضغط على عناصر التحكم""",
      } +
      {
        "zh": """图片缺失""",
        "tr": """Resim eksik""",
        "nl": """Afbeelding ontbreekt""",
        "de": """Bild fehlt""",
        "ru": """Изображение отсутствует""",
        "pt": """Falta imagem""",
        "en": """Image missing""",
        "it": """Immagine mancante""",
        "hr": """Nedostaje slika""",
        "fr": """Images manquantes""",
        "el": """Η εικόνα απουσιάζει""",
        "cs": """Chybí fotka""",
        "id": """Gambar hilang""",
        "es": """Imagen faltante""",
        "ar": """الصورة مفقودة""",
      } +
      {
        "zh": """锻炼组合标题""",
        "tr": """Antrenman başlığı""",
        "nl": """Naam van workout""",
        "de": """Name des Trainings""",
        "ru": """Название тренировки""",
        "pt": """Nome do treino""",
        "en": """Workout title""",
        "it": """Titolo dell'esercizio""",
        "hr": """Naziv treninga""",
        "fr": """Titre de l’exercice""",
        "el": """Τίτλος προπόνησης""",
        "cs": """Název tréninku""",
        "id": """Judul latihan""",
        "es": """Título del entrenamiento""",
        "ar": """عنوان التمرين""",
      } +
      {
        "zh": """做你自己的教练!""",
        "tr": """Kendi koçunuz olun!""",
        "nl": """Coach jezelf!""",
        "de": """Sei dein eigener Coach!""",
        "ru": """Ты сам себе тренер!""",
        "pt": """Seja seu próprio treinador!""",
        "en": """Be your own coach!""",
        "it": """Sii l'allenatore di te stesso!""",
        "hr": """Budi svoj vlastiti trener!""",
        "fr": """Soyez votre propre entraîneur !""",
        "el": """Γίνε προπονητής του εαυτού σου!""",
        "cs": """Buď vlastním trenérem!""",
        "id": """Jadilah pelatihmu sendiri!""",
        "es": """¡Se su propio entrenador!""",
        "ar": """كن مدربك الخاص!""",
      } +
      {
        "zh": """设计让你自己感觉最好的锻炼组合""",
        "tr": """Kendinizi en iyi hissettiren egzersizi tasarlayın""",
        "nl": """Ontwerp dé workout die voor jou prettig voelt""",
        "de": """Erstelle das Training, mit dem du dich am besten fühlst""",
        "ru": """Создай тренировку, удобную для вас""",
        "pt": """Monte o treino que te faça sentir o melhor""",
        "en": """Design the workout that makes you feel the best""",
        "it": """Progetta l'allenamento che ti fa sentire il migliore""",
        "hr": """Osmisli trening s kojim ćeš se osjećati najbolje""",
        "fr": """Concevez l’entraînement qui vous fait vous sentir le mieux""",
        "el": """Σχεδίασε την προπόνηση που σε κάνει να αισθάνεσαι καλύτερα""",
        "cs": """Navrhni si takový trénink, po kterém se budeš cítit nejlépe""",
        "id": """Rancang latihan yang membuatmu merasa yang terbaik""",
        "es": """Diseñe el entrenamiento que le sentirá mejor""",
        "ar": """قم بتصميم التمرين الذي يجعلك تشعر بشكل أفضل""",
      } +
      {
        "zh": """全身""",
        "tr": """Tüm vücut""",
        "nl": """Hele lichaam""",
        "de": """Ganzkörper""",
        "ru": """Все тело""",
        "pt": """Todo o corpo""",
        "en": """Full body""",
        "it": """Tutto il corpo""",
        "hr": """Cijelo tijelo""",
        "fr": """Tout le corps""",
        "el": """Πλήρες σώμα""",
        "cs": """Celé tělo""",
        "id": """Seluruh tubuh""",
        "es": """De cuerpo entero""",
        "ar": """كامل الجسم""",
      } +
      {
        "zh": """腿部""",
        "tr": """Bacaklar""",
        "nl": """Benen""",
        "de": """Beine""",
        "ru": """Ноги""",
        "pt": """Pernas""",
        "en": """Legs""",
        "it": """Gambe""",
        "hr": """Noge""",
        "fr": """Jambes""",
        "el": """Πόδια""",
        "cs": """Nohy""",
        "id": """Kaki""",
        "es": """Piernas""",
        "ar": """السيقان""",
      } +
      {
        "zh": """你在发光！""",
        "tr": """Parlıyorsunuz!""",
        "nl": """Je straalt!""",
        "de": """Du strahlst!""",
        "ru": """Вы сияете!""",
        "pt": """Você está brilhando!""",
        "en": """You're glowing!""",
        "it": """Stai splendendo!""",
        "hr": """Blistaš!""",
        "fr": """Vous êtes rayonnant·e !""",
        "el": """Λάμπεις!""",
        "cs": """Dobrá práce!""",
        "id": """Kamu bersinar!""",
        "es": """¡Estás brillando!""",
        "ar": """أنت متوهج!""",
      } +
      {
        "zh": """贡献""",
        "tr": """Katkıda bulunun""",
        "nl": """Deel je oefeningen met ons""",
        "de": """Beitragen""",
        "ru": """Поделиться упражнением""",
        "pt": """Contribua""",
        "en": """Contribute""",
        "it": """Contribuisci a un esercizio""",
        "hr": """Doprinesi""",
        "fr": """Contribuez""",
        "el": """Συνεισφορά""",
        "cs": """Přispěj nový cvik""",
        "id": """Berkontribusi""",
        "es": """Contribuir un ejercicio""",
        "ar": """مساهمة""",
      } +
      {
        "zh": """设置""",
        "tr": """Ayarlar""",
        "nl": """Instellingen""",
        "de": """Einstellungen""",
        "ru": """Настройки""",
        "pt": """Configurações""",
        "en": """Settings""",
        "it": """Impostazioni""",
        "hr": """Postavke""",
        "fr": """Paramètres""",
        "el": """Ρυθμίσεις""",
        "cs": """Nastavení""",
        "id": """Pengaturan""",
        "es": """Ajustes""",
        "ar": """الإعدادات""",
      } +
      {
        "zh": """请指定锻炼标题""",
        "tr": """Lütfen bir antrenman başlığı belirtin""",
        "nl": """Geef de workout een naam""",
        "de": """Bitte einen Namen für das Training eingeben""",
        "ru": """Укажите название тренировки""",
        "pt": """Por favor especifique o nome do treino""",
        "en": """Please specify a workout title""",
        "it": """Indica un titolo all'allenamento""",
        "hr": """Odredi naslov treninga""",
        "fr": """Veuillez préciser un titre pour l’entraînement""",
        "el": """Παρακαλώ ορίστε ένα τίτλο προπόνησης""",
        "cs": """Prosím poskytněte název tréninku""",
        "id": """Tentukan judul latihan""",
        "es": """Por favor especifica el título del entrenamiento""",
        "ar": """الرجاء تحديد عنوان التمرين""",
      } +
      {
        "zh": """请至少添加 1 个练习""",
        "tr": """Lütfen en az 1 egzersiz ekleyin""",
        "nl": """Voeg minimaal 1 oefening toe""",
        "de": """Bitte mindestens 1 Übung hinzufügen""",
        "ru": """Добавьте хотя бы одно упражнение""",
        "pt": """Por favor adicione ao menos um exercício""",
        "en": """Please add at least 1 exercise""",
        "it": """Aggiungi almeno un esercizio""",
        "hr": """Dadaj barem jednu vježbu""",
        "fr": """Veuillez ajouter au moins 1 exercice""",
        "el": """Παρακαλώ προσθέστε τουλάχιστον 1 άσκηση""",
        "cs": """Prosím přidejte alespoň 1 cvik""",
        "id": """Harap tambahkan setidaknya 1 latihan""",
        "es": """Por favor añade al menos 1 ejercicio""",
        "ar": """يرجى إضافة تمرين واحد على الأقل""",
      } +
      {
        "zh": """时长""",
        "tr": """Süre""",
        "nl": """Duur""",
        "de": """Dauer""",
        "ru": """Продолжительность""",
        "pt": """Duração""",
        "en": """Duration""",
        "it": """Durata""",
        "hr": """Trajanje""",
        "fr": """Durée""",
        "el": """Διάρκεια""",
        "cs": """Délka""",
        "id": """Durasi""",
        "es": """Duración""",
        "ar": """المدة""",
      } +
      {
        "zh": """运动时长""",
        "tr": """Egzersiz süresi""",
        "nl": """Duur van oefening""",
        "de": """Übungsdauer""",
        "ru": """Продолжительность упражнения""",
        "pt": """Duração do exercício""",
        "en": """Exercise duration""",
        "it": """Durata esercizio""",
        "hr": """Trajanje vježbe""",
        "fr": """Durée de l’exercice""",
        "el": """Διάρκεια άσκησης""",
        "cs": """Délka cviku""",
        "id": """Durasi latihan""",
        "es": """Duración del ejercicio""",
        "ar": """مدة التمرين""",
      } +
      {
        "zh": """休息时长""",
        "tr": """Mola süresi""",
        "nl": """Duur van pauze""",
        "de": """Länge der Pause""",
        "ru": """Длительность перерыва""",
        "pt": """Duração da pausa""",
        "en": """Break duration""",
        "it": """Durata della pausa""",
        "hr": """Trajanje odmora""",
        "fr": """Durée de la pause""",
        "el": """Διάρκεια διαλείμματος""",
        "cs": """Délka přestávky""",
        "id": """Durasi istirahat""",
        "es": """Duración del descanso""",
        "ar": """مدة الاستراحة""",
      } +
      {
        "zh": """定制""",
        "tr": """Özel""",
        "nl": """Aangepast""",
        "de": """Benutzerdefiniert""",
        "ru": """Изменить длительность""",
        "pt": """Customizado""",
        "en": """Custom""",
        "it": """Personalizza""",
        "hr": """Prilagođeno""",
        "fr": """Personnaliser""",
        "el": """Προσαρμογή""",
        "cs": """Vlastní""",
        "id": """Kustom""",
        "es": """Personalizado""",
        "ar": """مخصص""",
      } +
      {
        "zh": """非数字""",
        "tr": """Sayısal olmayan""",
        "nl": """Niet-numeriek""",
        "de": """Nicht-numerisch""",
        "ru": """Не число""",
        "pt": """Não numérico""",
        "en": """Non-numeric""",
        "it": """Non-numerico""",
        "hr": """Nenumerički""",
        "fr": """Non numérique""",
        "el": """Μη-αριθμητικό""",
        "cs": """Není číslo""",
        "id": """Non-numerik""",
        "es": """No numérico""",
        "ar": """غير رقمي""",
      } +
      {
        "zh": """不是正数""",
        "tr": """Pozitif olmayan""",
        "nl": """Niet-positief""",
        "de": """Nicht-positive""",
        "ru": """Отрицательное""",
        "pt": """Não positivo""",
        "en": """Nonpositive""",
        "it": """Non positivo""",
        "hr": """Ne-pozitivno""",
        "fr": """Non positif""",
        "el": """Μη θετικό""",
        "cs": """Není kladné""",
        "id": """Nonpositif""",
        "es": """No positivo""",
        "ar": """غير إيجابي""",
      } +
      {
        "zh": """每日通知""",
        "tr": """Günlük bildirim""",
        "nl": """Dagelijkse herinnering""",
        "de": """Tägliche Benachrichtigung""",
        "ru": """Ежедневное уведомление""",
        "pt": """Notificação diária""",
        "en": """Daily notification""",
        "it": """Notifica giornaliera""",
        "hr": """Dnevno obavještavanje""",
        "fr": """Notification journalière""",
        "el": """Ημερήσια ειδοποίηση""",
        "cs": """Denní upozornění""",
        "id": """Pemberitahuan harian""",
        "es": """Notificaciones diarias""",
        "ar": """التنبيه اليومي""",
      } +
      {
        "zh": """每日提醒您锻炼身体""",
        "tr": """Antrenman yapmak için günlük bir hatırlatma""",
        "nl": """Wordt dagelijks herinnerd om een workout te doen""",
        "de": """Tägliche Trainingserinnerung""",
        "ru": """Ежедневное напоминание о тренировках""",
        "pt": """Um lembrete diário para fazer exercícios""",
        "en": """A daily reminder to work out""",
        "it": """Un promemoria quotidiano per allenarti""",
        "hr": """Dnevni podsjetnik za vježbanje""",
        "fr": """Un rappel quotidien pour s’entraîner""",
        "el": """Μια καθημερινή υπενθύμιση για την προπόνηση""",
        "cs": """Denní připomenutí jít cvičit""",
        "id": """Pengingat harian untuk berolahraga""",
        "es": """Un recordatorio para entrenar""",
        "ar": """تذكير يومي بالتمرين""",
      } +
      {
        "zh": """是时候穿上运动服了！""",
        "tr": """Antrenman kıyafetlerini giyme zamanı!""",
        "nl": """Tijd om je sportkleding aan te trekken!""",
        "de": """Zeit, sich Trainingskleidung anzuziehen!""",
        "ru": """Пора надеть спортивную одежду!""",
        "pt": """Hora de colocar roupas de treino!""",
        "en": """Time to put on workout clothes!""",
        "it": """È ora di indossare abiti da allenamento!""",
        "hr": """Vrijeme je da obučeš odjeću za vježbanje!""",
        "fr": """Il est temps de mettre des vêtements de sport !""",
        "el": """Ώρα να βάλεις τα ρούχα της προπόνησης!""",
        "cs": """Čas obléknout cvičební úbor!""",
        "id": """Waktunya memakai pakaian olahraga!""",
        "es": """¡Tiempo para llevar ropa de entrenamiento!""",
        "ar": """حان الوقت لارتداء ملابس التمرين!""",
      } +
      {
        "zh": """只需几分钟即可感觉神清气爽""",
        "tr": """Taze ve zinde hissetmek sadece birkaç dakikanızı alır""",
        "nl":
            """Het kost slechts een paar minuten van je tijd om je weer fris en fruitig te voelen""",
        "de":
            """Es dauert nur ein paar Minuten, um sich frisch und gesund zu fühlen""",
        "ru": """несколько минут, и вы почувствуете себя свежим и подтянутым""",
        "pt": """Leva apenas alguns minutos para se sentir fresco e em forma""",
        "en": """It takes just a few minutes to feel fresh and fit""",
        "it": """Bastano pochi minuti per sentirsi freschi e in forma""",
        "hr":
            """Potrebno je samo nekoliko minuta da bi se čovjek osjećao svježe i u dobroj formi""",
        "fr":
            """Il ne faut que quelques minutes pour se sentir frais et en forme""",
        "el":
            """Χρειάζεται μόνο λίγα λεπτά για να νιώσετε φρέσκοι και σε φόρμα""",
        "cs": """Stačí jen pár minut, abyste se cítil/a svěží a fit""",
        "id": """Hanya perlu beberapa menit untuk merasa segar dan bugar""",
        "es":
            """Este toma solo unos minutos para refrescarse y estar en forma""",
        "ar": """يستغرق الأمر بضع دقائق فقط لتشعر بالانتعاش واللياقة""",
      } +
      {
        "zh": """每日提醒""",
        "tr": """Günlük hatırlatma""",
        "nl": """Dagelijkse herinnering""",
        "de": """Tägliche Erinnerung""",
        "ru": """Ежедневное напоминание""",
        "pt": """Lembrete diário""",
        "en": """Daily reminder""",
        "it": """Promemoria giornaliero""",
        "hr": """Dnevni podsjetnik""",
        "fr": """Rappel quotidien""",
        "el": """Ημερήσια υπενθύμιση""",
        "cs": """Denní upomenutí""",
        "id": """Pengingat harian""",
        "es": """Recordatorio diario""",
        "ar": """التذكير اليومي""",
      } +
      {
        "zh": """没有拍照权限，不能拍照""",
        "tr": """Kamera izni olmadan fotoğraf çekilemez""",
        "nl": """Zonder camerarechten kunnen er geen foto's worden gemaakt""",
        "de":
            """Um Fotos aufnehmen zu können, werden Berechtigungen für die Kamera benötigt""",
        "ru": """Нужно разрешение на использование камеры""",
        "pt": """Não posso tirar fotos sem a permissão de câmera""",
        "en": """Can't take photos without camera permission""",
        "it":
            """Non è possibile scattare foto senza il permesso della fotocamera""",
        "hr": """Snimanje fotografija nije moguće bez dozvole za kameru""",
        "fr":
            """Impossible de prendre des photos sans l’autorisation de l’appareil photo""",
        "el": """Δεν μπορούν να ληφθούν φωτογραφίες χωρίς άδεια κάμερας""",
        "cs": """Nelze fotografovat bez povolení fotoaparátu""",
        "id": """Tidak dapat mengambil foto tanpa izin kamera""",
        "es": """No se puede tomar fotos sin el permiso de cámara""",
        "ar": """لا يمكن التقاط الصور بدون إذن الكاميرا""",
      } +
      {
        "zh": """通知时间""",
        "tr": """Bildirim zamanı""",
        "nl": """Tijdstip""",
        "de": """Benachrichtigungszeitpunkt""",
        "ru": """Повтор уведомления""",
        "pt": """Tempo de notificação""",
        "en": """Notification time""",
        "it": """Tempo di notifica""",
        "hr": """Modus obavještavanja""",
        "fr": """Heure de la notification""",
        "el": """Ώρα ειδοποίησης""",
        "cs": """Čas upozornění""",
        "id": """Waktu pemberitahuan""",
        "es": """Hora de notificación""",
        "ar": """وقت التنبيه""",
      } +
      {
        "zh": """先加个练习""",
        "tr": """Önce bir egzersiz ekleyin""",
        "nl": """Voeg eerst een oefening toe""",
        "de": """Zuerst eine Übung hinzufügen""",
        "ru": """Сначала добавьте упражнение""",
        "pt": """Adicione um exercício primeiro""",
        "en": """Add an exercise first""",
        "it": """Prima aggiungi un esercizio""",
        "hr": """Najprije dodaj vježbu""",
        "fr": """Ajoutez d’abord un exercice""",
        "el": """Προσθέστε πρώτα μια άσκηση""",
        "cs": """Nejprve musíte přidat cvičení""",
        "id": """Tambahkan latihan terlebih dahulu""",
        "es": """Añadir un ejercicio primero""",
        "ar": """إضافة تمرين أولا""",
      } +
      {
        "zh": """关于Feeel""",
        "tr": """Feeel hakkında""",
        "nl": """Over Feeel""",
        "de": """Über Feeel""",
        "ru": """О Feeel""",
        "pt": """Sobre Feeel""",
        "en": """About Feeel""",
        "it": """Informazioni su Feeel""",
        "hr": """O programu Feeel""",
        "fr": """À propos de Feeel""",
        "el": """Περί του Feeel""",
        "cs": """O Feeel""",
        "id": """Tentang Feeel""",
        "es": """Acerca de Feeel""",
        "ar": """حول تطبيق Feeel""",
      } +
      {
        "zh": """一款尊重您的隐私的居家锻炼开源应用""",
        "tr":
            """Gizliliğinize saygı duyan açık kaynaklı bir evde antrenman uygulaması""",
        "nl": """Een open source workout-app die je privacy respecteert""",
        "de":
            """Eine quelloffene Workout-Anwendung für zu Hause, die deine Privatsphäre respektiert""",
        "ru":
            """Приложение для домашних тренировок с открытым исходным кодом, которое уважает вашу частную жизнь""",
        "pt":
            """Um aplicativo de código aberto para treinar em casa que respeita a sua privacidade""",
        "en": """An open-source home workout app that respects your privacy""",
        "it":
            """Un'applicazione di allenamento a casa con codice aperto che rispetta la tua riservatezza""",
        "hr":
            """Program otvorenog koda za treniranje kod kuće koji poštuje tvoju privatnost""",
        "fr":
            """Une application d’exercice à domicile à code source ouvert qui respecte votre vie privée""",
        "el":
            """Μια εφαρμογή ανοιχτού λογισμικού για σπιτική προπόνηση, η οποία σέβεται την ιδιωτικότητα σας""",
        "cs":
            """Open-source fitness aplikace, která respektuje vaše soukromí""",
        "id":
            """Aplikasi olahraga dari rumah open-source yang menghormati privasi Anda""",
        "es":
            """Una app de rutinas de ejercicio de código abierto que respeta tu privacidad tu privacidad""",
        "ar": """تطبيق تمرين منزلي مفتوح المصدر يحترم خصوصيتك""",
      } +
      {
        "zh": """自定义时长（秒）""",
        "tr": """Özel süre (sn.)""",
        "nl": """Aangepaste duur (in sec.)""",
        "de": """Benutzerdefinierte Dauer (Sek.)""",
        "ru": """Индивидуальная продолжительность (сек.)""",
        "pt": """Duração personalizada (s.)""",
        "en": """Custom duration (s.)""",
        "it": """Durata personalizzata (s.)""",
        "hr": """Prilagođeno trajanje (s.)""",
        "fr": """Durée personnalisée (s.)""",
        "el": """Προσαρμοσμένη διάρκεια (s.)""",
        "cs": """Vlastní délka (s.)""",
        "id": """Durasi kustom (s.)""",
        "es": """Duración personalizada (s.)""",
        "ar": """مدة مخصصة (s.)""",
      } +
      {
        "zh": """放弃修改吗？""",
        "tr": """Değişikliklerden vazgeçilsin mi?""",
        "nl": """Wijzigingen verwerpen?""",
        "de": """Änderungen verwerfen?""",
        "ru": """Отменить изменения?""",
        "pt": """Descarte alterações?""",
        "en": """Discard changes?""",
        "it": """Abbandonare le modifiche?""",
        "hr": """Odbaciti promjene?""",
        "fr": """Abandonner les modifications ?""",
        "el": """Απόρριψη αλλαγών;""",
        "cs": """Zahodit změny?""",
        "id": """Batalkan perubahan?""",
        "es": """¿Descartar cambios?""",
        "ar": """تجاهل التغييرات؟""",
      } +
      {
        "zh": """主题""",
        "tr": """Tema""",
        "nl": """Thema""",
        "de": """Farbschema""",
        "ru": """Тема""",
        "pt": """Tema""",
        "en": """Theme""",
        "it": """Tema""",
        "hr": """Tema""",
        "fr": """Thème""",
        "el": """Θέμα""",
        "cs": """Vzhled""",
        "id": """Tema""",
        "es": """Tema""",
        "ar": """السمة""",
      } +
      {
        "zh": """系统默认""",
        "tr": """Sistem öntanımlı değeri""",
        "nl": """Systeemthema""",
        "de": """Systemstandard""",
        "ru": """Системная""",
        "pt": """Padrão do sistema""",
        "en": """System default""",
        "it": """Predefinito del sistema""",
        "hr": """Standard sustava""",
        "fr": """Par défaut du système""",
        "el": """Προκαθορισμένο συστήματος""",
        "cs": """Dle systému""",
        "id": """Default sistem""",
        "es": """Por defecto""",
        "ar": """افتراضيات النظام""",
      } +
      {
        "zh": """亮色""",
        "tr": """Açık""",
        "nl": """Licht""",
        "de": """Hell""",
        "ru": """Светлая""",
        "pt": """Luz""",
        "en": """Light""",
        "it": """Chiaro""",
        "hr": """Svijetla""",
        "fr": """Clair""",
        "el": """Ανοιχτό""",
        "cs": """Světlý""",
        "id": """Cerah""",
        "es": """Claro""",
        "ar": """مضيء""",
      } +
      {
        "zh": """暗色""",
        "tr": """Koyu""",
        "nl": """Donker""",
        "de": """Dunkel""",
        "ru": """Темная""",
        "pt": """Escuro""",
        "en": """Dark""",
        "it": """Scuro""",
        "hr": """Tamna""",
        "fr": """Sombre""",
        "el": """Σκούρο""",
        "cs": """Tmavý""",
        "id": """Gelap""",
        "es": """Oscuro""",
        "ar": """داكن""",
      } +
      {
        "zh": """导出锻炼的自选组合""",
        "tr": """Özel antrenmanları dışa aktar""",
        "nl": """Export custom workouts""",
        "de": """Benutzerdefinierte Trainings exportieren""",
        "ru": """Export custom workouts""",
        "pt": """Export custom workouts""",
        "en": """Export custom workouts""",
        "it": """Esporta allenamenti personalizzati""",
        "hr": """Izvezi prilagođene treninge""",
        "fr": """Exporter les entraînements personnalisés""",
        "el": """Εξαγωγή προσαρμοσμένων προπονήσεων""",
        "cs": """Exportovat vlastní tréninky""",
        "id": """Export custom workouts""",
        "es": """Export custom workouts""",
        "ar": """تصدير التدريبات المخصصة""",
      } +
      {
        "zh": """导入锻炼组合""",
        "tr": """Antrenmanları içe aktar""",
        "nl": """Import workouts""",
        "de": """Trainings importieren""",
        "ru": """Import workouts""",
        "pt": """Import workouts""",
        "en": """Import workouts""",
        "it": """Importa allenamenti""",
        "hr": """Uvezi treninge""",
        "fr": """Importer des entraînements""",
        "el": """Εισαγωγή προπονήσεων""",
        "cs": """Importovat tréninky""",
        "id": """Import workouts""",
        "es": """Import workouts""",
        "ar": """استيراد التدريبات""",
      } +
      {
        "zh": """尚未有锻炼组合""",
        "tr": """Herhangi bir özel antrenmanınız yok""",
        "nl": """You don't have any custom workouts""",
        "de": """Sie haben keine benutzerdefinierten Trainings""",
        "ru": """You don't have any custom workouts""",
        "pt": """You don't have any custom workouts""",
        "en": """You don't have any custom workouts""",
        "it": """Non hai allenamenti personalizzati""",
        "hr": """Nemaš prilagođene treninge""",
        "fr": """Vous n'avez pas d'entraînement personnalisé""",
        "el": """Δεν έχετε προσαρμοσμένες προπονήσεις""",
        "cs": """Nemáte žádné vlastní tréninky""",
        "id": """You don't have any custom workouts""",
        "es": """You don't have any custom workouts""",
        "ar": """ليس لديك أي تدريبات مخصصة""",
      } +
      {
        "zh": """在某些设备上，您可能需要禁用电池优化，Feeel才能可靠地工作。""",
        "tr":
            """Bazı aygıtlarda, bunun güvenilir bir şekilde çalışması için pil iyileştirmesini Feeel için devre dışı bırakmanız gerekebilir.""",
        "nl":
            """Op sommige apparaten is het verstandig om accu-optimalisatie uit te schakelen zodat Feeel betrouwbaar kan werken.""",
        "de":
            """Auf einigen Geräten muss möglicherweise die Batterieoptimierung für Feeel deaktiviert werden, damit dies zuverlässig funktioniert.""",
        "ru":
            """На некоторых устройствах для надежной работы Feeel может потребоваться отключить оптимизацию батареи.""",
        "pt":
            """Em alguns dispositivos, pode ser necessário desactivar a optimização da bateria para que o Feeel funcione de forma fiável.""",
        "en":
            """On some devices, you may need to disable battery optimization for Feeel for this to work reliably.""",
        "it":
            """Su alcuni dispositivi, potrebbe essere necessario disabilitare l'ottimizzazione della batteria per Feeel affinché questo funzioni in modo affidabile.""",
        "hr":
            """Na nekim uređajima možda moraš deaktivirati optimizaciju baterije da bi Feeel mogao pouzdano raditi.""",
        "fr":
            """Sur certains appareils, il se peut que vous deviez désactiver l'optimisation de la batterie pour Feeel pour que ceci fonctionne de manière fiable.""",
        "el":
            """Σε μερικές συσκευές, μπορεί να χρειαστεί να απενεργοποιήσετε τις βελτιστοποιήσεις μπαταρίας για το Feeel, ώστε αυτό να λειτουργήσει αξιόπιστα.""",
        "cs":
            """Na některých zařízeních může být nutné vypnout optimalizaci baterie pro Feeel, aby tato funkce spolehlivě fungovala.""",
        "id":
            """Pada beberapa perangkat, Anda mungkin perlu menonaktifkan optimisasi baterai untuk Feel Bagi ini untuk bekerja dapat dipercaya.""",
        "es":
            """En algunos dispositivos, es posible que necesites desactivar la optimización de batería para Feeel para que funcione correctamente.""",
        "ar":
            """على بعض الأجهزة، قد تحتاج إلى تعطيل تحسين البطارية لتطبيق Feeel لكي يعمل هذا بشكل موثوق.""",
      } +
      {
        "zh": """参与""",
        "tr": """Katılın""",
        "nl": """Bijdragen""",
        "de": """Teilnehmen""",
        "ru": """Участвуйте""",
        "pt": """Participe""",
        "en": """Participate""",
        "it": """Partecipa""",
        "hr": """Sudjeluj""",
        "fr": """Rejoignez""",
        "el": """Συμμετοχή""",
        "cs": """Účastněte se""",
        "id": """Berpartisipasi""",
        "es": """Participar""",
        "ar": """مشاركة""",
      } +
      {
        "zh": """源代码""",
        "tr": """Kaynak kodları""",
        "nl": """Broncode""",
        "de": """Quellcode""",
        "ru": """Исходный код""",
        "pt": """Código fonte""",
        "en": """Source code""",
        "it": """Codice sorgente""",
        "hr": """Izvorni kod""",
        "fr": """Code source""",
        "el": """Πηγαίος κώδικας""",
        "cs": """Zdrojový kód""",
        "id": """Kode sumber""",
        "es": """Código fuente""",
        "ar": """الشفرة المصدرية""",
      } +
      {
        "zh": """捐赠""",
        "tr": """Bağış yapın""",
        "nl": """Doneren""",
        "de": """Spenden""",
        "ru": """Пожертвовать""",
        "pt": """Doação""",
        "en": """Donate""",
        "it": """Dona""",
        "hr": """Doniraj""",
        "fr": """Faire un don""",
        "el": """Δωρεά""",
        "cs": """Darovat""",
        "id": """Donasi""",
        "es": """Donar""",
        "ar": """تبرّع""",
      } +
      {
        "zh": """无法打开网址。""",
        "tr": """URL açılamadı.""",
        "nl": """De url kan niet worden geopend.""",
        "de": """Kann URL nicht öffnen.""",
        "ru": """Не удалось открыть URL.""",
        "pt": """Não foi possível abrir URL.""",
        "en": """Could not open URL.""",
        "it": """Impossibile aprire URL.""",
        "hr": """URL se nije mogao otvoriti.""",
        "fr": """Impossible d'ouvrir URL.""",
        "el": """Δεν μπόρεσε να ανοίξει το URL.""",
        "cs": """Nelze otevřít URL.""",
        "id": """Tidak dapat membuka URL.""",
        "es": """No es posible abrir URL.""",
        "ar": """تعذر فتح عنوان URL.""",
      } +
      {
        "zh": """强度""",
        "tr": """Güç""",
        "nl": """Kracht""",
        "de": """Stärke""",
        "ru": """Растяжка""",
        "pt": """Resistência""",
        "en": """Strength""",
        "it": """Forza""",
        "hr": """Snaga""",
        "fr": """Force""",
        "el": """Δύναμη""",
        "cs": """Silové cvičení""",
        "id": """Kekuatan""",
        "es": """Fuerza""",
        "ar": """القوة""",
      } +
      {
        "zh": """伸展运动和瑜珈""",
        "tr": """Esneme ve yoga""",
        "nl": """Rekken en yoga""",
        "de": """Dehnung & Yoga""",
        "ru": """Растяжка и йога""",
        "pt": """Alongamento e ioga""",
        "en": """Stretching & yoga""",
        "it": """Stretching e yoga""",
        "hr": """Istezanje i joga""",
        "fr": """Étirement et yoga""",
        "el": """Διατάσεις & γιόγκα""",
        "cs": """Protahování a jóga""",
        "id": """Peregangan & yoga""",
        "es": """Estiramiento y yoga""",
        "ar": """تمارين الإطالة واليوغا""",
      } +
      {
        "zh": """有氧运动""",
        "tr": """Kardiyo""",
        "nl": """Cardio""",
        "de": """Kardio""",
        "ru": """Кардио""",
        "pt": """Cardio""",
        "en": """Cardio""",
        "it": """Cardio""",
        "hr": """Kardio""",
        "fr": """Cardio""",
        "el": """Αερόβια""",
        "cs": """Kardio""",
        "id": """Kardio""",
        "es": """Cardo""",
        "ar": """القلب""",
      } +
      {
        "zh": """其他""",
        "tr": """Diğer""",
        "nl": """Andere""",
        "de": """Anderes""",
        "ru": """Другое""",
        "pt": """Outro""",
        "en": """Other""",
        "it": """Altro""",
        "hr": """Drugo""",
        "fr": """Autre""",
        "el": """Άλλη""",
        "cs": """Jiné""",
        "id": """Lainnya""",
        "es": """Otras""",
        "ar": """آخر""",
      } +
      {
        "zh": """语言""",
        "tr": """Dil""",
        "nl": """Taal""",
        "de": """Sprache""",
        "ru": """Язык""",
        "pt": """Idioma""",
        "en": """Language""",
        "it": """Lingua""",
        "hr": """Jezik""",
        "fr": """Langue""",
        "el": """Γλώσσα""",
        "cs": """Jazyk""",
        "id": """Bahasa""",
        "es": """Idioma""",
        "ar": """اللغة""",
      } +
      {
        "zh": """不能留空""",
        "tr": """Boş olamaz""",
        "nl": """Kan niet leeg zijn""",
        "de": """Darf nicht leer sein""",
        "ru": """Не может быть пустым""",
        "pt": """Não pode estar vazio""",
        "en": """Can't be empty""",
        "it": """Non può essere vuoto""",
        "hr": """Ne može biti prazno""",
        "fr": """Ne peut pas être vide""",
        "el": """Δεν μπορεί να είναι κενό""",
        "cs": """Nesmí být prázdné""",
        "id": """Tidak boleh kosong""",
        "es": """No puede estar vacío""",
        "ar": """لا يمكن أن يكون فارغا""",
      } +
      {
        "zh": """必须是数字""",
        "tr": """Sayısal olmalı""",
        "nl": """Moet numeriek zijn""",
        "de": """Muss numerisch sein""",
        "ru": """Должно быть числом""",
        "pt": """Deve ser numérico""",
        "en": """Must be numeric""",
        "it": """Deve essere numerico""",
        "hr": """Mora biti numerički""",
        "fr": """Doit être numérique""",
        "el": """Πρέπει να είναι αριθμητικό""",
        "cs": """Musí být číslo""",
        "id": """Harus numerik""",
        "es": """Debe ser numérico""",
        "ar": """يجب أن يكون رقميا""",
      } +
      {
        "zh": """%1d 分钟，%2d 秒。""",
        "tr": """%1d dak., %2d sn.""",
        "nl": """%1d min %2d s""",
        "de": """%1d min %2d sek.""",
        "ru": """%1d мин., %2d сек.""",
        "pt": """%1d min, %2d s""",
        "en": """%1d min., %2d sec.""",
        "it": """%1d min %2d s""",
        "hr": """%1d minuta., %2d sek.""",
        "fr": """%1d min %2d s""",
        "el": """%1d λ., %2d δ.""",
        "cs": """%1d min., %2d s.""",
        "id": """%1d mnt., %2d dtk.""",
        "es": """%1d min %2d seg.""",
        "ar": """%1d دقيقة، %2d ثانية.""",
      } +
      {
        "zh": """拖动此手柄可对练习重新排序。""",
        "tr": """Egzersizleri yeniden sıralamak için bu tutamacı sürükleyin.""",
        "nl": """Versleep dit handvat om oefeningen anders in te delen.""",
        "de": """Ziehen Sie diesen Griff, um die Übungen neu anzuordnen.""",
        "ru": """Перетащите этот маркер, чтобы изменить порядок упражнений.""",
        "pt": """Arraste esta alça para reordenar os exercícios.""",
        "en": """Drag this handle to reorder exercises.""",
        "it": """Trascina questa maniglia per riordinare gli esercizi.""",
        "hr": """Povuci ovu ručku za mijenjanje redoslijeda vježbi.""",
        "fr":
            """Faites glisser cette poignée pour réorganiser les exercices.""",
        "el": """Σύρετε αυτή τη λαβή για αναδιάταξη των ασκήσεων.""",
        "cs": """Táhněte touto rukojetí pro změnu pořadí cviků.""",
        "id": """Seret ikon handle untuk menyusun ulang latihan.""",
        "es": """Arrastre este controlador para reordenar los ejercicios.""",
        "ar": """اسحب هذا المقبض لإعادة ترتيب التمارين.""",
      } +
      {
        "zh": """这组锻炼中没有锻炼内容。:(""",
        "tr": """Bu antrenmanda egzersiz yok. :(""",
        "nl": """Deze work-out bevat geen oefeningen. :(""",
        "de": """Es gibt keine Übungen in diesem Training :(""",
        "ru": """В этой тренировке нет никаких упражнений. :(""",
        "pt": """Não há exercícios neste treino. :(""",
        "en": """There are no exercises in this workout. :(""",
        "it": """Non ci sono esercizi in questo allenamento :(""",
        "hr": """U ovom treningu nema vježbi. :(""",
        "fr":
            """Il n'y a pas d'exercices dans cette séance d'entraînement. :(""",
        "el": """Δεν υπάρχουν ασκήσεις σε αυτή την προπόνηση. :(""",
        "cs": """V tomto tréninku nejsou žádné cviky. :(""",
        "id": """Tidak ada latihan dalam latihan ini. :(""",
        "es": """No hay ejercicios en este entrenamiento. :(""",
        "ar": """لا توجد تدريبات في هذا التمرين. :(""",
      } +
      {
        "zh": """English description license""",
        "tr": """İngilizce açıklama lisansı""",
        "nl": """English description license""",
        "de": """Englische Lizenzbeschreibung""",
        "ru": """English description license""",
        "pt": """English description license""",
        "en": """English description license""",
        "it": """Licenza di descrizione in inglese""",
        "hr": """Licenca za opis na engleskom jeziku""",
        "fr": """Licence de description en anglais""",
        "el": """Αγγλική περιγραφή άδειας""",
        "cs": """Licence anglického popisu""",
        "id": """English description license""",
        "es": """English description license""",
        "ar": """ترخيص الوصف باللغة الإنجليزية""",
      } +
      {
        "zh": """Image license""",
        "tr": """Resim lisansı""",
        "nl": """Image license""",
        "de": """Bildlizenz""",
        "ru": """Image license""",
        "pt": """Image license""",
        "en": """Image license""",
        "it": """Licenza d'immagine""",
        "hr": """Licenca za sliku""",
        "fr": """Licence d'image""",
        "el": """Άδεια χρήσης εικόνας""",
        "cs": """Licence obrázku""",
        "id": """Image license""",
        "es": """Image license""",
        "ar": """ترخيص الصورة""",
      } +
      {
        "zh": """学习锻炼方法""",
        "tr": """Egzersizi öğren""",
        "nl": """Learn the exercise""",
        "de": """Lerne die Übung""",
        "ru": """Learn the exercise""",
        "pt": """Learn the exercise""",
        "en": """Learn the exercise""",
        "it": """Impara l'esercizio""",
        "hr": """Nauči vježbu""",
        "fr": """Apprenez l'exercice""",
        "el": """Μάθετε την άσκηση""",
        "cs": """Naučte se cvik""",
        "id": """Learn the exercise""",
        "es": """Learn the exercise""",
        "ar": """تعلم التمرين""",
      } +
      {
        "zh": """Feeel 这个平台提供的内容都源于用户""",
        "tr": """Feeel bir topluluk projesidir""",
        "nl": """Feeel is a community project""",
        "de": """Feeel ist ein Gemeinschaftsprojekt""",
        "ru": """Feeel is a community project""",
        "pt": """Feeel is a community project""",
        "en": """Feeel is a community project""",
        "it": """Feeel è un progetto comunitario""",
        "hr": """Feeel je projekt zajednice""",
        "fr": """Feeel est un projet communautaire""",
        "el": """Το Feeel είναι ένα έργο της κοινότητας""",
        "cs": """Feeel je komunitní projekt""",
        "id": """Feeel is a community project""",
        "es": """Feeel is a community project""",
        "ar": """فييل هو مشروع مجتمعي""",
      } +
      {
        "zh": """Disclaimer""",
        "tr": """Sorumluluk reddi""",
        "nl": """Disclaimer""",
        "de": """Haftungsausschluss""",
        "ru": """Disclaimer""",
        "pt": """Disclaimer""",
        "en": """Disclaimer""",
        "it": """Dichiarazione di non responsabilità""",
        "hr": """Disclaimer""",
        "fr": """Avis de non-responsabilité""",
        "el": """Disclaimer""",
        "cs": """Upozornění""",
        "id": """Disclaimer""",
        "es": """Disclaimer""",
        "ar": """اخلاء المسؤوليه""",
      } +
      {
        "zh":
            """Exercises and workouts are volunteer-contributed. Neither Feeel nor any volunteer is responsible for the correctness of any info in this app or for your health. Use at your own discretion.""",
        "tr":
            """Egzersizler ve antrenmanlara gönüllüler tarafından katkıda bulunulmaktadır. Ne Feeel ne de herhangi bir gönüllü bu uygulamadaki herhangi bir bilginin doğruluğundan veya sağlığınızdan sorumlu değildir. Kendi takdirinize bağlı olarak kullanın.""",
        "nl":
            """Exercises and workouts are volunteer-contributed. Neither Feeel nor any volunteer is responsible for the correctness of any info in this app or for your health. Use at your own discretion.""",
        "de":
            """Die Übungen und Workouts werden von Freiwilligen zur Verfügung gestellt. Weder Feeel noch andere Freiwillige sind für die Richtigkeit der Informationen in dieser App oder für deine Gesundheit verantwortlich. Die Verwendung erfolgt nach eigenem Ermessen.""",
        "ru":
            """Exercises and workouts are volunteer-contributed. Neither Feeel nor any volunteer is responsible for the correctness of any info in this app or for your health. Use at your own discretion.""",
        "pt":
            """Exercises and workouts are volunteer-contributed. Neither Feeel nor any volunteer is responsible for the correctness of any info in this app or for your health. Use at your own discretion.""",
        "en":
            """Exercises and workouts are volunteer-contributed. Neither Feeel nor any volunteer is responsible for the correctness of any info in this app or for your health. Use at your own discretion.""",
        "it":
            """Gli esercizi e gli allenamenti sono forniti da volontari. Né Feeel né i volontari sono responsabili della correttezza delle informazioni contenute in questa applicazione o della vostra salute. Utilizzare a propria discrezione.""",
        "hr":
            """Exercises and workouts are volunteer-contributed. Neither Feeel nor any volunteer is responsible for the correctness of any info in this app or for your health. Use at your own discretion.""",
        "fr":
            """Les exercices et les entraînements sont fournis par des bénévoles. Ni Feeel ni aucun volontaire ne sont responsables de l'exactitude des informations contenues dans cette application ou de votre santé. Utilisez cette application à votre propre discrétion.""",
        "el":
            """Exercises and workouts are volunteer-contributed. Neither Feeel nor any volunteer is responsible for the correctness of any info in this app or for your health. Use at your own discretion.""",
        "cs":
            """Cviky i tréninky jsou autorovány dobrovolníky. Ani Feeel ani jakýkoliv dobrovolník nejsou zodpovědni za správnost jakýchkoliv informací v této aplikaci či za vaše zdraví. Používejte dle vlastního uvážení.""",
        "id":
            """Exercises and workouts are volunteer-contributed. Neither Feeel nor any volunteer is responsible for the correctness of any info in this app or for your health. Use at your own discretion.""",
        "es":
            """Exercises and workouts are volunteer-contributed. Neither Feeel nor any volunteer is responsible for the correctness of any info in this app or for your health. Use at your own discretion.""",
        "ar":
            """تمارين وتدريبات يساهم فيها المتطوعون. لا يتحمل Feeel ولا أي متطوع مسؤولية صحة أي معلومات في هذا التطبيق أو عن صحتك. استخدام في التحفظ الخاصة بك.""",
      } +
      {
        "zh": """重复的锻炼组合不会简并成一个""",
        "tr": """Yinelenenlerin üzerine yazılmayacak""",
        "nl": """Duplicates will not be overriden""",
        "de": """Duplikate werden nicht überschrieben""",
        "ru": """Duplicates will not be overriden""",
        "pt": """Duplicates will not be overriden""",
        "en": """Duplicates will not be overriden""",
        "it": """I duplicati non verranno sovrascritti""",
        "hr": """Duplikati se neće prepisati""",
        "fr": """Les doublons ne seront pas remplacés""",
        "el": """Τα διπλότυπα δεν θα επικαλυφθούν""",
        "cs": """Kopie nebudou přepsány""",
        "id": """Duplicates will not be overriden""",
        "es": """Duplicates will not be overriden""",
        "ar": """لن يتم تجاوز التكرارات""",
      } +
      {
        "zh": """如果导入的锻炼组合与 Feeel 内您已有的锻炼组合相同，就会有两组一样的锻炼组合，重复的需要手动删除。""",
        "tr":
            """Feeel'de zaten sahip olduğunuz antrenmanlarla aynı olan antrenmanları içe aktarırsanız, bu antrenmanları uygulamada iki kez görürsünüz ve bunları elle silmeniz gerekecektir.""",
        "nl":
            """If you import workouts that are identical to workouts you have in Feeel already, you will have those workouts twice in the app and will have to manually delete them.""",
        "de":
            """Wenn Sie Trainings importieren, die identisch sind mit Trainings, die Sie bereits in Feeel haben, müssen Sie diese doppelten Trainings in der App manuell löschen.""",
        "ru":
            """If you import workouts that are identical to workouts you have in Feeel already, you will have those workouts twice in the app and will have to manually delete them.""",
        "pt":
            """If you import workouts that are identical to workouts you have in Feeel already, you will have those workouts twice in the app and will have to manually delete them.""",
        "en":
            """If you import workouts that are identical to workouts you have in Feeel already, you will have those workouts twice in the app and will have to manually delete them.""",
        "it":
            """Se si importano allenamenti identici a quelli già presenti in Feeel, tali allenamenti saranno presenti due volte nell'app e dovranno essere eliminati manualmente.""",
        "hr":
            """Ako uvezeš treninge koji su identični treninzima koje već imaš u Feeelu, te treninge ćeš imati dvaput u programu i morat ćeš ih ručno izbrisati.""",
        "fr":
            """Si vous importez des séances d'entraînement identiques à celles que vous avez déjà dans Feeel, elles apparaîtront deux fois dans l'application et vous devrez les supprimer manuellement.""",
        "el":
            """Εάν εισάγετε προπονήσεις που είναι ίδιες με προπονήσεις που έχετε ήδη στο Feeel, θα έχετε αυτές τις προπονήσεις δύο φορές στην εφαρμογή και θα πρέπει να τις διαγράψετε χειροκίνητα.""",
        "cs":
            """Pokud importujete tréninky shodné s těmi, které již ve Feeel jsou, budete mít v aplikaci tyto tréninky dvakrát a budete je muset odstranit ručně.""",
        "id":
            """If you import workouts that are identical to workouts you have in Feeel already, you will have those workouts twice in the app and will have to manually delete them.""",
        "es":
            """If you import workouts that are identical to workouts you have in Feeel already, you will have those workouts twice in the app and will have to manually delete them.""",
        "ar":
            """إذا قمت باستيراد التدريبات المطابقة للتدريبات التي لديك في Feeel بالفعل ، فستحصل على هذه التدريبات مرتين في التطبيق وسيتعين عليك حذفها يدويا.""",
      } +
      {
        "zh":
            """Exercises are contributed through **the wger website**, another open-source community project. In a future release, Feeel will incorporate all exercises from this website.""",
        "tr":
            """Egzersizlere, başka bir açık kaynaklı topluluk projesi olan **the wger web sitesi** aracılığıyla katkıda bulunulmaktadır. Gelecekteki bir sürümde, Feeel bu web sitesindeki tüm egzersizleri dahil edecektir.""",
        "nl":
            """Exercises are contributed through **the wger website**, another open-source community project. In a future release, Feeel will incorporate all exercises from this website.""",
        "de":
            """Die Übungen werden von **der wger-Website** beigesteuert, einem weiteren Open-Source-Community-Projekt. In einer zukünftigen Version wird Feeel alle Übungen von dieser Website einbeziehen.""",
        "ru":
            """Exercises are contributed through **the wger website**, another open-source community project. In a future release, Feeel will incorporate all exercises from this website.""",
        "pt":
            """Exercises are contributed through **the wger website**, another open-source community project. In a future release, Feeel will incorporate all exercises from this website.""",
        "en":
            """Exercises are contributed through **the wger website**, another open-source community project. In a future release, Feeel will incorporate all exercises from this website.""",
        "it":
            """Gli esercizi sono forniti dal sito web di wger**, un altro progetto comunitario con codice aperto. In una versione futura, Feeel incorporerà tutti gli esercizi di questo sito web.""",
        "hr":
            """Exercises are contributed through **the wger website**, another open-source community project. In a future release, Feeel will incorporate all exercises from this website.""",
        "fr":
            """Les exercices sont fournis par **le site web wger**, un autre projet communautaire à code source ouvert. Dans une prochaine version, Feeel intégrera tous les exercices de ce site web.""",
        "el":
            """Exercises are contributed through **the wger website**, another open-source community project. In a future release, Feeel will incorporate all exercises from this website.""",
        "cs":
            """Cviky se přispívají přes **webové stránky wger**, další komunitní open-source projekt. V budoucí verzi zakomponuje Feeel veškeré cviky z těchto stránek.""",
        "id":
            """Exercises are contributed through **the wger website**, another open-source community project. In a future release, Feeel will incorporate all exercises from this website.""",
        "es":
            """Exercises are contributed through **the wger website**, another open-source community project. In a future release, Feeel will incorporate all exercises from this website.""",
        "ar":
            """Exercises are contributed through **the wger website**, another open-source community project. In a future release, Feeel will incorporate all exercises from this website.""",
      } +
      {
        "zh":
            """Contributing via wger requires an account older than 21 days.""",
        "tr":
            """Wger aracılığıyla katkıda bulunmak için 21 günden daha eski bir hesap gerekir.""",
        "nl":
            """Contributing via wger requires an account older than 21 days.""",
        "de":
            """Für einen Beitrag über wger ist ein Konto erforderlich, das älter als 21 Tage ist.""",
        "ru":
            """Contributing via wger requires an account older than 21 days.""",
        "pt":
            """Contributing via wger requires an account older than 21 days.""",
        "en":
            """Contributing via wger requires an account older than 21 days.""",
        "it":
            """La contribuzione tramite wger richiede un account più vecchio di 21 giorni.""",
        "hr":
            """Contributing via wger requires an account older than 21 days.""",
        "fr":
            """La contribution via wger nécessite un compte de plus de 21 jours.""",
        "el":
            """Contributing via wger requires an account older than 21 days.""",
        "cs": """Přispívání přes wger vyžaduje účet starší než 21 dní.""",
        "id":
            """Contributing via wger requires an account older than 21 days.""",
        "es":
            """Contributing via wger requires an account older than 21 days.""",
        "ar":
            """Contributing via wger requires an account older than 21 days.""",
      } +
      {
        "zh": """开始锻炼""",
        "tr": """Antrenmanı başlat""",
        "nl": """Workout starten""",
        "de": """Training starten""",
        "ru": """Начать тренировку""",
        "pt": """Começar treino""",
        "en": """Start workout""",
        "it": """Inizia l'allenamento""",
        "hr": """Započni s treningom""",
        "fr": """Démarrer l’entraînement""",
        "el": """Έναρξη προπόνησης""",
        "cs": """Spustit trénink""",
        "id": """Mulai berolahraga""",
        "es": """Iniciar entrenamiento""",
        "ar": """ابدأ التمرين""",
      } +
      {
        "zh": """接着锻炼""",
        "tr": """Antrenmanı devam ettir""",
        "nl": """Workout hervatten""",
        "de": """Training fortsetzen""",
        "ru": """Продолжить тренировку""",
        "pt": """Resumir treino""",
        "en": """Resume workout""",
        "it": """Riprendi l'allenamento""",
        "hr": """Nastavi s treningom""",
        "fr": """Reprendre l’entraînement""",
        "el": """Συνέχιση της προπόνησης""",
        "cs": """Pokračovat v tréninku""",
        "id": """Lanjutkan latihan""",
        "es": """Continuar entrenamiento""",
        "ar": """استئناف التمرين""",
      } +
      {
        "zh": """上一个练习""",
        "tr": """Önceki egzersiz""",
        "nl": """Vorige oefening""",
        "de": """Vorherige Übung""",
        "ru": """Предыдущее упражнение""",
        "pt": """Exercício anterior""",
        "en": """Previous exercise""",
        "it": """Esercizio precedente""",
        "hr": """Prethodna vježba""",
        "fr": """Exercice précédent""",
        "el": """Προηγούμενη άσκηση""",
        "cs": """Předchozí cvik""",
        "id": """Latihan sebelumnya""",
        "es": """Ejercicio anterior""",
        "ar": """التمرين السابق""",
      } +
      {
        "zh": """下一个练习""",
        "tr": """Sonraki egzersiz""",
        "nl": """Volgende oefening""",
        "de": """Nächste Übung""",
        "ru": """Следующее упражнение""",
        "pt": """Próximo exercício""",
        "en": """Next exercise""",
        "it": """Esercizio successivo""",
        "hr": """Sljedeća vježba""",
        "fr": """Exercice suivant""",
        "el": """Επόμενη άσκηση""",
        "cs": """Další cvik""",
        "id": """Latihan berikutnya""",
        "es": """Ejercicio siguiente""",
        "ar": """التمرين التالي""",
      } +
      {
        "zh": """添加练习""",
        "tr": """Egzersiz ekle""",
        "nl": """Oefeningen toevoegen""",
        "de": """Übung hinzufügen""",
        "ru": """Добавить упражнение""",
        "pt": """Adicionar exercício""",
        "en": """Add exercises""",
        "it": """Aggiungi esercizi""",
        "hr": """Dodaj vježbe""",
        "fr": """Ajouter des exercices""",
        "el": """Προσθήκη ασκήσεων""",
        "cs": """Přidat cviky""",
        "id": """Tambahkan latihan""",
        "es": """Añadir ejercicios""",
        "ar": """أضف تمارين""",
      } +
      {
        "zh": """编辑""",
        "tr": """Düzenle""",
        "nl": """Aanpassen""",
        "de": """Bearbeiten""",
        "ru": """Правка""",
        "pt": """Editar""",
        "en": """Edit""",
        "it": """Modifica""",
        "hr": """Uredi""",
        "fr": """Modifier""",
        "el": """Επεξεργασία""",
        "cs": """Upravit""",
        "id": """Sunting""",
        "es": """Editar""",
        "ar": """تعديل""",
      } +
      {
        "zh": """删除""",
        "tr": """Sil""",
        "nl": """Verwijderen""",
        "de": """Löschen""",
        "ru": """Удалить""",
        "pt": """Apagar""",
        "en": """Delete""",
        "it": """Elimina""",
        "hr": """Izbriži""",
        "fr": """Supprimer""",
        "el": """Διαγραφή""",
        "cs": """Odstranit""",
        "id": """Hapus""",
        "es": """Borrar""",
        "ar": """حذف""",
      } +
      {
        "zh": """复制""",
        "tr": """Çoğalt""",
        "nl": """Een afschrift maken""",
        "de": """Verdoppeln""",
        "ru": """Дублировать""",
        "pt": """Duplicar""",
        "en": """Duplicate""",
        "it": """Duplicare""",
        "hr": """Dupliciraj""",
        "fr": """Dupliquer""",
        "el": """Διπλότυπο""",
        "cs": """Duplikovat""",
        "id": """Duplikat""",
        "es": """Duplicar""",
        "ar": """مكرره""",
      } +
      {
        "zh": """已完成""",
        "tr": """Bitti""",
        "nl": """Klaar""",
        "de": """Fertig""",
        "ru": """Готово""",
        "pt": """Pronto""",
        "en": """Done""",
        "it": """Fatto""",
        "hr": """Gotovo""",
        "fr": """Terminé""",
        "el": """Ολοκληρώθηκε""",
        "cs": """Hotovo""",
        "id": """Selesai""",
        "es": """Hecho""",
        "ar": """إنتهى""",
      } +
      {
        "zh": """取消""",
        "tr": """İptal""",
        "nl": """Annuleren""",
        "de": """Abbrechen""",
        "ru": """Отменить""",
        "pt": """Cancelar""",
        "en": """Cancel""",
        "it": """Annulla""",
        "hr": """Odustani""",
        "fr": """Annuler""",
        "el": """Ακύρωση""",
        "cs": """Zrušit""",
        "id": """Batal""",
        "es": """Cancelar""",
        "ar": """إلغاء""",
      } +
      {
        "zh": """放弃""",
        "tr": """Vazgeç""",
        "nl": """Verwerpen""",
        "de": """Verwerfen""",
        "ru": """Отбросить""",
        "pt": """Descartar""",
        "en": """Discard""",
        "it": """Abbandona""",
        "hr": """Odbaci""",
        "fr": """Abandonner""",
        "el": """Απόρριψη""",
        "cs": """Zahodit""",
        "id": """Buang""",
        "es": """Descartar""",
        "ar": """تجاهل""",
      } +
      {
        "zh": """确定""",
        "tr": """Tamam""",
        "nl": """Oké""",
        "de": """OK""",
        "ru": """ладно""",
        "pt": """OK""",
        "en": """OK""",
        "it": """OK""",
        "hr": """U redu""",
        "fr": """OK""",
        "el": """Εντάξει""",
        "cs": """OK""",
        "id": """Ok""",
        "es": """Listo""",
        "ar": """حسنا""",
      } +
      {
        "zh": """我理解""",
        "tr": """Anlıyorum""",
        "nl": """I understand""",
        "de": """Ich verstehe""",
        "ru": """I understand""",
        "pt": """I understand""",
        "en": """I understand""",
        "it": """Capisco""",
        "hr": """Razumijem""",
        "fr": """Je comprends""",
        "el": """Καταλαβαίνω""",
        "cs": """Rozumím""",
        "id": """I understand""",
        "es": """I understand""",
        "ar": """أفهم""",
      } +
      {
        "zh": """更多信息""",
        "tr": """Daha fazla bilgi""",
        "nl": """Meer informatie""",
        "de": """Mehr Infos""",
        "ru": """Подробнее""",
        "pt": """Mais informação""",
        "en": """More info""",
        "it": """Maggiori info""",
        "hr": """Daljnje informacije""",
        "fr": """Plus d’infos""",
        "el": """Περισσότερες πληροφορίες""",
        "cs": """Více info""",
        "id": """Info lebih lanjut""",
        "es": """Más información""",
        "ar": """المزيد من المعلومات""",
      } +
      {
        "zh": """创建自定义锻炼""",
        "tr": """Özel antrenman oluştur""",
        "nl": """Eigen workout samenstellen""",
        "de": """Eigenes Training erstellen""",
        "ru": """Создать свое упражнение""",
        "pt": """Criar treino customizado""",
        "en": """Create custom workout""",
        "it": """Crea un allenamento personalizzato""",
        "hr": """Stvori prilagođen trening""",
        "fr": """Créer un entraînement personnalisé""",
        "el": """Δημιουργία προσαρμοσμένης προπόνησης""",
        "cs": """Vytvořit vlastní trénink""",
        "id": """Buat latihan khusus""",
        "es": """Crear entrenamiento personalizado""",
        "ar": """إنشاء تمرين مخصص""",
      } +
      {
        "zh": """提交自定义锻炼""",
        "tr": """Özel egzersiz öner""",
        "nl": """Deel je eigen workout met ons""",
        "de": """Eigene Übung vorschlagen""",
        "ru": """Предложить свое упражнение""",
        "pt": """Propor exercício customizado""",
        "en": """Propose custom exercise""",
        "it": """Proponi un esercizio personalizzato""",
        "hr": """Predloži prilagođenu vježbu""",
        "fr": """Proposer un exercice personnalisé""",
        "el": """Προτείνετε προσαρμοσμένη άσκηση""",
        "cs": """Navrhnout vlastní cvik""",
        "id": """Usulkan latihan khusus""",
        "es": """Proponer ejercicio personalizado""",
        "ar": """اقتراح تمرين مخصص""",
      } +
      {
        "zh": """通过电子邮件提交""",
        "tr": """E-posta ile gönder""",
        "nl": """Versturen via e-mail""",
        "de": """Per E-Mail einreichen""",
        "ru": """Отправить письмо""",
        "pt": """Enviar via e-mail""",
        "en": """Submit via email""",
        "it": """Invia via e-mail""",
        "hr": """Pošalji putem e-maila""",
        "fr": """Soumettre par courriel""",
        "el": """Υποβολή μέσω email""",
        "cs": """Odeslat e-mailem""",
        "id": """Kirim melalui email""",
        "es": """Enviar por correo""",
        "ar": """إرسال عبر البريد الإلكتروني""",
      } +
      {
        "zh": """从图库添加照片""",
        "tr": """Galeriden fotoğraf ekle""",
        "nl": """Foto toevoegen uit galerij""",
        "de": """Foto aus der Gallerie hinzufügen""",
        "ru": """Прикрепить из галереи""",
        "pt": """Adicionar foto da galeria""",
        "en": """Add photo from gallery""",
        "it": """Aggiungi foto dalla Galleria""",
        "hr": """Dodaj fotografiju iz galerije""",
        "fr": """Ajouter une photo de la galerie""",
        "el": """Προσθήκη φωτογραφίας από τη συλλογή""",
        "cs": """Přidat fotku z galerie""",
        "id": """Tambahkan foto dari galeri""",
        "es": """Añadir foto desde galería""",
        "ar": """إضافة صورة من المعرض""",
      } +
      {
        "zh": """拍照""",
        "tr": """Fotoğraf çek""",
        "nl": """Foto maken""",
        "de": """Foto aufnehmen""",
        "ru": """Сфотографировать""",
        "pt": """Tirar foto""",
        "en": """Take a photo""",
        "it": """Scatta una foto""",
        "hr": """Snimi fotografiju""",
        "fr": """Prendre une photo""",
        "el": """Λήψη φωτογραφίας""",
        "cs": """Vyfotit cvik""",
        "id": """Ambil foto""",
        "es": """Tomar una foto""",
        "ar": """التقاط صورة""",
      } +
      {
        "zh": """为照片添加链接""",
        "tr": """Fotoğraf(lar)ınıza bir bağlantı ekleyin""",
        "nl": """Voeg een link toe naar je foto('s)""",
        "de": """Link zu deinem/n Foto(s) hinzufügen""",
        "ru": """Добавить ссылку на фотографии""",
        "pt": """Adicionar um link para sua(s) foto(s)""",
        "en": """Add a link to your photo(s)""",
        "it": """Aggiungi un link alla tua(e) foto""",
        "hr": """Dodaj poveznice na svoje fotografije""",
        "fr": """Ajouter un lien vers vos photos""",
        "el": """Προσθήκη συνδέσμου προς τις φωτογραφίες σας""",
        "cs": """Přidat odkaz k fotce/fotkám""",
        "id": """Tambahkan tautan ke foto Anda""",
        "es": """Añadir un enlace a su(s) foto(s)""",
        "ar": """أضف ارتباطًا إلى صورتك (صورك)""",
      } +
      {
        "zh": """用声音代替语音""",
        "tr": """Konuşma yerine sesleri kullan""",
        "nl": """Geluiden afspelen in plaats van oefening voor te lezen""",
        "de": """Sounds anstelle von Sprache ausgeben""",
        "ru": """Использовать сигналы вместо TTS""",
        "pt": """Use sons ao vez de fala""",
        "en": """Sounds instead of voice""",
        "it": """Usa suoni invece del parlato""",
        "hr": """Zvukovi umjesto glasa""",
        "fr": """Utiliser des sons au lieu de la parole""",
        "el": """Ήχοι αντί για φωνή""",
        "cs": """Používat zvuky namísto mluveného slova""",
        "id": """Gunakan suara alih-alih ucapan""",
        "es": """Usar sonidos en lugar del habla""",
        "ar": """موسيقى بدلا من الصوت""",
      } +
      {
        "zh": """调整时间""",
        "tr": """Zamanlamayı ayarla""",
        "nl": """Timing aanpassen""",
        "de": """Zeiten anpassen""",
        "ru": """Подстроить время""",
        "pt": """Ajustar tempo""",
        "en": """Adjust timing""",
        "it": """Regola i tempi""",
        "hr": """Podesi vrijeme""",
        "fr": """Ajuster le minutage""",
        "el": """Προσαρμογή χρονισμού""",
        "cs": """Upravit časování""",
        "id": """Sesuaikan waktu""",
        "es": """Ajustar ritmo""",
        "ar": """ضبط التوقيت""",
      } +
      {
        "zh": """时间已经调整""",
        "tr": """Zamanlamayı düzenleme tamamlandı""",
        "nl": """Aanpassen afronden""",
        "de": """Fertig mit der Bearbeitung""",
        "ru": """Редактирование времени""",
        "pt": """Cronograma de edição""",
        "en": """Done editing timing""",
        "it": """Modifica dei tempi finita""",
        "hr": """Uređivanje vremena je gotovo""",
        "fr": """Modification de la durée terminée""",
        "el": """Ολοκληρώθηκε η επεξεργασία του χρονισμού""",
        "cs": """Časování upraveno""",
        "id": """Waktu pengeditan selesai""",
        "es": """Tiempo de edición terminado""",
        "ar": """انتهى تعديل التوقيت""",
      } +
      {
        "zh": """删除此锻炼""",
        "tr": """Bu antrenmanı sil""",
        "nl": """Work-out verwijderen""",
        "de": """Dieses Training löschen""",
        "ru": """Удалить эту тренировку""",
        "pt": """Excluir este exercício""",
        "en": """Delete this workout""",
        "it": """Elimina questo allenamento""",
        "hr": """Izbriši ovaj trening""",
        "fr": """Supprimer cet entraînement""",
        "el": """Διαγραφή αυτής της προπόνησης""",
        "cs": """Odstranit tento trénink""",
        "id": """Hapus latihan ini""",
        "es": """Eliminar este entrenamiento""",
        "ar": """حذف هذا التمرين""",
      } +
      {
        "zh": """返回锻炼列表""",
        "tr": """Antrenman listesine geri dön""",
        "nl": """Terug naar overzicht""",
        "de": """Zurück zur Training-Liste""",
        "ru": """Вернуться к списку тренировок""",
        "pt": """Voltar para a lista de exercícios""",
        "en": """Back to workout list""",
        "it": """Torna alla lista degli allenamenti""",
        "hr": """Natrag na popis treninga""",
        "fr": """Retour à la liste des entraînements""",
        "el": """Επιστροφή στη λίστα προπονήσεων""",
        "cs": """Zpět na seznam tréninků""",
        "id": """Kembali ke daftar latihan""",
        "es": """Volver a la lista de ejercicios""",
        "ar": """العودة إلى قائمة التمرين""",
      } +
      {
        "zh": """确定要导入""",
        "tr": """Yine de içe aktar""",
        "nl": """Import anyway""",
        "de": """Trotzdem importieren""",
        "ru": """Import anyway""",
        "pt": """Import anyway""",
        "en": """Import anyway""",
        "it": """Importa comunque""",
        "hr": """Svejedno uvezi""",
        "fr": """Importer quand même""",
        "el": """Εισαγωγή ούτως ή άλλως""",
        "cs": """Importovat i přesto""",
        "id": """Import anyway""",
        "es": """Import anyway""",
        "ar": """استيراد على أي حال""",
      } +
      {
        "zh": """Sign up for wger""",
        "tr": """wger için kaydol""",
        "nl": """Sign up for wger""",
        "de": """Registrieren für wger""",
        "ru": """Sign up for wger""",
        "pt": """Sign up for wger""",
        "en": """Sign up for wger""",
        "it": """Iscriviti a wger""",
        "hr": """Sign up for wger""",
        "fr": """S'inscrire sur wger""",
        "el": """Sign up for wger""",
        "cs": """Registrovat se u wger""",
        "id": """Sign up for wger""",
        "es": """Sign up for wger""",
        "ar": """Sign up for wger""",
      } +
      {
        "zh": """Log in with wger""",
        "tr": """wger ile oturum aç""",
        "nl": """Log in with wger""",
        "de": """Mit wger anmelden""",
        "ru": """Log in with wger""",
        "pt": """Log in with wger""",
        "en": """Log in with wger""",
        "it": """Accedi tramite wger""",
        "hr": """Log in with wger""",
        "fr": """Se connecter via wger""",
        "el": """Log in with wger""",
        "cs": """Přihlásit se na wger""",
        "id": """Log in with wger""",
        "es": """Log in with wger""",
        "ar": """Log in with wger""",
      } +
      {
        "zh": """7 分钟科学锻炼""",
        "tr": """Bilimsel 7 dakikalık antrenman""",
        "nl": """Wetenschappelijk bewezen 7-minutenworkout""",
        "de": """Wissenschaftliches 7-Minuten-Training""",
        "ru": """Научно-доказанная 7-минутная тренировка""",
        "pt": """Treino científico de 7 minutos""",
        "en": """Scientific 7 minute workout""",
        "it": """Allenamento scientifico di 7 minuti""",
        "hr": """Znanstveni 7-minutni treninzi""",
        "fr": """Entraînement scientifique de 7 min""",
        "el": """Επιστημονική προπόνηση 7 λεπτών""",
        "cs": """Vědecký sedmiminutový trénink""",
        "id": """Latihan ilmiah 7 menit""",
        "es": """Entrenamiento científico de 7 minutos""",
        "ar": """تمرين علمي لمدة 7 دقائق""",
      } +
      {
        "zh": """腿部锻炼""",
        "tr": """Bacak antrenmanı""",
        "nl": """Beenworkout""",
        "de": """Bein-Training""",
        "ru": """Тренировка ног""",
        "pt": """Treino de perna""",
        "en": """Leg workout""",
        "it": """Allenamento delle gambe""",
        "hr": """Trening za noge""",
        "fr": """Entraînement des jambes""",
        "el": """Προπόνηση ποδιών""",
        "cs": """Trénink nohou""",
        "id": """Latihan kaki""",
        "es": """Entrenamiento de piernas""",
        "ar": """تمرين الساق""",
      } +
      {
        "zh": """颈肩拉伸""",
        "tr": """Boyun ve omuz esnemeleri""",
        "nl": """Nek en schouder rekken""",
        "de": """Nacken- und Schulterdehnungen""",
        "ru": """Растяжка шеи и плеч""",
        "pt": """Alongamento de pescoço e ombros""",
        "en": """Neck and shoulder stretches""",
        "it": """Stretching per collo e spalle""",
        "hr": """Istezanje vrata i ramena""",
        "fr": """Étirements de la nuque et des épaules""",
        "el": """Διατάσεις αυχένα και ώμων""",
        "cs": """Protažení krku a ramen""",
        "id": """Peregangan leher dan bahu""",
        "es": """Neck and shoulder stretches""",
        "ar": """تمتد الرقبة والكتف""",
      } +
      {
        "zh": """跳爆竹""",
        "tr": """Jack zıplama""",
        "nl": """Klapsprongen""",
        "de": """Hampelmänner""",
        "ru": """Джампинг-Джек""",
        "pt": """Polichinelos""",
        "en": """Jumping jacks""",
        "it": """Jumping jack""",
        "hr": """Skokovi s raskorakom""",
        "fr": """Sauts en étoile""",
        "el": """Eκτάσεις-ανατάσεις με αναπήδηση""",
        "cs": """Skákací panák""",
        "id": """Jumping jack""",
        "es": """Polichilenas""",
        "ar": """قفز الرافعات""",
      } +
      {
        "zh": """起始姿势：
 双脚并拢站立，背部挺直，手臂放在两侧。

 步骤：
 1. 双腿张开，双手过顶跳到某个位置。
 2. 跳回起始位置。
 3. 重复。""",
        "tr":
            """1. Ayaklar bir arada ve kollar yanlarda olacak şekilde ayakta durun
2. Bacaklar geniş açılacak ve eller baş üzerinde birbirine değecek şekilde zıplayın
3. Tekrarlayın""",
        "nl": """1. Staan met voeten samen en armen aan de zijkanten
2. Spring naar een positie met de benen wijd uitgespreid en de handen raken overhead
3. Herhalen""",
        "de": """Ausgangsposition:
Stehen Sie mit den Füßen zusammen, mit geradem Rücken und den Armen an den Seiten.

Schritte:
1. Springen Sie in eine Position, in der die Beine weit gespreizt sind und die Hände sich über dem Kopf berühren.
2. Springen Sie zurück in die Ausgangsposition.
3. Wiederholen Sie.""",
        "ru": """1. Встаньте так, чтобы ноги были вместе, а руки по бокам
2. Прыгните в положение, когда ноги широко расставлены, а руки касаются над головой
3. Повторите""",
        "pt":
            """1. Fique com seus pés juntos e os braços em repouso de cada lado
2. Pule para uma posição em que suas pernas fiquem abertas e as mãos toquem sob sua cabeça
3. Repita""",
        "en": """Starting position:
Stand with feet together, back straight, and arms at the sides.

Steps:
1. Jump to a position with the legs spread wide and the hands touching overhead.
2. Jump back to the starting position.
3. Repeat.""",
        "it":
            """1. Stai in piedi, a piedi uniti e con le braccia lunghi i fianchi, ginocchia e gomiti leggermente piegati
2. Fai un piccolo salto, nel mentre divarica le gambe alla larghezza delle spalle e porta le braccia sopra la testa fino a toccarsi
3. Ripeti""",
        "hr": """1. Stani ravno sa skupljenim nogama i rukama uz tijelo
2. Skoči u položaj s raširenim nogama i dodirni ruke iznad glave
3. Ponovi""",
        "fr": """1. Debout, pieds joints et bras le long du corps
2. Sauter jusqu'à une position où les jambes sont écartées et les mains se touchent au-dessus de la tête.
3. Répétez""",
        "el": """1. Σταθείτε με τα πόδια ενωμένα και τα χέρια στα πλάγια
2. Πηδήξτε σε μια θέση με τα πόδια ανοιχτά και τα χέρια να εφάπτονται από επάνω
3. Επαναλάβετε""",
        "cs": """1. Stůj vzpřímeně, nohy těsně vedle sebe a ruce podél těla
2. Skoč na místě a roztáhni přitom nohy bez prohnutí kolen a rukama tleskni nad hlavou
3. Skoč zpět a neustále opakuj""",
        "id": """1. Berdiri dengan kaki bersama-sama dan lengan di sisi
2. Melompat ke posisi dengan kaki melebar dan tangan menyentuh di atas kepala
3. Ulangi""",
        "es": """1. Párese con los pies juntos y los brazos a los lados
2. Salte a una posición con las piernas abiertas y las manos tocandose por encima de la cabeza
3. Repita""",
        "ar": """وضع البداية:
قفي بالقدمين معًا ، وظهرك مستقيماً ، وذراعيك على الجانبين.

خطوات:
1. القفز إلى وضع مع انتشار الساقين على نطاق واسع ولمس اليدين فوق الرأس.
2. العودة إلى نقطة البداية.
3. كرر.""",
      } +
      {
        "zh": """直角坐墙""",
        "tr": """Duvara yaslanarak oturma""",
        "nl": """Muurzitten""",
        "de": """Wand sitzen""",
        "ru": """Приседание у стены""",
        "pt": """Agachamento parede""",
        "en": """Wall sit""",
        "it": """Seduta a muro""",
        "hr": """Čučnjevi uz zid""",
        "fr": """Assis dos au mur""",
        "el": """Κάθισμα τοίχου""",
        "cs": """Sed u stěny""",
        "id": """Duduk di dinding""",
        "es": """Asiento en pared""",
        "ar": """الجلوس على الحائط""",
      } +
      {
        "zh": """起始姿势：
背部应该接触墙壁，膝盖成直角并位于角度的正上方。 面朝前，双脚分开与肩同宽，并牢牢踩在地上。
 要达到这个姿势，你可以靠在墙上，脚离墙约 2 英尺。 滑下墙壁，保持背部紧贴墙壁，直到膝盖成直角。

 步骤：
 1. 保持这个姿势。

 注：
 股四头肌疼痛是正常的，如果感觉膝盖或膝盖骨疼痛，请停止。""",
        "tr":
            """1. Öne bakacak şekilde duvara yaslanın, ayaklar yere sıkıca oturtulmuş, omuz genişliğinde açılmış ve duvardan yaklaşık 60 cm uzakta olsun
2. Bacaklar dik açı yapana kadar sırtınızı bastırarak duvardan aşağı kaydırın. Dizler doğrudan ayak bileklerinin üzerinde olmalıdır
Kuadriseps ağrısı normaldir, dizde veya diz kapağında ağrı hissederseniz durun""",
        "nl":
            """1. Leun tegen de muur en zet je voeten stevig op de grond; houd je schouders los en 60 cm van de muur verwijderd.
2. Zak naar beneden en zorg dat je rug tegen de muur blijft totdat je knieën zich direct boven de enkels bevinden.
Pijn in je dijbeenspieren is normaal. Stop als je pijn in je knie of knieholte voelt""",
        "de": """Ausgangsposition:
Der Rücken berührt die Wand, die Knie stehen im rechten Winkel und befinden sich direkt über den Winkeln. Der Blick sollte nach vorne gerichtet sein, die Füße stehen schulterbreit auseinander und sind fest auf dem Boden aufgesetzt.
Um in diese Position zu gelangen, können Sie sich an die Wand lehnen, die Füße etwa 2 Fuß von der Wand entfernt. Rutschen Sie mit dem Rücken an der Wand herunter, bis Ihre Knie einen rechten Winkel bilden.

Schritte:
1. Behalten Sie diese Position bei.

Anmerkungen:
Schmerzen im Quadrizeps sind normal, hören Sie auf, wenn Sie Schmerzen im Knie oder in der Kniescheibe verspüren.""",
        "ru":
            """1. Станьте спиной к стене, прислонитесь. Ноги подайте чуть вперед, расставив их на ширине плеч. Носки разверните в разные стороны.
2. Плавно скользите вниз по стене, держа спину прижатой к ней, пока ноги не окажутся под прямым углом.
Боль в четырехглавой мышце нормальная, прекратите, если чувствуете боль в колене или коленной чашечке""",
        "pt":
            """1. Encoste na parede, de frente com os pés firmes no chão, alinhados na largura dos ombros e afastados da parede cerca de 60 centímetros
2. Deslize pela parede, mantendo as costas pressionada, até que as pernas fiquem em ângulo reto, paralelas ao chão. Os joelhos devem estar diretamente acima dos tornozelos.
Dor no quadríceps é normal. Pare se sentir dor nos joelhos ou na rótula do joelho""",
        "en": """Starting position:
Your back should be touching the wall, your knees at a right angle and positioned right above the angles. You should be facing forward, with feet shoulder-width apart and planted firmly on the ground.
To get to this position, you can lean against the wall, feet about 2 feet away from the wall. Slide down the wall, keeping the back pressed to it, until your knees are at a right angle.

Steps:
1. Maintain this position.

Notes:
Quadricep pain is normal, stop if feeling pain in the knee or kneecap.""",
        "it":
            """1. Appoggiati al muro, rivolto in avanti e con i piedi ben piantati sul terreno, le spalle divaricate e a circa 2 piedi di distanza dal muro
2. Scivola giù lungo il muro, tenendo la schiena premuta contro di esso, fino a quando le gambe sono ad angolo retto. Le ginocchia dovrebbero essere direttamente sopra le caviglie
Il dolore al quadricipite è normale, interrompi se avverti dolore al ginocchio o alla rotula""",
        "hr": """Starting position:
Your back should be touching the wall, your knees at a right angle and positioned right above the angles. You should be facing forward, with feet shoulder-width apart and planted firmly on the ground.
To get to this position, you can lean against the wall, feet about 2 feet away from the wall. Slide down the wall, keeping the back pressed to it, until your knees are at a right angle.

Steps:
1. Maintain this position.

Notes:
Quadricep pain is normal, stop if feeling pain in the knee or kneecap.""",
        "fr":
            """1. Appuyez-vous contre le mur, en regardant vers l'avant, les pieds fermement plantés au sol, écartés de la largeur des épaules et à une distance d'environ 60 cm du mur.
2. Glissez le long du mur, en gardant le dos appuyé contre lui, jusqu'à ce que les jambes forment un angle droit. Les genoux doivent être directement au-dessus des chevilles.
La douleur au quadriceps est normale, arrêtez si vous ressentez une douleur au genou ou à la rotule""",
        "el":
            """1. Ακουμπήστε στον τοίχο, στραμμένοι προς τα εμπρός και με τα πόδια σταθερά στο έδαφος, στο πλάτος των ώμων και περίπου 60 cm μακριά από τον τοίχο
2. Σύρετε την πλάτη σας προς τα κάτω στον τοίχο, κρατώντας την πιεσμένη πάνω του, μέχρι τα πόδια σας να βρίσκονται σε ορθή γωνία. Τα γόνατα πρέπει να είναι ακριβώς πάνω από τους αστραγάλους
Ο πόνος στον τετρακέφαλο είναι φυσιολογικός, σταματήστε εάν αισθάνεστε πόνο στο γόνατο ή την επιγονατίδα""",
        "cs":
            """1. Opřete se o zeď, směřující dopředu a s nohama pevně zasazenými na zemi, šířka ramen od sebe a asi 2 nohy od zdi
2. Posuňte dolů po stěně a držte záda přitlačenou k ní, dokud nohy nejsou v pravém úhlu. Kolena by měla být přímo nad kotníky
Quadricep bolest je normální, zastavte se, pokud máte pocit bolesti v koleni nebo kolenním kloubu""",
        "id":
            """1. Bersandar ke dinding, menghadap ke depan dan dengan kaki tertanam kuat di tanah, selebar bahu dan sekitar 2 kaki dari dinding
2. Geser ke bawah dinding, dengan menahan punggung ditekan, sampai kaki berada pada sudut kanan. Lutut harus tepat di atas pergelangan kaki
Nyeri paha depan normal, hentikan jika merasakan nyeri pada lutut atau tempurung lutut""",
        "es":
            """1. Apóyese en la pared, mirando hacia adelante y con los pies plantados firmemente en el suelo, sus hombros deben separarse y estar a 50 centímetros de la pared
2. Deslízate por la pared, manteniendo la espalda presionada a ella, hasta que las piernas estén en ángulo recto. Las rodillas deben estar directamente sobre los tobillos
El dolor en el cuádriceps es normal, deténgase si siente dolor en la rodilla o en la rótula""",
        "ar": """وضع البداية:
يجب أن يكون ظهرك ملامسًا للجدار ، وركبتيك بزاوية قائمة ومتمركزة فوق الزوايا تمامًا. يجب أن تكون متجهًا للأمام ، مع المباعدة بين القدمين بمقدار عرض الكتفين ومثبتة بقوة على الأرض.
للوصول إلى هذا الوضع ، يمكنك الاتكاء على الحائط ، على بعد حوالي قدمين من الحائط. انزلق على الحائط مع الاستمرار في الضغط على الظهر حتى تصبح ركبتيك بزاوية قائمة.

خطوات:
1. الحفاظ على هذا الموقف.

ملحوظات:
ألم العضلة الرباعية طبيعي ، توقف إذا شعرت بألم في الركبة أو الرضفة.""",
      } +
      {
        "zh": """俯卧撑""",
        "tr": """Şınav""",
        "nl": """Opdrukken""",
        "de": """Liegestütze""",
        "ru": """Отжимания""",
        "pt": """Flexão de braços""",
        "en": """Push-ups""",
        "it": """Flessioni""",
        "hr": """Sklekovi""",
        "fr": """Pompes""",
        "el": """Κάμψεις""",
        "cs": """Kliky""",
        "id": """Push-up""",
        "es": """Lagartijas""",
        "ar": """تمرين الضغط""",
      } +
      {
        "zh": """起始姿势：
先做俯卧撑的起始姿势，双手和脚趾接触地面，背部、手臂和腿伸直。要做这个姿势，你可以趴在地上，将双手朝下放在头的旁边，然后将手臂抬起，直到手臂伸直。

步骤：
1. 弯下肘部，直到你的胸部几乎接触到地面。确保你的背部始终是直的。
2. 用你的双臂将自己撑起来，回到起始位置。
3. 重复上述动作。""",
        "tr": """1. Karnınız üzerine uzanın
2. Ellerinizi kulaklarınızın yakınına yerleştirin
3. Sırtı düz tutarak kollar düz olana kadar karnınızı yukarı kaldırmak için kollarınızı kullanın
4. Göğüs neredeyse yere değene kadar kolları bükün, sırtın düz olduğundan emin olun
5. 3. adımdan itibaren tekrarlayın""",
        "nl": """Beginpositie:
Kom in de start push-up positie, met je handen en tenen tegen de grond en rug, armen en benen recht. Om in deze positie te komen, kun je op je buik gaan liggen, je handen naar beneden gericht naast je hoofd plaatsen, en je armen omhoog tillen tot ze recht zijn.

Stappen:
1. Buig bij de ellebogen tot je borst bijna de grond raakt, zorg ervoor dat je rug altijd recht is.
2. Gebruik je armen om jezelf weer op te tillen naar de beginpositie.
3. Herhaal.""",
        "de": """Ausgangsposition:
Starte mit der Ausgangsposition für Liegestütze, wobei Hände und Zehen den Boden berühren und Arme und Beine gerade sind. Um diese Position zu erreichen, kannst Du Dich auf den Bauch legen, die Hände nach unten neben den Kopf legen und die Arme nach oben heben, bis sie gerade sind.

Die Schritte:
1. Beuge den Ellbogen, bis die Brust fast den Boden berührt. Achte darauf, dass der Rücken immer gerade ist.
2. Hebe Dich mit den Armen wieder in die Ausgangsposition.
3. Wiederhole.""",
        "ru": """1. Лечь на горизонтальную ровную поверхность.
2. Руки при этом должны быть на ширине плеч.
3. Разогните руки, пока руки и спина не выпрямятся.
4. Согните руки, пока грудь почти не коснется земли, убедившись, что спина выпрямлена. 
5. Повторите с шага 3""",
        "pt": """Posição inicial:
Entre na posição inicial de flexão, com as mãos e os dedos dos pés tocando o chão e as costas, braços e pernas retos. Para chegar a essa posição, você pode deitar de bruços, colocar as mãos voltadas para baixo ao lado da cabeça e levantar os braços até que estejam retos.

Passos:
1. Dobre os cotovelos até que seu peito quase toque o chão, certificando-se de que suas costas estejam sempre retas.
2. Use os braços para voltar à posição inicial.
3. Repita.""",
        "en": """Starting position:
Get into the starting push-up position, with your hands and toes touching the ground and back, arms and legs straight. To get to this position, you can lie down on your stomach, place your hands facing down next to your head, and lifting your arms up until they are straight.

Steps:
1. Bend at the elbows until your chest almost touches the ground, making sure your back is straight at all times.
2. Use your arms to lift yourself back up to starting position.
3. Repeat.""",
        "it": """Posizione di partenza:
Mettetevi nella posizione di partenza delle flessioni, con le mani e le dita dei piedi che toccano il suolo e la schiena, le braccia e le gambe dritte. Per arrivare a questa posizione, puoi sdraiarti a pancia in giù, mettere le mani rivolte verso il basso accanto alla testa, e sollevare le braccia fino a quando sono dritte.

Passi:
1. Piegare i gomiti fino a quando il petto tocca quasi il suolo, assicurandosi che la schiena sia sempre dritta.
2. Usare le braccia per sollevarsi di nuovo fino alla posizione di partenza.
3. Ripetere.""",
        "hr": """Starting position:
Get into the starting push-up position, with your hands and toes touching the ground and back, arms and legs straight. To get to this position, you can lie down on your stomach, place your hands facing down next to your head, and lifting your arms up until they are straight.

Steps:
1. Bend at the elbows until your chest almost touches the ground, making sure your back is straight at all times.
2. Use your arms to lift yourself back up to starting position.
3. Repeat.""",
        "fr": """Position de départ: 
Mettez-vous dans la position de départ des pompes, les mains et les orteils touchant le sol, et le dos, les bras et les jambes tendus. Pour arriver à cette position, vous pouvez vous allonger sur le ventre, placer vos mains à côté de votre tête et lever vos bras jusqu'à ce qu'ils soient droits.

Étapes :
1. Pliez les bras jusqu'à ce que votre poitrine touche presque le sol, en vous assurant que votre dos reste bien droit.
2. Utilisez vos bras pour vous soulever pour revenir à la position de départ.
3. Répétez""",
        "el": """Θέση εκκίνησης:
Μπείτε στην αρχική θέση κάμψεων, με τα χέρια και τα δάχτυλα των ποδιών σας να αγγίζουν το έδαφος, και την πλάτη, τα χέρια και τα πόδια ίσια. Για να φτάσετε σε αυτή τη θέση, μπορείτε να ξαπλώσετε στο στομάχι σας, να τοποθετήσετε τα χέρια σας προς τα κάτω δίπλα στο κεφάλι σας και να σηκώσετε τα χέρια σας μέχρι να είναι ίσια.

Βήματα:
1. Λυγίστε στους αγκώνες μέχρι το στήθος σας να αγγίξει σχεδόν το έδαφος, φροντίζοντας η πλάτη σας να είναι ίσια ανά πάσα στιγμή.
2. Χρησιμοποιήστε τα χέρια σας για να σηκώσετε τον εαυτό σας πίσω στην αρχική θέση.
3. Επαναλάβετε.""",
        "cs": """Výchozí poloha:
Zaujměte výchozí polohu kliku, s dlaněmi a prsty na nohou dotýkajícími se země a rovnými zády, pažemi a nohama. Pro dosažení této pozice si můžete lehnout na břicho, dlaně položit na zem vedle hlavy, a postupně se rukama zvednout, dokud nebudou rovné.

Kroky:
1. Ohněte postupně lokty dokud se vaše hruď nedotkne země. Vaše záda by měla být rovná během celého pohybu.
2. Zvedněte se pažemi zpět do výchozí polohy.
3. Opakujte od začátku.""",
        "id": """Posisi awal:
Masuk ke posisi push-up awal, dengan tangan dan kaki menyentuh tanah dan punggung, lengan dan kaki lurus. Untuk mencapai posisi ini, Anda bisa berbaring tengkurap, meletakkan tangan menghadap ke bawah di samping kepala, dan mengangkat tangan ke atas hingga lurus.

Langkah:
1. Tekuk siku hingga dada hampir menyentuh lantai, pastikan punggung selalu lurus.
2. Gunakan lengan Anda untuk mengangkat diri kembali ke posisi awal.
3. Ulangi.""",
        "es": """1. Acuéstese boca abajo.
2. Ponga sus manos cerca de sus orejas.
3. Usa los brazos para levantar el estómago hasta que los brazos estén rectos, manteniendo la espalda recta
4. Doble los brazos hasta que el pecho casi toque el suelo, asegurándose de que la espalda esté recta.
5. Repita desde el paso 3""",
        "ar": """وضع البداية:
ادخل إلى وضع بدء الدفع ، بحيث تلامس يديك وأصابع قدمك الأرض والظهر ، وذراعيك وساقيك مستقيمة. للوصول إلى هذا الوضع ، يمكنك الاستلقاء على بطنك ، ووضع يديك في مواجهة رأسك ، ورفع ذراعيك لأعلى حتى تستقيم.

خطوات:
1. انحنى عند المرفقين حتى يلمس صدرك الأرض تقريبًا ، وتأكد من أن ظهرك مستقيم في جميع الأوقات.
2. استخدم ذراعيك لرفع نفسك احتياطيًا إلى وضع البداية.
3. كرر.""",
      } +
      {
        "zh": """仰卧起坐""",
        "tr": """Yarım mekik""",
        "nl": """Crunch""",
        "de": """Bauchpressen""",
        "ru": """Скручивания""",
        "pt": """Abdominal""",
        "en": """Crunches""",
        "it": """Addominali""",
        "hr": """Trbušnjaci""",
        "fr": """Abdominaux""",
        "el": """Κοιλιακοί""",
        "cs": """Sedolehy""",
        "id": """Crunch""",
        "es": """Abdominales""",
        "ar": """الطحن""",
      } +
      {
        "zh": """起始姿势：
 膝盖弯曲，脸朝上躺在地板上。

 步骤：
 1. 朝骨盆方向弯曲肩膀。 双手可以放在脖子后面或脖子旁边，也可以交叉在胸前。
 2.回到初始姿势。
 3. 重复。""",
        "tr": """1. Dizlerinizi bükerek yere sırtüstü yatın.
2. Omuzları leğen kemiğine doğru bükün. Eller boynun arkasında veya yanında olabilir ya da göğsün üzerinden geçebilir.
3. Tekrarlayın""",
        "nl": """1. Ga op je rug liggen en buig je knieën.
2. Draai je schouders richting je bekken. Houd je handen achter of naast je nek of kruislings over je borstkas.
3. Herhaal""",
        "de": """Ausgangsposition:
Legen Sie sich mit dem Gesicht nach oben auf den Boden und beugen Sie die Knie.

Schritte:
1. Beugen Sie die Schultern zum Becken. Die Hände können hinter oder neben dem Nacken oder über der Brust gekreuzt sein.
2. Kehren Sie in die Ausgangsposition zurück.
3. Wiederholen Sie.""",
        "ru": """1. Лягте лицом вверх на пол, согнув колени.
2. Поднимите корпус в направлении согнутых колен. Уберите руки под затылок или скрестите на груди;
3. Повторить""",
        "pt":
            """1. Deite-se de barriga para cima no chão com os joelhos dobrados.
2. Curve os ombros em direção a pélvis. As mãos podem ficar atrás ou do lado do pescoço ou cruzadas sobre o peito.
3. Repita""",
        "en": """Starting position:
Lie down face up on the floor with knees bent.

Steps:
1. Curl the shoulders towards the pelvis. The hands can be behind or beside the neck or crossed over the chest.
2. Return to the initial position.
3. Repeat.""",
        "it":
            """1. Sdraiati a pancia in su sul pavimento con le ginocchia piegate.
2. Solleva il busto verso il bacino, a 30° / 40° dal suolo. Le mani possono essere dietro o accanto al collo o incrociate sul petto.
3. Ripeti""",
        "hr": """Starting position:
Lie down face up on the floor with knees bent.

Steps:
1. Curl the shoulders towards the pelvis. The hands can be behind or beside the neck or crossed over the chest.
2. Return to the initial position.
3. Repeat.""",
        "fr": """1. Allongez-vous sur le sol, face contre terre, genoux pliés.
2. Courbez les épaules vers le bassin. Les mains peuvent être derrière ou à côté du cou ou croisées sur la poitrine.
3. Répétez""",
        "el": """1. Ξαπλώστε ανάσκελα στο πάτωμα με τα γόνατα λυγισμένα.
2. Κυρτώστε τους ώμους προς τη λεκάνη. Τα χέρια μπορεί να είναι πίσω ή δίπλα από τον αυχένα ή σταυρωμένα πάνω από το στήθος.
3. Επαναλάβετε""",
        "cs": """1. Lehni si na zem hlavou nahoru s pokrčenými koleny.
Zvedni záda tak, aby se tvá ramena co nejblíže přiblížily ke kolenům. Plosky nohou včetně prstů by měly zůstat na zemi. Ruce mohou být za hlavou nebo přeložené v kříž na hrudi.
3. Opakuj""",
        "id": """1. Tiarap di lantai dengan lutut bengkok.
2. Ikatkan bahumu ke pinggulnya. Tangan bisa berada di belakang atau di samping leher atau menyeberang di atas dada.
3. Ulangi""",
        "es": """1. Acuéstese boca arriba en el suelo con las rodillas dobladas.
2. Flexione los hombros hacia la pelvis. Las manos pueden estar detrás o al costado del cuello o cruzadas sobre el pecho.
3. Repita""",
        "ar": """1. الاستلقاء على الأرض مع ثني الركبتين.
2. لف الكتفين نحو الحوض. يمكن أن تكون اليدين خلف العنق أو بجانبه أو متقاطعتين فوق الصدر.
3. كرر التمرين""",
      } +
      {
        "zh": """仰卧起坐""",
        "tr": """Adım atma""",
        "nl": """Opstappen""",
        "de": """Steigungen""",
        "ru": """Степ-ап""",
        "pt": """Progressos""",
        "en": """Step-ups""",
        "it": """Step""",
        "hr": """Stupanje na stolicu""",
        "fr": """Marches""",
        "el": """Σκαλιά""",
        "cs": """Výšlapy""",
        "id": """Step-up""",
        "es": """Subida a peldaño""",
        "ar": """صعود-الكرسي""",
      } +
      {
        "zh": """起始姿势：
 面对椅子站立。

 步骤：
1. 走到椅子上。
2. 从椅子上走下来。
3. 重复。""",
        "tr": """1. Sandalyeye dönük şekilde durun
2. Sandalyeye çıkın
3. Sandalyeden inin
4. Tekrarlayın""",
        "nl": """1. Ga voor een stoel staan.
2. Ga op de stoel staan.
3. Ga van de stoel af.
4. Herhaal""",
        "de": """Ausgangsposition:
Stellen Sie sich vor einen Stuhl.

Schritte:1. Steigen Sie auf den Stuhl.
2. Steigen Sie vom Stuhl ab.
3. Wiederholen Sie""",
        "ru": """1. Встаньте перед стулом
2. Встаньте на стул
3. Слезьте со стула
4. Повторите""",
        "pt": """1. Fique de pé de frente para uma cadeira
2. Suba na cadeira
3. Desça da cadeira
4. Repita""",
        "en": """Starting position:
Stand facing a chair.

Steps:
1. Step up onto the chair.
2. Step off the chair.
3. Repeat.""",
        "it": """1. Stare in piedi di fronte a una sedia
2. Salire sulla sedia
3. Scendere dalla sedia
4. Ripeti""",
        "hr": """1. Stani ispred stolca
2. Zakorači na stolac
3. Siđi sa stolca
4. Ponovi""",
        "fr": """1. Tenez-vous debout face à une chaise
2. Montez sur la chaise
3. Descendez de la chaise
4. Répétez""",
        "el": """1. Σταθείτε κοιτάζοντας μια καρέκλα
2. Ανεβείτε στην καρέκλα
3. Κατεβείτε από την καρέκλα
4. Επαναλάβετε""",
        "cs": """1. Stůj čelem k židli.
2. Stoupni si na židli
3. Sestup dolu ze židle
4. Opakuj""",
        "id": """1. Berdiri menghadap kursi
2. Naik ke kursi
3. Step off the chair
4. Ulangi""",
        "es": """1. Párese frente a una silla
2. Súbase a la silla
3. Bájese de la silla
4. Repita""",
        "ar": """1. الوقوف في مواجهة كرسي
2. اصعد على الكرسي
3. انزل عن الكرسي
4. كرر التمرين""",
      } +
      {
        "zh": """深蹲""",
        "tr": """Çömelme""",
        "nl": """Hurkzitten""",
        "de": """Kniebeugen""",
        "ru": """Приседания""",
        "pt": """Agachamentos""",
        "en": """Squats""",
        "it": """Squat (Stacchi)""",
        "hr": """Čučnjevi""",
        "fr": """Accroupi""",
        "el": """Βαθιά καθίσματα""",
        "cs": """Dřepy""",
        "id": """Jongkok""",
        "es": """Sentadillas""",
        "ar": """القرفصاء""",
      } +
      {
        "zh": """起始姿势：
 站立，双脚分开与肩同宽。

 步骤：
 1. 将臀部向后移动并弯曲膝盖和臀部降低躯干，直到臀部低于膝盖。
 2. 回到初始姿势。
 3. 重复。""",
        "tr": """1. Ayaklar omuz genişliğinde açık durun
2. Kalçayı geriye doğru itin ve gövdeyi aşağı indirmek için dizleri ve kalçayı bükün
3. Tekrarlayın""",
        "nl":
            """1. Ga staan en zet je voeten zó dat ze in verhouding staan met je schouders.
2. Draai je heupen naar achteren en buig je knieën en heupen om je bovenlichaam naar beneden te duwen.
3. Herhaal""",
        "de": """Ausgangsposition:
Stehen Sie mit schulterbreit auseinander stehenden Füßen.

Schritte:
1. Bewegen Sie die Hüfte nach hinten und beugen Sie Knie und Hüfte, um den Oberkörper zu senken, bis die Hüfte tiefer als die Knie ist.
2. Kehren Sie in die Ausgangsposition zurück.
3. Wiederholen Sie.""",
        "ru": """1. Встаньте так, чтобы ноги были на ширине плеч
2. Отведите бедра назад и согните колени, чтобы опустить туловище
3. Повторить""",
        "pt": """1. Fique com os pés alinhados com os ombros
2. Mova o quadril para trás e dobre os joelhos e o quadril para abaixar o troco
3. Repita""",
        "en": """Starting position:
Stand with feet shoulder-width apart.

Steps:
1. Move the hips back and bend the knees and hips to lower the torso until your hips are lower than your knees.
2. Return back to the initial position.
3. Repeat.""",
        "it": """1. Stai con i piedi alla larghezza delle spalle
2. Sposta i fianchi indietro e piega le ginocchia e i fianchi per abbassare il busto
3. Ripeti""",
        "hr": """Starting position:
Stand with feet shoulder-width apart.

Steps:
1. Move the hips back and bend the knees and hips to lower the torso until your hips are lower than your knees.
2. Return back to the initial position.
3. Repeat.""",
        "fr": """1. Debout, les pieds écartés à la largeur des épaules
2. Déplacez les hanches vers l'arrière et pliez les genoux et les hanches pour abaisser le torse.
3. Répétez""",
        "el": """1. Σταθείτε με τα πόδια ανοιχτά στο πλάτος των ώμων
2. Μετακινήστε τους γοφούς προς τα πίσω και λυγίστε τα γόνατα και τους γοφούς για να χαμηλώσετε τον κορμό
3. Επαναλάβετε""",
        "cs": """1. Stůj s nohama vzdálenými o šířku ramen.
2. Posuň kyčel dozadu a pokrč kolena, dokud nebudeš mít stehna paralelně se zemí.
3. Opakuj""",
        "id": """1. Berdiri dengan kaki selebar bahu
2. Pindahkan pinggul ke belakang dan tekuk lutut dan pinggul ke bawah batang tubuh
3. Ulangi""",
        "es": """1. Levántese con los pies separados al ancho de hombros
2. Mueva las caderas hacia atrás y doble las rodillas y caderas para bajar el torso
3. Repita""",
        "ar": """1. الوقوف مع مباعدة قدميه عرض الكتفين
2. حرك الوركين للخلف وثني الركبتين والوركين لخفض الجذع
3. كرر التمرين""",
      } +
      {
        "zh": """撑椅肱三头肌撑体""",
        "tr": """Sandalye ile dalma""",
        "nl": """Stoelzakken""",
        "de": """Stuhl Stütze""",
        "ru": """Обратные отжимания от стула""",
        "pt": """Tríceps no banco""",
        "en": """Chair dips""",
        "it": """Piegamenti sulla sedia""",
        "hr": """Propadanje ut pomoć stolice""",
        "fr": """Dips sur chaise""",
        "el": """Βυθίσεις καρέκλας""",
        "cs": """Dipy na židli""",
        "id": """Kursi dips""",
        "es": """Bajadas en silla""",
        "ar": """تراجع كرسي""",
      } +
      {
        "zh": """起始姿势：
 坐在椅子的前缘上，背部挺直，双手握住前缘。 仍然握住椅子的边缘，双臂伸展，抬起你的臀部并稍微向前走，使其距离椅子几英寸。

 步骤：
 1. 慢慢降低身体，保持背部挺直，直到双臂成直角。
 2. 再次将身体抬起至初始姿势，双臂伸展。
 3. 重复。""",
        "tr":
            """1. Sırt düz, eller ön kısmını tutacak şekilde bir sandalyenin ön tarafına oturun
2. Sandalyenin kenarını tutmaya devam ederek kollarınızı uzatın, kalçanızı kaldırın ve sandalyeden birkaç cm uzakta olacak şekilde hafifçe öne doğru yürüyün.
3. Sırtınızı düz tutarak, kollar dik açıda olana kadar vücudunuzu yavaşça indirin.
4. Kollarınızı uzatarak vücudunuzu tekrar önceki durumuna kaldırın
5. 3. ve 4. adımları tekrarlayın""",
        "nl":
            """1. Ga zitten op de voorkant van een stoel, rug recht, handen die de voorkant houden
2. Nog steeds met de rand van de stoel, armen uitgebreid, til je kont en loop iets naar voren, zodat het een paar centimeter van de stoel.
3. Laat uw lichaam langzaam zakken, houd de rug recht, totdat de armen in een rechte hoek staan
4. Til je lichaam weer op naar de vorige positie, armen uitgestrekt
5. Herhaal stap 3 en 4""",
        "de": """Ausgangsposition:
Setzen Sie sich mit geradem Rücken auf die Vorderkante eines Stuhls, die Hände halten die Vorderkante. Halten Sie sich mit ausgestreckten Armen an der Stuhlkante fest, heben Sie den Po an und gehen Sie leicht nach vorne, so dass er sich einige Zentimeter vom Stuhl entfernt befindet.

Schritte:
1. Senken Sie Ihren Körper langsam ab, halten Sie dabei den Rücken gerade, bis Ihre Arme einen rechten Winkel bilden.
2. Heben Sie Ihren Körper mit gestreckten Armen wieder in die Ausgangsposition.
3. Wiederholen Sie die Übung.""",
        "ru":
            """1. Сядьте на передний край стула, спина прямая, руки держатся за передний край
2. Все еще держась за край стула, вытянув руки, поднимите ягодицы и слегка подвиньтесь вперед, чтобы они оказались в нескольких сантиметрах от стула.
3. Медленно опустите тело, держа спину прямо, пока руки не окажутся под прямым углом
4. Снова поднимите тело в прежнее положение, вытянув руки
5. Повторите шаги 3 и 4""",
        "pt":
            """1. Sente-se na borda de uma cadeira, costas retas, mãos segurando a borda dianteira
2. Ainda segurando a borda da cadeira, braços estendidos, levante o traseiro e caminhe um pouco para frente de modo que fique a pouco centímetros da cadeira
3. Abaixe lentamente seu corpo, mantendo as costas retas, até que os braços fiquem em ângulo reto
4. Levante seu corpo novamente para a posição anterior, braços estendidos
5. Repita os passos 3 e 4""",
        "en": """Starting position:
Sit down on the front edge of a chair, back straight, hands holding the front edge. Still holding the edge of the chair, arms extended, lift your butt and walk forward slightly so that it is a few inches from the chair.

Steps:
1. Slowly lower your body, keeping the back straight, until your arms are at a right angle.
2. Raise your body again to the initial position, arms extended.
3. Repeat.""",
        "it":
            """1. Siediti sul bordo anteriore di una sedia, con la schiena dritta, le mani che tengono il bordo anteriore
2. Tenendo ancora il bordo della sedia, le braccia tese, solleva il sedere e cammina leggermente in avanti in modo che si trovi a pochi centimetri dalla sedia.
3. Abbassa lentamente il corpo, mantenendo la schiena dritta, fino a quando le braccia sono ad angolo retto
4. Solleva nuovamente il corpo nella posizione precedente, le braccia estese
5. Ripetere i passaggi 3 e 4""",
        "hr": """Starting position:
Sit down on the front edge of a chair, back straight, hands holding the front edge. Still holding the edge of the chair, arms extended, lift your butt and walk forward slightly so that it is a few inches from the chair.

Steps:
1. Slowly lower your body, keeping the back straight, until your arms are at a right angle.
2. Raise your body again to the initial position, arms extended.
3. Repeat.""",
        "fr":
            """1. Asseyez-vous sur le bord avant d'une chaise, le dos droit, les mains tenant le bord avant.
2. Toujours en tenant le bord de la chaise, bras tendus, soulevez vos fesses et avancez légèrement de façon à ce qu'elles soient à quelques centimètres de la chaise.
3. Abaissez lentement votre corps, en gardant le dos droit, jusqu'à ce que les bras forment un angle droit.
4. Relevez votre corps jusqu'à la position précédente, bras tendus.
5. Répétez les étapes 3 et 4""",
        "el":
            """1. Καθίστε στην μπροστινή άκρη μιας καρέκλας, με την πλάτη ίσια, τα χέρια να κρατούν την μπροστινή άκρη
2. Κρατώντας ακόμα την άκρη της καρέκλας, με τα χέρια τεντωμένα, σηκώστε τον πισινό σας και περπατήστε ελαφρώς προς τα εμπρός, ώστε να απέχει λίγα εκατοστά από την καρέκλα.
3. Χαμηλώστε αργά το σώμα σας, κρατώντας την πλάτη ίσια, μέχρι τα χέρια να βρίσκονται σε ορθή γωνία
4. Σηκώστε ξανά το σώμα σας στην προηγούμενη θέση, με τα χέρια τεντωμένα
5. Επαναλάβετε τα βήματα 3 και 4""",
        "cs":
            """1. Posaďte se na přední okraj židle, záda rovně, ruce držící přední okraj
2. Stále drží okraj židle, paže natažené, zvedněte zadek a lehce jděte dopředu, takže je to pár centimetrů od židle.
3. Pomalu snižte své tělo a držte záda rovně, dokud nejsou ramena v pravém úhlu
4. Zvedněte své tělo znovu do předchozí polohy, ramena prodloužena
5. Opakujte kroky 3 a 4""",
        "id":
            """1. Duduk di tepi depan kursi, punggung lurus, tangan memegang tepi depan
2. Masih memegang tepi kursi, lengan diperpanjang, mengangkat pantat Anda dan berjalan maju sedikit sehingga beberapa inci dari kursi.
3. Perlahan-lahan turunkan tubuh Anda, menjaga punggung lurus, sampai lengan berada di sudut yang tepat
4. Angkat tubuh Anda lagi ke posisi sebelumnya, lengan diperpanjang
5. Ulangi Langkah 3 dan 4""",
        "es":
            """1. Siéntese en el borde delantero de una silla, con la espalda recta y las manos sosteniendo el borde delantero
2. Sujetando el borde de la silla, con los brazos extendidos, levante los glúteos y camine un poco hacia adelante para que esté a unos centímetros de la silla
3. Baje lentamente su cuerpo, manteniendo la espalda recta, hasta que los brazos estén en ángulo recto
4. Levante el cuerpo de nuevo a la posición anterior con los brazos extendidos.
5. Repita los pasos 3 y 4""",
        "ar":
            """1. اجلس على الحافة الأمامية للكرسي ، وظهرك مستقيماً ، وتمسك يديك بالحافة الأمامية
2. استمر في الإمساك بحافة الكرسي ، وتمدد الذراعين ، وارفع مؤخرتك وامش للأمام قليلًا بحيث تكون على بعد بضع بوصات من الكرسي.
3. أنزل جسمك ببطء ، مع الحفاظ على استقامة الظهر ، حتى تصبح الذراعين في الزاوية اليمنى
4. ارفع جسمك مرة أخرى إلى الوضع السابق ، مد الذراعين
5. كرر الخطوتين 3 و 4""",
      } +
      {
        "zh": """平板支撑""",
        "tr": """Ön kol plank hareketi""",
        "nl": """Onderarmplanken""",
        "de": """Unterarmstütz""",
        "ru": """Планка""",
        "pt": """Prancha horizontal""",
        "en": """Forearm plank""",
        "it": """Plank avambraccio""",
        "hr": """Izdržaj na podlakticama""",
        "fr": """Planche pour les avant-bras""",
        "el": """Σανίδα πήχη""",
        "cs": """Prkno na předloktí""",
        "id": """Papan lengan bawah""",
        "es": """Plancha de antebrazo""",
        "ar": """لوح الساعد""",
      } +
      {
        "zh": """起始姿势：
1. 四肢着地。
手臂弯曲成直角，肩部应该正好在肘部上方。
背部挺直，整个身体在一条直线上。

步骤：
1. 保持该姿势。""",
        "tr": """Başlangıç durumu:
1. Dört ayak üzerinde başlayın.
Kollar, omuzlar dirseklerin tam üzerinde olacak şekilde dik açıyla bükülmelidir.
Sırt düz olmalı, tüm vücut düz bir çizgide olmalıdır.

Adımlar:
1. Bu durumda kalın.""",
        "nl": """Startpositie:
1. Ga op z'n hondjes zitten.
Buig je armen en zet je schouders gelijk met je ellebogen.
Je rug en de rest van je lichaam moeten gestrekt zijn.

Stappen:
1. Houd deze positie vast.""",
        "de": """Ausgangsposition:
1. Beginne auf allen Vieren.
Die Arme sind rechtwinklig angewinkelt, die Schultern befinden sich direkt über den Ellbogen.
Der Rücken sollte gerade sein, der ganze Körper in einer geraden Linie.

Schritte:
1. Halte diese Position.""",
        "ru": """1. Встаньте на четвереньки, руки прямые, колени согнуты
2. Отведите ноги назад, пока они не вытянутся
3. Удерживайте это положение""",
        "pt": """Posição inicial:
1. Inicie na posição de quatro.
Os braços devem dobrar-se em um ângulo reto, com os ombro alinhados aos cotovelos.
As costas devem estar direitas, com todo o corpo em linha reta.

Passos:
1. Mantenha essa posição.""",
        "en": """Starting position:
1. Start down on all fours.
Arms should bent at a right angle, with shoulders right over elbows.
Back should be straight, the whole body in a straight line.

Steps:
1. Hold this position.""",
        "it": """Posizione di partenza:
1. Iniziare a quattro zampe.
Le braccia devono essere piegate ad angolo retto, con le spalle sopra i gomiti.
La schiena deve essere dritta, tutto il corpo in linea retta.

Passi:
1. Mantenere questa posizione.""",
        "hr": """Starting position:
1. Start down on all fours.
Arms should bent at a right angle, with shoulders right over elbows.
Back should be straight, the whole body in a straight line.

Steps:
1. Hold this position.""",
        "fr": """Position de départ :
1. Commencez à quatre pattes.
Les bras doivent être pliés à angle droit, les épaules au-dessus des coudes.
Le dos doit être droit, le corps entier en ligne droite.

Étapes :
1. Maintenez cette position.""",
        "el": """Θέση εκκίνησης:
1. Ξεκινήστε στα τέσσερα.
Οι βραχίονες πρέπει να λυγίζουν σε ορθή γωνία, με τους ώμους ακριβώς πάνω από τους αγκώνες.
Η πλάτη πρέπει να είναι ίσια, όλο το σώμα σε ευθεία γραμμή.

Βήματα:
1. Κρατήστε αυτή τη θέση.""",
        "cs": """Výchozí pozice:
1. Začněte na všech čtyřech.
Paže by měly být pokrčené v pravém úhlu, ramena přímo nad lokty.
Záda by měla být rovná, celé tělo v přímce.

Kroky:
1. Vydržte v této poloze.""",
        "id": """Posisi awal:
1. Mulai dengan posisi merangkak.
Lengan harus ditekuk pada sisi kanan, dengan bahu tepat di atas siku.
Punggung harus lurus, seluruh tubuh dalam garis lurus.

Langkah:
1. Tahan posisi ini.""",
        "es": """Posición de salida:
1. Empiece a cuatro patas.
Los brazos deben estar doblados en ángulo recto, con los hombros justo sobre los codos.
La espalda debe estar recta, todo el cuerpo en línea recta.

Pasos:
1. Mantenga esta posición.""",
        "ar": """وضع البداية:
1. ابدأ بيديك وساقيك على الارض.
يجب ثني الذراعين بزاوية قائمة مع وضع الكتفين فوق المرفقين.
يجب أن يكون الظهر مستقيمًا والجسم كله في خط مستقيم.

خطوات:
1. الثبوت على هذا الوضع.""",
      } +
      {
        "zh": """高抬腿""",
        "tr": """Yüksek dizler""",
        "nl": """Stilstaand joggen""",
        "de": """Knie hoch""",
        "ru": """Бег на месте""",
        "pt": """Joelhos para cima""",
        "en": """High knees""",
        "it": """Corsa sul posto con ginocchia alte""",
        "hr": """Trčanje na mjestu""",
        "fr": """Genoux hauts""",
        "el": """Γόνατα ψηλά""",
        "cs": """Vysoká kolena""",
        "id": """Lutut tinggi""",
        "es": """Rodillas elevadas""",
        "ar": """الركبتين العالية""",
      } +
      {
        "zh": """起始姿势：
站直。

步骤：
1. 原地跑步，尽可能将膝盖抬高到舒适高度，并快速换腿。""",
        "tr":
            """1. Dizleri kaldırabildiğiniz kadar yukarı kaldırarak ve bacakları hızlı bir şekilde değiştirerek olduğunuz yerde koşun""",
        "nl":
            """1. Sta stil, maar maak een rennende beweging - duw je knieën zover mogelijk omhoog en wissel je benen af""",
        "de":
            """1. Auf der Stelle laufen, dabei die Knie so hoch wie möglich ansetzen und die Beine in schnellem Tempo wechseln.""",
        "ru":
            """1. Бегать на месте, поднимая колени настолько высоко, насколько это удобно, и быстро переключая ноги""",
        "pt":
            """1. Corra no lugar, colocando os joelhos o mais alto o confortável e trocando de pernas a um ritmo rápido""",
        "en": """Starting position
Stand straight.

Steps:
1. Run in place, putting knees as high up as is comfortable and switching legs at a quick pace.""",
        "it":
            """1. Fai una corsa veloce sul posto, porta in alto le ginocchia ma senza sforzare""",
        "hr": """Starting position
Stand straight.

Steps:
1. Run in place, putting knees as high up as is comfortable and switching legs at a quick pace.""",
        "fr":
            """1. Courez sur place, en plaçant les genoux aussi haut que possible et en changeant de jambe à un rythme rapide""",
        "el":
            """1. Τρέξτε επί τόπου, βάζοντας τα γόνατα όσο πιο ψηλά γίνεται και εναλλάσσοντας πόδια με γρήγορο ρυθμό""",
        "cs":
            """1. Běh na místě, uvedení kolena tak vysoko, jak je pohodlné a přepínání nohy rychlým tempem""",
        "id":
            """1. Run in place, put knees as high as is comfortable and switching legs at a quick pace""",
        "es":
            """1. Trote en el lugar, con las rodillas tan altas como pueda y cambie de pierna a un ritmo rápido""",
        "ar":
            """1. الجري في المكان، وضع الركبتين عاليا كما هو مريح وتبديل بين الساقين بوتيرة سريعة""",
      } +
      {
        "zh": """弓步""",
        "tr": """Lunge hareketi""",
        "nl": """Uitvalspassen""",
        "de": """Ausfallschritte""",
        "ru": """Выпады""",
        "pt": """Investidas""",
        "en": """Lunges""",
        "it": """Affondi""",
        "hr": """Iskoraci""",
        "fr": """Fentes""",
        "el": """Προβολές""",
        "cs": """Výpady""",
        "id": """Paru-paru""",
        "es": """Estocadas""",
        "ar": """الطعنات""",
      } +
      {
        "zh": """起始姿势：
 背部挺直站立。

 步骤：
 1. 左腿向前迈出一大步。
 2. 让骨盆向下，直到你的右膝几乎触地。
 3. 将骨盆抬高。
 4. 后退回到起始姿势。
 6. 重复，每次换腿。""",
        "tr": """1. Sırtınız düz bir şekilde durun
2. Sol bacağınızla ileriye doğru büyük bir adım atın
3. Sağ dizinizle neredeyse yere değene kadar leğen kemiğinizi aşağı indirin
4. Leğen kemiğinizi geri yukarı kaldırın
5. Geri adım atarak ayakta durumuna dönün
6. Her seferinde bacakları değiştirerek tekrarlayın""",
        "nl": """1. Ga staan met een rechte rug.
2. Doe een grote stap vooruit met je linkerbeen.
3. Duw je bekken omlaag, zo ver tot je bijna de grond raakt met je rechterknie.
4. Duw je bekken omhoog.
5. Ga weer recht staan.
6. Herhaal, en wissel beide benen af""",
        "de": """Ausgangsposition:
Mit geradem Rücken stehen.

Schritte:
1. Machen Sie mit dem linken Bein einen großen Schritt nach vorn.
2. Senken Sie Ihr Becken, bis Sie mit dem rechten Knie fast den Boden berühren.
3. Bringen Sie Ihr Becken wieder nach oben.
4. Kehren Sie in die Ausgangsposition zurück, indem Sie einen Schritt zurücktreten.
6. Wiederholen Sie den Vorgang und wechseln Sie dabei jedes Mal die Beine.""",
        "ru": """1. Встаньте с прямой спиной
2. Сделайте большой шаг вперед левой ногой.
3. Опустите таз так, чтобы правое колено почти касалось пола.
4. Поднимите таз назад
5. Вернитесь в положение стоя, отступив назад.
6. Повторите упражнение, каждый раз меняя ноги""",
        "pt": """1. Fique de pé com as costas retas
2. Dê um grande passo adiante com sua perna esquerda
3. Desça com sua pélvis até quase tocar o chão com o seu joelho direito
4. Leve sua pélvis de volta para cima
5. Retorne para a posição de pé, dando um passo atrás
6. Repita, trocando de pernas a cada vez""",
        "en": """Starting position:
Stand with back straight.

Steps:
1. Take a large step forward with your left leg.
2. Bring your pelvis down until you almost touch the floor with your right knee.
3. Bring your pelvis back up.
4. Return to the starting position by stepping back.
6. Repeat, switching legs each time.""",
        "it": """1. Stai in piedi a schiena dritta
2. Fai un grande passo avanti con la gamba sinistra
3. Abbassa il bacino fino a toccare quasi il pavimento con il ginocchio destro
4. Tendi il bacino in avanti
5. Ritorna in posizione eretta facendo un passo indietro
6. Ripeti, alternando le gambe ogni volta""",
        "hr": """Starting position:
Stand with back straight.

Steps:
1. Take a large step forward with your left leg.
2. Bring your pelvis down until you almost touch the floor with your right knee.
3. Bring your pelvis back up.
4. Return to the starting position by stepping back.
6. Repeat, switching legs each time.""",
        "fr": """1. Tenez-vous debout, le dos droit
2. Faites un grand pas en avant avec votre jambe gauche
3. Descendez votre bassin jusqu'à ce que votre genou droit touche presque le sol.
4. Remontez votre bassin
5. Revenez à la position debout en faisant un pas en arrière
6. Répétez l'opération en changeant de jambe à chaque fois""",
        "el": """1. Σταθείτε με ίσια την πλάτη
2. Κάντε ένα μεγάλο βήμα μπροστά με το αριστερό σας πόδι
3. Φέρτε τη λεκάνη σας προς τα κάτω μέχρι να αγγίξετε σχεδόν το πάτωμα με το δεξί σας γόνατο
4. Φέρτε τη λεκάνη σας πίσω προς τα πάνω
5. Επιστρέψτε στην όρθια θέση με βήμα προς τα πίσω.
6. Επαναλάβετε, αλλάζοντας πόδια κάθε φορά""",
        "cs": """1. Postavte se zády rovně
2. Udělejte velký krok vpřed levou nohou
3. Přiveďte pánev dolů, dokud se téměř nedotknete podlahy pravým kolenem
4. Přiveďte pánev zpět nahoru
5. Vraťte se do stoje tím, že ustoupíte
6. Opakujte, pokaždé přepněte nohy""",
        "id": """1. Berdiri dengan punggung lurus
2. Ambil langkah maju besar dengan kaki kiri
3. Turunkan panggulmu hingga kau hampir menyentuh lantai dengan lutut kananmu.
4. Panggul kembali
5. Kembali ke posisi berdiri dengan melangkah mundur
6. Ulangi, beralih kaki setiap kali""",
        "es": """1. Párese con la espalda recta
2. Dé un gran paso adelante con su pierna izquierda
3. Baje la pelvis hasta que casi toque el suelo con la rodilla derecha
4. Vuelva a subir la pelvis
5. Vuelva a la posición con el pie hacia atrás
6. Repita, cambiando de pierna cada vez""",
        "ar": """1. الوقوف ب ظهر مستو
2. اتخاذ خطوة كبيرة إلى الأمام ب ساقك اليسرى
3. جلب الحوض الخاص بك إلى أسفل حتى تلامس الارض بركبتك اليمنى
4. جلب الحوض الخاص بك مرة أخرى
5. العودة إلى وضعية الوقوف بالتراجع
6. كرر، مع التبديل الساقين في كل مرة""",
      } +
      {
        "zh": """左腿箭步蹲""",
        "tr": """Tek bacaklı çömelme (sol)""",
        "nl": """Gespleten hurkzit (links)""",
        "de": """Geteilte Kniebeugen links""",
        "ru": """Выпад левой ногой""",
        "pt": """Split squats esquerda""",
        "en": """Split squats left""",
        "it": """Split squat a sinistra""",
        "hr": """Podijeljeni čučnjevi lijevo""",
        "fr": """Fentes avant gauches""",
        "el": """Σπαστά βαθιά καθίσματα αριστερά""",
        "cs": """Dřep ve výpadu nalevo""",
        "id": """Split squats kiri""",
        "es": """Media sentadillas izquierda""",
        "ar": """انقسام القرفصاء اليسار""",
      } +
      {
        "zh": """右腿箭步蹲""",
        "tr": """Tek bacaklı çömelme (sağ)""",
        "nl": """Gespleten hurkzit (rechts)""",
        "de": """Geteilte Kniebeugen rechts""",
        "ru": """Выпад правой ногой""",
        "pt": """Split squats direita""",
        "en": """Split squats right""",
        "it": """Squat laterali a sinistra""",
        "hr": """Podijeljeni čučnjevi desno""",
        "fr": """Fentes avant droites""",
        "el": """Σπαστά βαθιά καθίσματα δεξιά""",
        "cs": """Dřep ve výpadu napravo""",
        "id": """Split squats kanan""",
        "es": """Media sentadillas derecha""",
        "ar": """تقسيم القرفصاء اليمين""",
      } +
      {
        "zh": """起始姿势：
 背部挺直站立。 左腿向前迈出一大步。

 脚步：
 1. 让骨盆向下，直到右膝几乎触地。
 2. 将骨盆抬高。
 3. 重复。""",
        "tr": """1. Sırtınız düz bir şekilde durun
2. Sol bacağınızla ileriye doğru büyük bir adım atın
3. Sağ dizinizle neredeyse yere değene kadar leğen kemiğinizi aşağı indirin
4. Leğen kemiğinizi geri yukarı kaldırın
5. 3. adımdan itibaren tekrarlayın.""",
        "nl": """1. Ga staan met een rechte rug.
2. Doe een grote stap vooruit met je linkerbeen.
3. Duw je bekken omlaag, zo ver tot je bijna de grond raakt met je rechterknie.
4. Duw je bekken omhoog.
5. Herhaal vanaf stap 3.""",
        "de": """Ausgangsposition:
Stellen Sie sich mit geradem Rücken hin. Machen Sie mit dem linken Bein einen großen Schritt nach vorn.

Schritte:
1. Bringen Sie Ihr Becken nach unten, bis Sie mit dem rechten Knie fast den Boden berühren.
2. Bringen Sie Ihr Becken wieder nach oben.
3. Wiederholen Sie die Übung.""",
        "ru": """1. Встаньте с прямой спиной
2. Сделайте большой шаг вперед левой ногой
3. Опустите таз так, чтобы правое колено почти касалось пола
4. Поднимите свой таз обратно
5. Повторите с шага 3.""",
        "pt": """1. Fique de pé com as costas retas
2. Dê um grande passo para frente com sua perna esquerda
3. Leve sua pélvis para baixo até quase tocar o chão com seu joelho direito
4. Leve sua pélvis de volta para cima
5. Repita a partir do passo 3.""",
        "en": """Starting position:
Stand with your back straight. Take a large step forward with your left leg.

Steps:
1. Bring your pelvis down until you almost touch the floor with your right knee.
2. Bring your pelvis back up.
3. Repeat.""",
        "it": """1. Stai con la schiena dritta
2. Fai un grande passo in avanti con la gamba sinistra
3. Abbassa il bacino fino a toccare quasi il pavimento con il ginocchio destro
4. Riporta il bacino verso l'alto
5. Ripetere dal passaggio 3.""",
        "hr": """Starting position:
Stand with your back straight. Take a large step forward with your left leg.

Steps:
1. Bring your pelvis down until you almost touch the floor with your right knee.
2. Bring your pelvis back up.
3. Repeat.""",
        "fr": """1. Tenez-vous debout avec le dos droit
2. Faites un grand pas en avant avec votre jambe gauche
3. Abaissez votre bassin jusqu'à ce que vous touchiez presque le sol avec votre genou droit
4. Ramenez votre bassin vers le haut
5. Répétez à partir de l'étape 3.""",
        "el": """1. Σταθείτε με ίσια την πλάτη
2. Κάντε ένα μεγάλο βήμα μπροστά με το αριστερό πόδι
3. Φέρτε τη λεκάνη προς τα κάτω μέχρι να αγγίξετε σχεδόν το πάτωμα με το δεξί γόνατο
4. Φέρτε τη λεκάνη πίσω προς τα πάνω
5. Επαναλάβετε από το βήμα 3.""",
        "cs": """1. Postavte se zády rovně
2. Udělejte velký krok vpřed levou nohou
3. Přiveďte pánev dolů, dokud se téměř nedotknete podlahy pravým kolenem
4. Přiveďte pánev zpět nahoru
5. Opakujte od kroku 3.""",
        "id": """1. Berdiri dengan punggung lurus
2. Ambil langkah maju besar dengan kaki kiri
3. Turunkan panggulmu hingga kau hampir menyentuh lantai dengan lutut kananmu.
4. Panggul kembali
5. Ulangi dari Langkah 3.""",
        "es": """1. Párese con la espalda recta
2. De un largo paso adelante con su pierna izquierda
3. Baje la pelvis hasta que casi toque el suelo con la rodilla derecha
4. Suba la pelvis
5. Repita desde el paso 3.""",
        "ar": """1. الوقوف بظهر مستو
2. اتخاذ خطوة كبيرة إلى الأمام بساقك اليسرى
3. جلب الحوض الخاص بك إلى أسفل حتى تلامس الاض بركبتك اليمنى
4. جلب الحوض الخاص بك مرة أخرى
5. كرر الخطوة 3.""",
      } +
      {
        "zh": """交替抬肘俯卧撑""",
        "tr": """Dönerek şınav""",
        "nl": """Draaiend opdrukken""",
        "de": """Liegestütz-Drehungen""",
        "ru": """Отжимание с переворотом""",
        "pt": """Flexão em T""",
        "en": """Push-up rotations""",
        "it": """Flessioni con rotazione""",
        "hr": """Sklekovi s okretanjem""",
        "fr": """Pompes avec rotation""",
        "el": """Περιστροφικές κάμψεις""",
        "cs": """Kliky s rotací""",
        "id": """Rotasi Push-up""",
        "es": """Flexiones a rotación""",
        "ar": """تمرين الضغط المتناوب""",
      } +
      {
        "zh": """起始姿势：
 进入起始俯卧撑位置，双手和脚趾接触地面和背部，手臂和腿伸直。 要达到这个姿势，你可以俯卧，双手朝下放在头部旁边，然后抬起双臂直到它们伸直。

 步骤：
 1. 进行标准俯卧撑：
 1.a 弯曲手臂直到胸部几乎接触地面，确保背部挺直。
 1.b 用你的手臂将自己抬升到起始姿势。
 2.将身体向一侧转动，使背部挺直，支撑身体的底部手完全伸展，且仅底部手和脚接触地面。
 3. 重复，每次在第 2 步换方向。""",
        "tr": """1. Normal bir şınav yapın:
1.a Karnınız üzerine uzanın
1.b Ellerinizi kulaklarınızın yakınına yerleştirin
1.c Sırtı düz tutarak kollar düz olana kadar karnınızı yukarı kaldırmak için kollarınızı kullanın
1.d Göğüs neredeyse yere değene kadar kolları bükün, sırtın düz olduğundan emin olun
1.e 3. adımdan itibaren tekrarlayın
2. Sırt düz, alt el vücudu desteklemek için tamamen uzatılmış ve sadece alt el ve ayak yere değecek şekilde vücudunuzu yana döndürün
3. Her seferinde 2. adımda taraf değiştirerek tekrarlayın""",
        "nl": """1. Druk op:
1.a Ga op je buik liggen.
1.b Plaats je handen in de buurt van je oren.
1.c Gebruik je armen om je buik omhoog te duwen totdat je armen gestrekt zijn - houd je rug recht.
1.d Buig je armen totdat je borstkas bijna de grond raakt - houd je rug recht.
1.e Kom weer omhoog en ga naar stap 3.
2. Draai op je zij, houd je rug recht en raak alleen met je hand en voet de grond aan.
3. Herhaal, en wissel bij stap 2 telkens van zij""",
        "de": """Ausgangsposition:
Begeben Sie sich in die Ausgangsposition für Liegestütze, wobei Hände und Zehen den Boden berühren und Arme und Beine gerade sind. Um diese Position zu erreichen, können Sie sich auf den Bauch legen, die Hände nach unten neben den Kopf legen und die Arme nach oben heben, bis sie gerade sind.

Die Schritte:
1. Führen Sie einen normalen Liegestütz durch:
1.a Beugen Sie die Arme, bis die Brust fast den Boden berührt, und achten Sie darauf, dass der Rücken gerade ist.
1.b Heben Sie sich mit den Armen wieder in die Ausgangsposition.
2. Drehen Sie Ihren Körper zur Seite, so dass der Rücken gerade ist, die untere Hand, die den Körper stützt, vollständig gestreckt ist und nur die untere Hand und der Fuß den Boden berühren.
3. Wiederholen Sie den Vorgang, wobei Sie bei Schritt 2 jedes Mal die Seite wechseln.""",
        "ru": """1. Сделайте стандартное отжимание:
1.лягте на живот.
1.б Приложите руки к ушам.
1.с Помощью рук поднимите живот вверх, пока руки не станут прямыми, сохраняя спину прямой.
1.d Согните руки до тех пор, пока грудь почти не коснется земли, убедившись, что спина прямая
1.е Снова поднимите живот вверх, возвращаясь к шагу 3.
2. Поверните тело в сторону так, чтобы спина была прямой, нижняя рука, поддерживающая тело, полностью вытянута, и только нижняя рука и нога касаются пола
3. Повторите, меняя стороны на шаге 2 каждый раз""",
        "pt": """1. Faça uma flexão de braços pradrão
1.a Deite-se de barriga para baixo
1.b Coloque suas mãos perto dos ouvidos
1.c Use suas mão para levantar a barriga até que os braços estejam retos, mantendo as costas retas
1.d Dobre os braços até que o peito quase toque o chão, certificando-se de que as costas estejam retas
1.e Repita a partir do passo 1.c
2. Gire seu corpo para o lado para que as costas fiquem retas, de modo que a mão inferior que sustenta o corpo fique totalmente estendida, e apenas a mão inferior e o pé toquem o chão
3. Repita, mudando de lado no passo 2 cada vez""",
        "en": """Starting position:
Get into the starting push-up position, with your hands and toes touching the ground and back, arms and legs straight. To get to this position, you can lie down on your stomach, place your hands facing down next to your head, and lifting your arms up until they are straight.

Steps:
1. Perform a standard push-up:
1.a Bend arms until chest almost touches the ground, making sure the back is straight.
1.b Use your arms to lift yourself back up to starting position.
2. Rotate your body to the side so that the back is straight, the bottom hand supporting the body is fully extended, and only the bottom hand and foot touch the floor.
3. Repeat, changing sides at step 2 each time.""",
        "it": """1. Esegui una flessione standard:
1.a Sdraiati a pancia in giù
1.b Metti le mani vicino alle orecchie
1.c Usa le braccia per sollevare il torace fino a quando le braccia sono dritte, mantenendo la schiena dritta
1.d Piega le braccia fino a quando il torace tocca quasi il suolo, assicurandoti che la schiena sia dritta
1.e Solleva di nuovo il torace (vedi 1.c)
2. Ruota il corpo di lato in modo che la schiena sia dritta: la mano inferiore che sostiene il corpo è completamente estesa e solo la mano inferiore e i piedi toccano il pavimento
3. Ripeti, cambiando lato ogni volta al passaggio 2""",
        "hr": """Starting position:
Get into the starting push-up position, with your hands and toes touching the ground and back, arms and legs straight. To get to this position, you can lie down on your stomach, place your hands facing down next to your head, and lifting your arms up until they are straight.

Steps:
1. Perform a standard push-up:
1.a Bend arms until chest almost touches the ground, making sure the back is straight.
1.b Use your arms to lift yourself back up to starting position.
2. Rotate your body to the side so that the back is straight, the bottom hand supporting the body is fully extended, and only the bottom hand and foot touch the floor.
3. Repeat, changing sides at step 2 each time.""",
        "fr": """1. Faites une pompe standard :
1.a Allongez-vous sur le ventre
1.b Placez vos mains près de vos oreilles
1.c Utilisez vos bras pour soulever votre ventre jusqu'à ce que les bras soient droits, en gardant le dos droit
1.d Pliez les bras jusqu'à ce que la poitrine touche presque le sol, en vous assurant que le dos est droit
1.e Soulevez à nouveau votre ventre et revenez à l'étape 1.c
2. Faites pivoter votre corps sur le côté pour que le dos soit droit, que la main inférieure soutenant le corps soit complètement étendue et que seuls la main et le pied inférieurs touchent le sol
3. Répétez, en changeant de côté à chaque fois""",
        "el": """1. Κάντε μία τυπική κάμψη:
1.α Ξαπλώστε μπρούμυτα
1.β Τοποθετήστε τα χέρια σας κοντά στα αυτιά σας
1.γ Χρησιμοποιήστε τα χέρια σας για να σηκώσετε το στομάχι σας προς τα πάνω μέχρι τα χέρια να είναι ίσια, κρατώντας την πλάτη ίσια
1.δ Λυγίστε τα χέρια μέχρι το στήθος να ακουμπήσει σχεδόν το έδαφος, φροντίζοντας η πλάτη να είναι ευθεία
1.ε Σηκώστε ξανά το στομάχι σας προς τα πάνω, επιστρέφοντας στο βήμα 3
2. Περιστρέψτε το σώμα σας στο πλάι, ώστε η πλάτη να είναι ίσια, το κάτω χέρι που στηρίζει το σώμα να είναι πλήρως τεντωμένο και μόνο το κάτω χέρι και το πόδι να ακουμπάνε στο πάτωμα
3. Επαναλάβετε, αλλάζοντας πλευρά στο βήμα 2 κάθε φορά""",
        "cs": """1. Proveďte standardní push-up:
1.Lehněte si na břicho
1.b položte ruce blízko uší
1.c pomocí paží zvedněte žaludek nahoru, dokud nejsou paže rovné, držte záda rovně
1.d ohněte paže, dokud se hrudník téměř nedotkne země, ujistěte se, že záda je rovná
1.e zvedněte žaludek znovu a vraťte se ke kroku 3
2. Otočte tělo na stranu tak, aby záda byla rovná, spodní ruka podporující tělo je plně prodloužena a pouze spodní ruka a noha se dotýkají podlahy
3. Opakujte, pokaždé měňte strany v kroku 2""",
        "id": """1. Lakukan push-up standar:
1.sebuah kebohongan bawah pada perut Anda
1.b tempatkan tanganmu di dekat telingamu
1.c gunakan lengan Anda untuk mengangkat perut Anda sampai lengan lurus, menjaga punggung lurus
1.d menekuk lengan sampai dada hampir menyentuh tanah, memastikan punggung lurus
1.e angkat perutmu lagi, kembali ke langkah 3
2. Memutar tubuh Anda ke samping sehingga punggung lurus, bawah tangan mendukung tubuh sepenuhnya diperpanjang, dan hanya tangan bawah dan kaki menyentuh lantai
3. Ulangi, mengubah sisi pada langkah 2 setiap kali""",
        "es": """1. Haga una flexión de brazos estándar
1.a Acuéstese boca abajo
1.b Coloque las manos cerca de las orejas
1.c Levante el estómago con los brazos hasta que los brazos estén rectos, manteniendo la espalda recta
1.d Flexione los brazos hasta que el pecho casi toque el suelo, asegurándose de que la espalda esté recta
1.e Levante el estómago de nuevo, volviendo al paso 3
2. Gire el cuerpo hacia un lado para que la espalda quede recta, la mano inferior que sostiene el cuerpo esté completamente extendida y sólo las extremidades inferiores toquen el suelo
3. Repita, cambiando de lado en el paso 2 otra vez""",
        "ar": """1. قم بتمرين الضغط القياسي:
1.a الاستلقاء على بطنك
1.b ضع يديك بالقرب من أذنيك
1.c استخدم ذراعيك لرفع معدتك حتى تصبح الذراعين مستقيمين ، مع الحفاظ على استقامة الظهر
1.d ثني الذراعين حتى يلمس الصدر الأرض تقريبًا ، مع التأكد من أن الظهر مستقيم
1.e ارفع معدتك مرة أخرى ، والعودة إلى الخطوة 3
2. قم بتدوير جسمك إلى الجانب بحيث يكون الظهر مستقيمًا ، ويتم تمديد اليد السفلية التي تدعم الجسم بالكامل ، ولا تلمس الأرض سوى اليد السفلية والقدم
3. كرر مع تغيير الجوانب في الخطوة 2 في كل مرة""",
      } +
      {
        "zh": """左前臂平板支撑""",
        "tr": """Yan plank hareketi (sol)""",
        "nl": """Links planken""",
        "de": """Seitenplanke links""",
        "ru": """Левая боковая планка""",
        "pt": """Prancha lateral esquerda""",
        "en": """Side plank left""",
        "it": """Plank su lato sinistro""",
        "hr": """Bočni izdržaj lijevo""",
        "fr": """Planche latérale gauche""",
        "el": """Πλάγια σανίδα αριστερά""",
        "cs": """Prkno na levém boku""",
        "id": """Plank samping kiri""",
        "es": """Plancha de lado izquierdo""",
        "ar": """اللوح الجانبي الأيسر""",
      } +
      {
        "zh": """右前臂平板支撑""",
        "tr": """Yan plank hareketi (sağ)""",
        "nl": """Rechts planken""",
        "de": """Seitenplanke rechts""",
        "ru": """Правая боковая планка""",
        "pt": """Prancha lateral direita""",
        "en": """Side plank right""",
        "it": """Plank sul lato destro""",
        "hr": """Bočni izdržaj desno""",
        "fr": """Planche latérale droite""",
        "el": """Πλάγια σανίδα δεξιά""",
        "cs": """Prkno na pravém boku""",
        "id": """Plank samping kanan""",
        "es": """Plancha de lado derecho""",
        "ar": """اللوح الجانبي الأيمن""",
      } +
      {
        "zh": """起始姿势：
 侧躺，下肘成直角，手臂伸出。 抬起下肩，将骨盆抬离地面，前臂停留在地面； 你的头、骨盆和脚应该在一条直线上。

 步骤：
 1. 保持这个姿势。""",
        "tr":
            """1. Alt dirseğiniz dik açıyla, kolunuz dışarı çıkacak şekilde yan tarafınıza uzanın
2. Ön kolunuzu yerde tutup alt omzunuzu yukarı kaldırarak leğen kemiğinizi yerden kaldırın; başınız, leğen kemiğiniz ve ayaklarınız düz bir çizgide olmalıdır
3. Bu durumda kalın""",
        "nl":
            """1. Ga op je linkerzij liggen, houd je rechterelleboog recht en steek je arm uit.
2. Duw je bekken omhoog door je rechterschouder op te tillen, maar houd je bovenarm op de grond - je hoofd, bekken en voeten moeten in een rechte lijn liggen.
3. Houd deze positie vas""",
        "de": """Ausgangsposition:
Legen Sie sich auf die Seite, wobei der untere Ellbogen einen rechten Winkel bildet und der Arm ausgestreckt ist. Heben Sie Ihr Becken vom Boden ab, indem Sie die untere Schulter anheben und den Unterarm auf dem Boden lassen; Ihr Kopf, Ihr Becken und Ihre Füße sollten eine gerade Linie bilden.

Die Schritte:
1. Halten Sie diese Position.""",
        "ru":
            """1. Лягте на бок, поставив нижний локоть под прямым углом, вытянув вперед руку
2. Поднимите таз от пола, подняв нижнюю часть плеча вверх, удерживая предплечье на полу; ваша голова, таз и ноги должны быть на одной прямой линии
3. Оставайтесь в этой позиции""",
        "pt":
            """1. Deite-se de lado, com o cotovelo inferior em ângulo reto, com o braço para fora
2. Levante sua pélvis do chão levantando o ombro inferior para cima, mantendo o antebraço no chão; sua cabeça, pélvis e pés devem estar em linha reta
3. Mantenha esta posição""",
        "en": """Starting position:
Lie down on your side, with your bottom elbow at a right angle, arm sticking out. Lift your pelvis off the floor by lifting your bottom shoulder up, keeping the forearm on the floor; your head, pelvis, and feet should be in a straight line.

Steps:
1. Hold this position.""",
        "it":
            """1. Sdraiati su un fianco, con il gomito inferiore ad angolo retto, con il braccio sporgente
2. Solleva il bacino dal pavimento sollevando la parte inferiore della spalla verso l'alto, mantenendo l'avambraccio sul pavimento; la testa, il bacino e i piedi dovrebbero essere in linea retta
3. Mantieni questa posizione""",
        "hr": """Starting position:
Lie down on your side, with your bottom elbow at a right angle, arm sticking out. Lift your pelvis off the floor by lifting your bottom shoulder up, keeping the forearm on the floor; your head, pelvis, and feet should be in a straight line.

Steps:
1. Hold this position.""",
        "fr":
            """1. Allongez-vous sur le côté, le coude inférieur à angle droit, le bras dépassant
2. Soulevez votre bassin du sol en soulevant votre épaule inférieure, en gardant l'avant-bras sur le sol ; votre tête, votre bassin et vos pieds doivent être en ligne droite
3. Maintenez cette position""",
        "el":
            """1. Ξαπλώστε στο πλάι, με τον κάτω αγκώνα σας σε ορθή γωνία, με το χέρι να προεξέχει
2. Σηκώστε τη λεκάνη σας από το πάτωμα σηκώνοντας τον κάτω ώμο σας προς τα πάνω, κρατώντας το αντιβράχιο στο πάτωμα. Το κεφάλι, η λεκάνη και τα πόδια, πρέπει να βρίσκονται σε ευθεία γραμμή
3. Κρατήστε αυτή τη θέση""",
        "cs":
            """1. Lehněte si na bok, se spodním loktem v pravém úhlu, paže vyčnívající
2. Zvedněte pánev z podlahy zvedání spodní rameno, drží předloktí na podlaze, hlavu, pánev a nohy by měly být v jedné přímce
3. Držte tuto pozici""",
        "id":
            """1. Berbaringlah, dengan siku bawah Anda di sudut kanan, lengan mencuat
2. Angkat panggul Anda dari lantai dengan mengangkat bahu bawah Anda ke atas, menjaga lengan bawah di lantai; kepala, panggul, dan kaki Anda harus berada dalam garis lurus
3. Tahan posisi""",
        "es":
            """1. Acuéstese sobre su lado correspondiente, con el codo en ángulo recto y el brazo hacia afuera
2. Levante la pelvis del suelo levantando el hombro hacia arriba, manteniendo el antebrazo en el suelo; la cabeza, la pelvis y los pies deben estar en línea recta
3. Mantenga esta posición""",
        "ar":
            """1. الاستلقاء على الجانب الخاص بك، مع الكوع السفلي الخاص بك في الزاوية اليمنى، الذراع ممدودة
2. رفع الحوض الخاص بك من على الأرض عن طريق رفع الكتف السفلي الخاص بك حتى، والحفاظ على الساعد على الأرض. يجب أن يكون رأسك وحوضك وقدميك في خط مستقيم
3. الثبات على هذه الوضعية""",
      } +
      {
        "zh": """左腿侧箭步蹲""",
        "tr": """Yana tek bacaklı çömelme (sol)""",
        "nl": """Gespleten zijhurkzit (links)""",
        "de": """Seitliche Kniebeugen links""",
        "ru": """Боковой выпад слева""",
        "pt": """Side split squats esquerda""",
        "en": """Side split squats left""",
        "it": """Squat laterale sinistro""",
        "hr": """Bočni podijeljeni čučnjevi lijevo""",
        "fr": """Fentes latérales gauches""",
        "el": """Πλευρικά σπαστά καθίσματα αριστερά""",
        "cs": """Boční výpady nalevo""",
        "id": """Squat split samping kiri""",
        "es": """Sentadilla de lado izquierdo""",
        "ar": """انقسام القرفصاء اليسار""",
      } +
      {
        "zh": """右腿侧箭步蹲""",
        "tr": """Yana tek bacaklı çömelme (sağ)""",
        "nl": """Gespleten zijhurkzit (rechts)""",
        "de": """Seitliche Kniebeugen rechts""",
        "ru": """Боковой выпад справа""",
        "pt": """Side split squats direita""",
        "en": """Side split squats right""",
        "it": """Squat laterali a destra""",
        "hr": """Bočni podijeljeni čučnjevi desno""",
        "fr": """Fentes latérales droites""",
        "el": """Πλευρικά σπαστά καθίσματα δεξιά""",
        "cs": """Boční výpady napravo""",
        "id": """Squat split samping kanan""",
        "es": """Sentadilla de lado derecho""",
        "ar": """انقسام القرفصاء اليمين""",
      } +
      {
        "zh": """起始姿势：
 1. 站直，一只脚横向跨出，使得双脚距离略大于肩宽。

 步骤：
 1. 弯曲一只膝盖，直到你的大腿与地面平行。 弯曲的膝盖必须与脚成一条直线。
 2. 推回起始姿势。
 3. 重复。""",
        "tr":
            """1. Dik durun ve omuz genişliğinden biraz daha geniş bir yan adım atın.
2. Uyluğunuz yere paralel olana kadar bir dizinizi bükün. Bükülmüş diz ayakla aynı hizada olmalıdır.
3. Başlangıç durumuna geri itin ve tekrarlayın.""",
        "nl":
            """1. Ga recht staan en doe een brede, zijwaartse pas, net iets voorbij schouderbreedte.
2. Buig één knie totdat je heup gelijkstaat aan de grond. De gebogen knie moet gelijkstaan aan de voet.
3. Duw jezelf omhoog en herhaal.""",
        "de": """Ausgangsposition:
1. Stehen Sie aufrecht und machen Sie einen weiten seitlichen Schritt, etwas mehr als schulterbreit.

Schritte:
1. Beugen Sie ein Knie, bis Ihr Oberschenkel parallel zum Boden ist. Das gebeugte Knie muss sich in einer Linie mit dem Fuß befinden.
2. Drücken Sie sich zurück in die Ausgangsposition.
3. Wiederholen Sie die Übung.""",
        "ru":
            """1. Встаньте прямо и сделайте широкий боковой шаг, чуть больше ширины плеч.
2. Согните одно колено, пока бедро не будет параллельно полу. Согнутое колено должно находиться на одной линии с стопой.
3. Вернитесь в исходное положение и повторите.""",
        "pt":
            """1. Fique de pé e dê um passo lateral largo, apenas maior que a largura dos ombros.
2. Dobre um joelho até que sua coxa fique parelela ao chão. O joelho dobrado deve estar em linha com o pé.
3. Empurre de volta para a posição inicial e repita.""",
        "en": """Starting position:
1. Stand tall and take a wide lateral stride, just greater than shoulder width.

Steps:
1. Bend one knee until your thigh is parallel to the floor. The bent knee must be in line with the foot.
2. Push back to the starting position.
3. Repeat.""",
        "it":
            """1. Stai in piedi e fai un ampio passo laterale, appena superiore alla larghezza delle spalle.
2. Piega un ginocchio finché la coscia non è parallela al pavimento. Il ginocchio piegato deve essere in linea con il piede.
3. Spingi indietro alla posizione di partenza e ripetere.""",
        "hr": """Starting position:
1. Stand tall and take a wide lateral stride, just greater than shoulder width.

Steps:
1. Bend one knee until your thigh is parallel to the floor. The bent knee must be in line with the foot.
2. Push back to the starting position.
3. Repeat.""",
        "fr":
            """1. Tenez-vous droit et faites une large foulée latérale, juste supérieure à la largeur des épaules
2. Pliez un genou jusqu'à ce que votre cuisse soit parallèle au sol. Le genou plié doit être aligné avec le pied
3. Revenez à la position de départ et répétez.""",
        "el":
            """1. Σταθείτε όρθιοι και κάντε ένα ευρύ πλευρικό βήμα, λίγο μεγαλύτερο από το πλάτος των ώμων.
2. Λυγίστε το ένα γόνατο μέχρι ο μηρός σας να είναι παράλληλος με το δάπεδο. Το λυγισμένο γόνατο πρέπει να είναι σε ευθεία γραμμή με το πόδι.
3. Σπρώξτε πίσω στη θέση εκκίνησης και επαναλάβετε.""",
        "cs":
            """1. Postavte se vysoko a vezměte široký boční krok, jen větší než šířka ramen.
2. Ohněte jedno koleno, dokud vaše stehno není rovnoběžné s podlahou. Ohnuté koleno musí být v souladu s nohou.
3. Zatlačte zpět do výchozí polohy a opakujte.""",
        "id":
            """1. Berdiri tegak dan mengambil langkah lateral lebar, hanya lebih besar dari lebar bahu.
2. Tekuk satu lutut sampai paha Anda sejajar dengan lantai. Lutut harus sejajar dengan kaki.
3. Dorong kembali ke posisi awal dan ulangi.""",
        "es":
            """1. Póngase de pie y dé un amplio paso lateral, un poco más grande que el ancho de los hombros
2. Doble una rodilla hasta que su muslo esté paralelo al suelo. La rodilla doblada debe estar en línea con el pie
3. Vuelva a la posición inicial y repita.""",
        "ar":
            """1. قف منتصبًا وخذ خطوة جانبية واسعة ، أكبر بقليل من عرض الكتفين.
2. اثنِ ركبة واحدة حتى يصبح فخذك موازيًا للأرض. يجب أن تكون الركبة المنحنية على نفس الخط مع القدم.
3. ادفع للخلف إلى وضع البداية وكرر العملية.""",
      } +
      {
        "zh": """左保加利亚分腿蹲""",
        "tr": """Bulgar tek bacaklı çömelmesi (sol)""",
        "nl": """Bulgaarse gespleten hurkzit (links)""",
        "de": """Bulgarische geteilte Kniebeugen links""",
        "ru": """Болгарские выпады (левая нога)""",
        "pt": """Bulgarian split squats esquerda""",
        "en": """Bulgarian split squats left""",
        "it": """Split squats left bulgari""",
        "hr": """Bugarski podijeljeni čučanj lijevo""",
        "fr": """Squats bulgares gauches""",
        "el": """Βουλγαρικά σπαστά καθίσματα αριστερά""",
        "cs": """Bulharské dřepy na levé noze""",
        "id": """Squat split Bulgaria ke kiri""",
        "es": """Sentadilla búlgara izquierda""",
        "ar": """الرفع القرفصاء البلغارية""",
      } +
      {
        "zh": """右保加利亚分腿蹲""",
        "tr": """Bulgar tek bacaklı çömelmesi (sağ)""",
        "nl": """Bulgaarse gespleten hurkzit (rechts)""",
        "de": """Bulgarische geteilte Kniebeugen rechts""",
        "ru": """Болгарские выпады (правая нога)""",
        "pt": """Bulgarian split squats direita""",
        "en": """Bulgarian split squats right""",
        "it": """Split squats right bulgari""",
        "hr": """Bugarski podijeljeni čučanj desno""",
        "fr": """Squats bulgares droites""",
        "el": """Βουλγαρικά σπαστά καθίσματα δεξιά""",
        "cs": """Bulharské dřepy na pravé noze""",
        "id": """Bulgaria split squats right""",
        "es": """Sentadilla búlgara derecha""",
        "ar": """الرفع القرفصاء البلغارية اليمين""",
      } +
      {
        "zh": """1. 在椅子前站直，迈出一大步。将另一只脚的脚背放在椅子上。
2. 弯曲前膝，用手臂保持平衡，直到后膝几乎接触地面。
3. 撑回起始位置并重复。""",
        "tr":
            """1. Bir sandalyenin önünde dik durun ve büyük bir adım atın. Ayaklarınızdan birinin üst kısmını sandalyenin üzerine koyun.
2. Arka diz neredeyse yere değene kadar kollarla dengeleyerek ön dizinizi bükün
3. Başlangıç durumuna geri itin ve tekrarlayın.""",
        "nl":
            """1. Pak een stoel en ga er recht voor staan. Plaats het voorste deel van je voet op de stoel.
2. Buig de voorste knie en balanceer je armen totdat de achterste knie bijna de grond raakt.
3. Duw jezelf terug, ga terug naar stap 1 en herhaal, telkens met een andere knie.""",
        "de":
            """1. Stelle Dich aufrecht vor einen Stuhl und machen einen großen Schritt. Stelle den oberen Teil einer Deiner Füße auf den Stuhl.
2. Beuge das vordere Knie und balanciere mit den Armen, bis das hintere Knie fast den Boden berührt
3. Gehe in die Ausgangsposition zurück und wiederhole.""",
        "ru":
            """1. Встаньте во весь рост перед стулом и сделайте большой шаг. Положите верхнюю часть одной из ваших ног на стул.
2. Согните переднее колено, балансируя руками, пока заднее колено почти не коснется земли
3. Вернитесь в исходное положение и повторите упражнение.""",
        "pt":
            """1. Fique de pé em frente a uma cadeira e dê um grande passo. Coloque a parte superior de um de seus pés sobre a cadeira.
2. Dobre o joelho da frente, equilibrando-se com os braços até que o joelho de trás quase toque o chão
3. Empurre de volta para a posição inicial e repita.""",
        "en":
            """1. Stand tall in front of a chair and take a large step. Put the upper part of one of your feet on the chair.
2. Bend the front knee, balancing with arms until the back knee almost touches the ground.
3. Push back to the starting position and repeat.""",
        "it":
            """1. Mettiti di fronte a una sedia e fai un grande passo. Metti la parte superiore di uno dei tuoi piedi sulla sedia.
2. Piegare il ginocchio anteriore, bilanciandosi con le braccia fino a quando il ginocchio posteriore tocca quasi il suolo
3. Spingi indietro fino alla posizione di partenza e ripeti.""",
        "hr":
            """1. Stand tall in front of a chair and take a large step. Put the upper part of one of your feet on the chair.
2. Bend the front knee, balancing with arms until the back knee almost touches the ground.
3. Push back to the starting position and repeat.""",
        "fr":
            """1. Tenez-vous droit devant une chaise et faites un grand pas. Placez la partie supérieure de l'un de vos pieds sur la chaise
2. Pliez le genou avant, en équilibre avec les bras jusqu'à ce que le genou arrière touche presque le sol
3. Revenez à la position de départ et répétez.""",
        "el":
            """1. Σταθείτε όρθιοι μπροστά από μια καρέκλα και κάντε ένα μεγάλο βήμα. Τοποθετήστε το πάνω μέρος του ενός ποδιού σας στην καρέκλα.
2. Λυγίστε το μπροστινό γόνατο, ισορροπώντας με τα χέρια μέχρι το πίσω γόνατο να ακουμπήσει σχεδόν στο έδαφος
3. Σπρώξτε πίσω στη θέση εκκίνησης και επαναλάβετε.""",
        "cs":
            """1. Postavte se vysoko před židli a udělejte velký krok. Položte horní část jedné z vašich nohou na židli.
2. Ohněte přední koleno a vyvažujte rukama, dokud se zadní koleno téměř nedotkne země
3. Zatlačte zpět do výchozí polohy a opakujte.""",
        "id":
            """1. Berdiri tegak di depan kursi dan mengambil langkah besar. Taruh bagian atas salah satu kakimu di kursi.
2. Tekuk lutut depan, menyeimbangkan dengan tangan sampai lutut belakang hampir menyentuh tanah
3. Dorong kembali ke posisi awal dan ulangi.""",
        "es":
            """1. Póngase de pie delante de una silla y dé un largo paso. Ponga la parte superior de uno de sus pies en la silla
2. Doble la rodilla delantera, balanceando los brazos hasta que la rodilla trasera casi toque el suelo.
3. Empuje hacia atrás a la posición inicial y repita.""",
        "ar":
            """1. قف منتصبًا أمام كرسي وخذ خطوة كبيرة. ضع الجزء العلوي من إحدى قدميك على الكرسي.
2. ثني الركبة الأمامية ، مع موازنة الذراعين حتى تكاد الركبة الخلفية تلامس الأرض
3. ادفع للخلف إلى وضع البداية وكرر العملية.""",
      } +
      {
        "zh": """左腿手枪式深蹲""",
        "tr": """Tabanca durumunda çömelme (sol)""",
        "nl": """Pistoolzit (links)""",
        "de": """Einbeinige Kniebeugen links""",
        "ru": """Пистолетик (левая нога)""",
        "pt": """Pistol squats esquerda""",
        "en": """Pistol squats left""",
        "it": """Squat a pistola a sinistra""",
        "hr": """Pištoljski čučnjevi lijevo""",
        "fr": """Pistol squats gauches""",
        "el": """Βαθύ κάθισμα αριστερού ποδιού""",
        "cs": """Dřep na levé noze""",
        "id": """Pistol squat kiri""",
        "es": """Sentadillas en pistol izquierda""",
        "ar": """Pistol squats اليسار""",
      } +
      {
        "zh": """右腿手枪式深蹲""",
        "tr": """Tabanca durumunda çömelme (sağ)""",
        "nl": """Pistoolzit (rechts)""",
        "de": """Einbeinige Kniebeugen rechts""",
        "ru": """Пистолетик (правая нога)""",
        "pt": """Pistol squats direita""",
        "en": """Pistol squats right""",
        "it": """Squat a pistola a destra""",
        "hr": """Pištoljski čučnjevi desno""",
        "fr": """Pistol squats droites""",
        "el": """Βαθύ κάθισμα δεξιού ποδιού""",
        "cs": """Dřep na pravé noze""",
        "id": """Pistol squats kanan""",
        "es": """Sentadillas en pistol derecha""",
        "ar": """Pistol squats اليمين""",
      } +
      {
        "zh": """1. 单腿站立，另一条腿伸直，略微向前。
2. 慢慢弯曲一条腿的膝盖，下蹲，保持背部和另一条腿伸直。
3. 从下蹲状态慢慢起身，伸直弯曲的膝盖，保持另一条腿伸直。
4. 重复。""",
        "tr":
            """1. Diğer bacağınız düz ve hafifçe öne gelecek şekilde tek ayak üzerinde durun.
2. Bir dizinizi yavaşça bükün, sırtınızı ve diğer bacağınızı düz tutarak çömelme durumuna inin.
3. Eğik dizinizi düzelterek ve diğer bacağınızı düz tutarak çömelme durumundan yavaşça kendinizi kaldırın.
4. Tekrarlayın""",
        "nl": """1. Zet één been voor je.
2. Buig je knie totdat je hurkt - houd je rug en andere been recht.
3. Buig je knie terug en maak hem weer recht.
4. Herhaal""",
        "de":
            """1. Stelle Dich auf ein Bein, wobei das andere Bein gerade und leicht nach vorne zeigt.
2. Beuge langsam ein Knie, gehen in die Hocke und halte den Rücken und das andere Bein gerade.
3. Gehe langsam aus der Hocke, strecke das gebeugte Knie und halte das andere Bein gerade.
4. Wiederhole""",
        "ru":
            """1. Встаньте на одну ногу, а другую поставьте прямо и слегка вперед.
2. Медленно опуститесь на корточки на одной ноге, держа спину и другую ногу прямо.
3. Медленно поднимайтесь от приседа, выпрямляя ногу, удерживая другую ногу прямо.
4. Повторите""",
        "pt":
            """1. Fique de pé em uma perna, com a outra perna reta e ligeiramente para frente.
2. Dobre um joelho lentamente, descendo para um agachamento e mantendo as costas e a outra perna reta.
3. Levante-se lentamente do agachamento, endireitando o joelho dobrado e mantendo a outra perna reta.
4. Repita""",
        "en":
            """1. Stand on one leg, with your other leg straight and slightly forward.
2. Bend one knee slowly, descending into a squat and keeping your back and your other leg straight.
3. Slowly raise yourself from the squat, straightening the bent knee and keeping the other leg straight.
4. Repeat.""",
        "it":
            """1. Stai in piedi su una gamba, con l'altra gamba dritta e leggermente in avanti.
2. Piegare un ginocchio lentamente, scendendo in uno squat e mantenendo la schiena e l'altra gamba dritta.
3. Alzati lentamente dallo squat, raddrizzando il ginocchio piegato e mantenendo l'altra gamba dritta.
4. Ripeti""",
        "hr":
            """1. Stand on one leg, with your other leg straight and slightly forward.
2. Bend one knee slowly, descending into a squat and keeping your back and your other leg straight.
3. Slowly raise yourself from the squat, straightening the bent knee and keeping the other leg straight.
4. Repeat.""",
        "fr":
            """1. Tenez-vous debout sur une jambe, l'autre jambe droite et légèrement en avant
2. Pliez lentement un genou, descendez en position accroupie et gardez votre dos et votre autre jambe droits
3. Soulevez-vous lentement du squat, en redressant le genou plié et en gardant l'autre jambe droite
4. Répéter""",
        "el":
            """1. Σταθείτε στο ένα πόδι, με το άλλο πόδι σας ίσιο και ελαφρώς μπροστά.
2. Λυγίστε αργά το ένα γόνατο, κατεβαίνοντας σε βαθύ κάθισμα και κρατώντας την πλάτη σας και το άλλο πόδι σας ίσιο.
3. Σηκωθείτε αργά από το βαθύ κάθισμα, ισιώνοντας το λυγισμένο γόνατο και κρατώντας το άλλο πόδι ίσιο.
4. Επαναλάβετε""",
        "cs":
            """1. Postavte se na jednu nohu, druhou nohu rovně a mírně dopředu.
2. Pomalu ohněte jedno koleno, sestupujte do dřepu a udržujte záda a druhou nohu rovně.
3. Pomalu se zvedněte z dřepu, narovnejte ohnuté koleno a udržujte druhou nohu rovnou.
4. Opakovat""",
        "id":
            """1. Berdiri pada satu kaki, dengan kaki yang lain lurus dan sedikit ke depan.
2. Bend satu lutut perlahan-lahan, turun ke dalam jongkok dan menjaga punggung dan kaki Anda yang lain lurus.
3. Perlahan-lahan angkat dirimu dari jongkok, meluruskan lutut yang bengkok dan menjaga kaki yang lain lurus.
4. Ulangi""",
        "es":
            """1. Párese en una pierna, con la otra pierna estirada y ligeramente hacia adelante.
2. Doble una rodilla lentamente, bajando en sentadilla y manteniendo la espalda y la otra pierna estirada.
3. Levántese lentamente de la sentadilla, enderezando la rodilla doblada y manteniendo la otra pierna recta.
4. Repita""",
        "ar": """1. قف على ساق واحدة وساقك الأخرى مستقيمة للأمام قليلًا.
2. اثنِ ركبة واحدة ببطء ، وانزل إلى وضع القرفصاء وحافظ على استقامة ظهرك ورجلك الأخرى.
3. ارفع نفسك ببطء من وضع القرفصاء ، مستقيم الركبة المثنية مع إبقاء الساق الأخرى مستقيمة.
4. كرر""",
      } +
      {
        "zh": """跪姿屈膝抬腿""",
        "tr": """Diz çöküp geri tepme""",
        "nl": """Geknielde terugtrap""",
        "de": """Kniende Rückschläge""",
        "ru": """Кикбэк согнутой ногой""",
        "pt": """Coice""",
        "en": """Kneeling kickbacks""",
        "it": """Contraccolpi in ginocchio""",
        "hr": """Kneeling kickbacks""",
        "fr": """Extensions de la hanche""",
        "el": """Γονατιστές κλωτσιές""",
        "cs": """Kickbacky v kleku""",
        "id": """Kickbacks berlutut""",
        "es": """Patada de rodilla""",
        "ar": """الركل الى الخلف من الركوع""",
      } +
      {
        "zh": """起始姿势：
 四肢着地。

 步骤：
 1. 将一只脚向后推，直到完全伸展，专注于臀肌。
 2.停留一秒钟，然后回到初始姿势。
 3. 重复，交替双脚。""",
        "tr": """1. Dört ayak üzerine eğilin.
2. Kalça kaslarına odaklanarak bir ayağınızı tamamen uzayıncaya kadar geriye doğru itin.
3. Bir saniye kalın, ardından başlangıç durumuna geri dönün.
4. Ayakları değiştirerek tekrarlayın""",
        "nl":
            """1. Ga op zijn hondjes zitten en plaats één voet tegen iets met weerstand, zoals een kabel.
2. Duw je voet naar achteren, zo ver totdat je been volledig gestrekt is.
3. Houd één seconde vol en keer terug naar de startpositie.
4. Herhaal, en wissel steeds van voet""",
        "de": """Ausgangsposition:
Gehen Sie auf alle Viere.

Schritte:
1. Drücken Sie einen Fuß nach hinten, bis er ganz gestreckt ist, und konzentrieren Sie sich dabei auf die Gesäßmuskeln.
2. Verweilen Sie eine Sekunde lang und kehren Sie dann in die Ausgangsposition zurück.
3. Wiederholen Sie den Vorgang, indem Sie die Füße abwechseln.""",
        "ru": """1. Встань на четвереньки.
2. Отталкивайтесь одной ногой назад до полного вытягивания, концентрируясь на ягодичных мышцах.
3. Задержитесь на одну секунду, затем вернитесь в исходное положение..
4. Повторите, чередуя ноги""",
        "pt": """1. Fique em posição de quatro.
2. Empurre um pé para trás até que esteja totalmente estendido, concentrando-se nos músculos dos glúteos.
3. Fique por um segundo depois retorne à posição inicial.
4. Repita, alternando os pés""",
        "en": """Starting position:
Get down on all fours.

Steps:
1. Push one foot back until fully extended, concentrating on the gluteus muscles.
2. Stay for one second, then return to the initial position.
3. Repeat, alternating feet.""",
        "it": """1. Mettiti a quattro zampe.
2. Spingete un piede indietro fino alla completa estensione, concentrandovi sui muscoli glutei.
3. Rimanete per un secondo, poi tornate alla posizione iniziale.
4. Ripetere, alternando i piedi""",
        "hr": """Starting position:
Get down on all fours.

Steps:
1. Push one foot back until fully extended, concentrating on the gluteus muscles.
2. Stay for one second, then return to the initial position.
3. Repeat, alternating feet.""",
        "fr": """1. Mettez-vous à quatre pattes
2. Poussez un pied en arrière jusqu'à ce qu'il soit complètement étendu, en vous concentrant sur les muscles fessiers
3. Restez une seconde, puis revenez à la position initiale
4. Répétez, en alternant les pieds""",
        "el": """1. Σταθείτε στα τέσσερα.
2. Σπρώξτε το ένα πόδι προς τα πίσω μέχρι να εκταθεί πλήρως, εστιάζοντας στους γλουτιαίους μύες.
3. Μείνετε για ένα δευτερόλεπτο και, στη συνέχεια, επιστρέψτε στην αρχική θέση.
4. Επαναλάβετε, εναλλάσσοντας τα πόδια""",
        "cs": """1. Dolů na všech čtyřech.
2. Zatlačte jednu nohu zpět až do úplného prodloužení a soustřeďte se na gluteusové svaly.
3. Zůstaňte jednu sekundu a pak se vraťte do výchozí polohy.
4. Opakujte, střídavé nohy""",
        "id": """1. Merangkak turun.
2. Dorong satu kaki ke belakang hingga diperluas, konsentrasi pada otot gluteus.
3. Tunggu sebentar, kemudian kembali ke posisi awal.
4. Ulangi, alternating feet""",
        "es": """1. Ponga a cuatro patas
2. Empuje un pie hacia atrás hasta que se extienda completamente, concentrándose en los músculos de los glúteos
3. Quédese un segundo, y luego vuelva a la posición inicial
4. Repita, alternando los pies""",
        "ar": """1. انزل على أربع.
2. ادفع قدمًا واحدة للخلف حتى تمتد تمامًا ، مع التركيز على عضلات الألوية.
3. البقاء لمدة ثانية واحدة ، ثم العودة إلى الوضع الأولي.
4. كرر ، بالتناوب القدمين""",
      } +
      {
        "zh": """左腿提踵""",
        "tr": """Sol bacak baldır kaldırma""",
        "nl": """Kuitoptrekken (links)""",
        "de": """Wadenheben linkes Bein""",
        "ru": """Упражнения для икроножных мыщц (левая)""",
        "pt": """Elevação da panturrilha esquerda""",
        "en": """Left leg calf raises""",
        "it": """Sollevamento del polpaccio gamba sinistra""",
        "hr": """Dizanje lijeve potkoljenice""",
        "fr": """Lever du mollet gauche""",
        "el": """Ανυψώσεις αριστερής γάμπας""",
        "cs": """Výpony na levé noze""",
        "id": """Angkat kaki kiri anak sapi""",
        "es": """Elevación de pantorrilla izquierda""",
        "ar": """رفع ربلة الساق اليسرى""",
      } +
      {
        "zh": """右腿提踵""",
        "tr": """Sağ bacak baldır kaldırma""",
        "nl": """Kuitoptrekken (rechts)""",
        "de": """Wadenheben rechtes Bein""",
        "ru": """Упражнения для икроножных мыщц (правая)""",
        "pt": """Elevação da panturrilha direita""",
        "en": """Right leg calf raises""",
        "it": """Sollevamento del polpaccio gamba destra""",
        "hr": """Dizanje desne potkoljenice""",
        "fr": """Lever du mollet droit""",
        "el": """Ανυψώσεις δεξιάς γάμπας""",
        "cs": """Výpony na pravé noze""",
        "id": """Angkat betis kaki kanan""",
        "es": """Elevación de pantorrilla derecha""",
        "ar": """رفع ربلة الساق اليمنى""",
      } +
      {
        "zh": """1. 站在地板上或者台阶的边缘上，保证运动范围足够。抬起一条腿，脚背靠在小腿上。
2. 抬起支撑脚的脚跟，用脚尖站立。
3. 保持三秒钟，然后落下脚跟，但保持脚跟不接触地面。""",
        "tr":
            """1. Hareket aralığını artırmak için yerde veya bir basamağın kenarında durun. Üst kısmı baldırınızın üzerine koyarak bir ayağınızı kaldırın.
2. Ayak parmaklarınız üzerinde durana kadar topuklarınızı kaldırın.
3. Bu durumda üç saniye kalın, ardından topuğunuz yere değmeden ayağınızı indirin.""",
        "nl":
            """1. Ga op de grond staan of op de rand van een opstapje. Til één voet op en houd hem tegen op je kuit.
2. Til je hielen op, zo ver totdat je op je tenen staat.
3. Houd dit drie seconden vol. Duw je voet weer naar omlaag zonder de grond te raken met je hiel.""",
        "de":
            """1. Stelle Dich auf den Boden oder auf die Kante einer Stufe. Hebe einen Fuß an und lege den oberen Teil auf die Wade.
2. Hebe die Fersen an, bis Du auf den Zehenspitzen stehst.
3. Bleibe drei Sekunden lang in dieser Position und senke dann den Fuß, ohne mit der Ferse den Boden zu berühren.""",
        "ru":
            """1. Встаньте на пол или на край ступеньки, чтобы увеличить диапазон движения. Поднимите одну ногу, поставив ее на верхнюю часть икры.
2. Поднимите пятку, пока не встанете на цыпочки.
3. Оставайтесь в этом положении в течение трех секунд, затем опустите ногу, не касаясь пяткой земли.""",
        "pt":
            """1. Fique de pé no chão ou na borda de um degrau para aumentar o alcance do movimento. Levante um pé, colocando a parte superior sobre sua panturrilha.
2. Levante os calcanhares até ficar de pé sobre os dedos do pé.
3. Fique nesta posição por três segundos, depois abaixe o pé sem tocar o chão com seu calcanhar.""",
        "en":
            """1. Stand on the floor or on the edge of a step to increase the range of movement. Raise one foot, placing the upper part on your calf.
2. Lift your heels until you're standing on toes.
3. Stay in this position for three seconds, then lower your foot without touching the ground with your heel.""",
        "it":
            """1. Stare in piedi sul pavimento o sul bordo di un gradino per aumentare il raggio di movimento. Sollevare un piede, appoggiando la parte superiore sul polpaccio.
2. Sollevare i talloni fino a stare in piedi sulle punte dei piedi.
3. Resta in questa posizione per tre secondi, poi abbassa il piede senza toccare il suolo con il tallone.""",
        "hr":
            """1. Stand on the floor or on the edge of a step to increase the range of movement. Raise one foot, placing the upper part on your calf.
2. Lift your heels until you're standing on toes.
3. Stay in this position for three seconds, then lower your foot without touching the ground with your heel.""",
        "fr":
            """1. Tenez-vous debout sur le sol ou sur le bord d'une marche pour augmenter l'amplitude des mouvements. Levez un pied en plaçant la partie supérieure sur votre mollet
2. Soulevez vos talons jusqu'à ce que vous soyez debout sur les orteils
3. Restez dans cette position pendant trois secondes, puis abaissez votre pied sans toucher le sol avec votre talon.""",
        "el":
            """1. Σταθείτε στο πάτωμα ή στην άκρη ενός σκαλοπατιού για να αυξήσετε το εύρος της κίνησης. Σηκώστε το ένα πόδι, τοποθετώντας το πάνω μέρος στη γάμπα σας.
2. Σηκώστε τις φτέρνες σας μέχρι να σταθείτε στα δάχτυλα των ποδιών.
3. Μείνετε σε αυτή τη θέση για τρία δευτερόλεπτα και, στη συνέχεια, χαμηλώστε το πόδι σας χωρίς να ακουμπήσετε το έδαφος με τη φτέρνα σας.""",
        "cs":
            """1. Postavte se na podlahu nebo na okraj kroku, abyste zvýšili rozsah pohybu. Zvedněte jednu nohu a položte horní část na lýtko.
2. Zvedněte paty, dokud nestojíte na prstech.
3. Zůstaňte v této poloze po dobu tří sekund, pak spusťte nohu, aniž byste se dotýkali země patou.""",
        "id":
            """1. Berdiri di lantai atau di tepi langkah untuk meningkatkan jangkauan gerakan. Angkat satu kaki, letakkan bagian atas pada betis Anda.
2. Angkat tumit Anda sampai Anda berdiri di atas jari kaki.
3. Tetap di posisi ini selama tiga detik, lalu turunkan kaki Anda tanpa menyentuh tanah dengan tumit Anda.""",
        "es":
            """1. Párese en el suelo o en el borde de un escalón para aumentar el rango de movimiento. Levante un pie, colocando la parte superior de su pantorrilla
2. Levante los talones hasta que esté de pie
3. Manténgase en esta posición durante tres segundos, luego baje el pie sin tocar el suelo con el talón.""",
        "ar":
            """1. قف على الأرض أو على حافة درجة لزيادة نطاق الحركة. ارفع قدمًا واحدة مع وضع الجزء العلوي على ربلة الساق.
2. ارفع كعبيك حتى تقف على أصابع قدميك.
3. ابق في هذا الوضع لمدة ثلاث ثوان ، ثم أنزل قدمك دون لمس الأرض بكعبك.""",
      } +
      {
        "zh": """基本跳绳""",
        "tr": """İp atlama: temel atlamalar""",
        "nl": """Touwtjespringen: basissprongen""",
        "de": """Seilspringen: Grundsprünge""",
        "ru": """Скакалка: базовые прыжки""",
        "pt": """Corda de Salto: saltos básicos""",
        "en": """Jump rope: basic jumps""",
        "it": """Corda per saltare: salti di base""",
        "hr": """Preskakanje užeta: osnovni skokovi""",
        "fr": """Corde à sauter : sauts de base""",
        "el": """Σχοινάκι: βασικές αναπηδήσεις""",
        "cs": """Švihadlo: základní skoky""",
        "id": """Lompat tali: basic Jump""",
        "es": """Saltar la cuerda: saltos básicos""",
        "ar": """القفز على الحبل: القفزات الأساسية""",
      } +
      {
        "zh": """起始姿势：
 双脚并拢，稍微弯曲膝盖，保持头部和身体伸直，保持肘部向内，张开双臂。

 步骤：
 1. 用足够的力道仅转动手腕使绳子转动。
 2. 跳起刚好能让脚下的绳索通过的高度。
 3. 重复。

 注：
 这个练习需要一根跳绳。 确保绳子长度调整到适合你的身高。 一种检查方法是用一只手抓住两个把手，用一只脚站在挂在地上的绳索中间。 如果绳子（不包括手柄）刚好到达胸部下方，则它的长度合适。 较短的绳索会很危险，因为您可能会伤到自己，而较长的绳索会造成不良的形式。""",
        "tr":
            """Bu egzersiz bir atlama ipi gerektirir. İp uzunluğunun boyunuza göre ayarlandığından emin olun. Bunu denetlemenin bir yolu, ipin her iki kulpunu tek elle tutup tek ayakla yerde serili halatın ortasında durmaktır. İp (kulplar hariç) göğsünüzün hemen altına ulaşırsa, uzunluğu doğrudur. Daha kısa bir ip, kendinize çarpabileceğiniz için tehlikeli olacaktır ve daha uzun bir ip kötü bir biçim oluşturacaktır.
1. Ayaklarınızı birbirine yaklaştırın, dizlerinizi biraz bükün, başınızı ve vücudunuzu düz tutun, dirseklerinizi içeride tutun, kollarınızı açın.
2. İpin dönmesi için yeterli kuvvetle sadece bileklerinizi döndürün.
3. İpi ayaklarınızın altından geçirecek kadar yükseğe zıplayın.
4. 2. adımdan itibaren tekrarlayın.""",
        "nl":
            """Bij deze oefening heb je een springtouw nodig. Kies een touw dat past bij je lengte. Pak beide handvatten met één hand vast en ga met één voet op het midden van het touw staan. Als het touw (minus de handvatten) tot net onder je borstkas komt, dan heb je de juiste lengte. Een korter touw kan ook, maar is gevaarlijker omdat je jezelf mogelijk raakt, en een langer touw is onhandig.
1. Zet je voeten dicht tegen elkaar, buig door je knieën en houd je hoofd en lichaam recht. Houd je ellebogen naar binnen en open je armen.
2. Draai je polsen met genoeg kracht om het touw te laten draaien.
3. Spring net boven het touw uit.
4. Herhaal vanaf stap 2.""",
        "de": """Ausgangsposition:
Füße dicht beieinander stellen, Knie leicht beugen, Kopf und Körper gerade halten, Ellenbogen angewinkelt halten, Arme öffnen.

Schritte:
1. Drehen Sie nur Ihre Handgelenke mit so viel Kraft, dass sich das Seil dreht.
2. Springe gerade so hoch, dass das Seil unter deinen Füßen durchläuft.
3. Wiederhole die Übung.

Anmerkungen:
Für diese Übung benötigen Sie ein Springseil. Achten Sie darauf, dass die Seillänge auf Ihre Körpergröße abgestimmt ist. Eine Möglichkeit, dies zu überprüfen, ist, beide Griffe mit einer Hand zu ergreifen und sich mit einem Fuß auf die Mitte des Seils zu stellen, das am Boden hängt. Wenn das Seil (ohne die Griffe) bis knapp unter Ihre Brust reicht, ist es richtig lang. Ein kürzeres Seil wäre gefährlich, da Sie sich daran stoßen könnten, und ein längeres Seil wäre schlecht für die Form.""",
        "ru": """Starting position:
Put your feet close together, bend the knees a bit, keep your head and body straight, keep elbows in, open your arms.

Steps:
1. Spin only your wrists with enough force to make the rope spin.
2. Jump just high enough to pass the rope below your feet.
3. Repeat.

Notes:
This exercise requires a jump rope. Make sure the rope length is adjusted to your height. One way to check is to grab both handles with one hand and stand on the middle of the rope hanging on the ground with one foot. If the rope (excluding the handles) reaches just below your chest, its length is right. A shorter rope would be hazardous, as you might hit yourself, and a longer rope would make for bad form.""",
        "pt":
            """Este exercício requer uma corda de salto. Certifique-se de que o comprimento da corda é ajustado à sua altura. Uma maneira de verificar é agarrar ambas as pegas com uma mão e ficar no meio da corda pendurada no chão com um pé. Se a corda (excluindo as pegas) chegar mesmo abaixo do seu peito, o seu comprimento é o correcto. Uma corda mais curta seria perigosa, pois poderia atingir-se a si próprio, e uma corda mais comprida seria uma má forma.
1. Coloque os pés juntos, dobre um pouco os joelhos, mantenha a cabeça e o corpo direitos, mantenha os cotovelos para dentro, abra os braços.
2. Rodar apenas os pulsos com força suficiente para fazer girar a corda.
3. Saltem só com força suficiente para passar a corda por baixo dos pés.
4. Repita a partir do passo 2.""",
        "en": """Starting position:
Put your feet close together, bend the knees a bit, keep your head and body straight, keep elbows in, open your arms.

Steps:
1. Spin only your wrists with enough force to make the rope spin.
2. Jump just high enough to pass the rope below your feet.
3. Repeat.

Notes:
This exercise requires a jump rope. Make sure the rope length is adjusted to your height. One way to check is to grab both handles with one hand and stand on the middle of the rope hanging on the ground with one foot. If the rope (excluding the handles) reaches just below your chest, its length is right. A shorter rope would be hazardous, as you might hit yourself, and a longer rope would make for bad form.""",
        "it":
            """Questo esercizio richiede una corda per saltare. Assicuratevi che la lunghezza della corda sia adatta alla vostra altezza. Un modo per controllare è quello di afferrare entrambe le maniglie con una mano e stare al centro della corda appesa a terra con un piede. Se la corda (escluse le maniglie) arriva appena sotto il tuo petto, la sua lunghezza è giusta. Una corda più corta sarebbe pericolosa, perché potreste colpirvi, e una corda più lunga sarebbe una cattiva forma.
1. Metti i piedi vicini, piega un po' le ginocchia, tieni la testa e il corpo dritti, tieni i gomiti in dentro, apri le braccia.
2. Fai girare solo i polsi con abbastanza forza da far girare la corda.
3. Salta appena abbastanza in alto da far passare la corda sotto i tuoi piedi.
4. Ripetere dal punto 2.""",
        "hr": """Starting position:
Put your feet close together, bend the knees a bit, keep your head and body straight, keep elbows in, open your arms.

Steps:
1. Spin only your wrists with enough force to make the rope spin.
2. Jump just high enough to pass the rope below your feet.
3. Repeat.

Notes:
This exercise requires a jump rope. Make sure the rope length is adjusted to your height. One way to check is to grab both handles with one hand and stand on the middle of the rope hanging on the ground with one foot. If the rope (excluding the handles) reaches just below your chest, its length is right. A shorter rope would be hazardous, as you might hit yourself, and a longer rope would make for bad form.""",
        "fr":
            """Cet exercice nécessite une corde à sauter. Assurez-vous que la longueur de la corde est adaptée à votre taille. Une mamière de vérifier est de saisir les deux poignées d'une main et de se tenir au milieu de la corde suspendue au sol avec un pied. Si la corde (sans les poignées) arrive juste sous votre poitrine, sa longueur est correcte. Une corde plus courte serait dangereuse, car vous risqueriez de vous cogner, et une corde plus longue serait mauvaise pour la forme.
1. Rapprochez vos pieds, pliez un peu les genoux, gardez la tête et le corps droits, gardez les coudes rentrés, ouvrez les bras.
2. Faites tourner uniquement vos poignets avec suffisamment de force pour faire tourner la corde.
3. Sautez juste assez haut pour faire passer la corde sous vos pieds.
4. Répétez à partir de l'étape 2.""",
        "el":
            """Αυτή η άσκηση απαιτεί ένα σχοινάκι αναπηδήσεων. Βεβαιωθείτε ότι το μήκος του σχοινιού είναι προσαρμοσμένο στο ύψος σας. Ένας τρόπος για να ελέγξετε είναι να πιάσετε και τις δύο λαβές με το ένα χέρι και να σταθείτε στη μέση του σχοινιού που κρέμεται στο έδαφος με το ένα πόδι. Εάν το σχοινί (χωρίς τις λαβές) φτάνει ακριβώς κάτω από το στήθος σας, το μήκος του είναι σωστό. Ένα πιο κοντό σχοινί θα ήταν επικίνδυνο, καθώς μπορεί να χτυπήσετε τον εαυτό σας, και ένα μακρύτερο σχοινί θα δημιουργούσε κακή φόρμα.
1. Βάλτε τα πόδια σας κοντά, λυγίστε λίγο τα γόνατα, κρατήστε το κεφάλι και το σώμα σας ίσια, κρατήστε τους αγκώνες μέσα, ανοίξτε τα χέρια σας.
2. Περιστρέψτε μόνο τους καρπούς σας με αρκετή δύναμη για να κάνετε το σχοινί να περιστρέφεται.
3. Πηδήξτε τόσο ψηλά όσο χρειάζεται για να περάσετε το σχοινί κάτω από τα πόδια σας.
4. Επαναλάβετε από το βήμα 2.""",
        "cs":
            """Toto cvičení vyžaduje švihadlo. Ujistěte se, že délka švihadla je přizpůsobena vaší výšce. Jedním ze způsobů kontroly je uchopit obě rukojeti jednou rukou a postavit se jednou nohou na střed švihadla visícího na zemi. Pokud vám švihadlo (bez rukojetí) sahá těsně pod hrudník, je jeho délka správná. Kratší lano by bylo nebezpečné, protože byste se mohli udeřit, a delší lano by způsobilo špatnou formu.
1. Dejte nohy těsně k sobě, trochu pokrčte kolena, hlavu a tělo držte rovně, lokty mějte vtažené, paže rozevřené.
2. Točte pouze zápěstími dostatečnou silou, aby se lano roztočilo.
3. Vyskočte jen tak vysoko, aby švihadlo prošlo pod vašima nohama.
4. Opakujte postup od kroku 2.""",
        "id":
            """Este ejercicio requiere una cuerda para saltar. Asegúrate de que la longitud de la cuerda se ajusta a tu altura. Una forma de comprobarlo es agarrar las dos asas con una mano y situarse en el centro de la cuerda colgando del suelo con un pie. Si la cuerda (excluyendo las asas) te llega justo por debajo del pecho, su longitud es la adecuada. Una cuerda más corta sería peligrosa, ya que podrías golpearte, y una cuerda más larga sería una mala forma.
1. Pon los pies juntos, dobla un poco las rodillas, mantén la cabeza y el cuerpo rectos, mantén los codos dentro, abre los brazos.
2. Gira sólo las muñecas con la fuerza suficiente para hacer girar la cuerda.
3. Salta lo suficiente para pasar la cuerda por debajo de tus pies.
4. Repite desde el paso 2.""",
        "es":
            """Este ejercicio requiere una cuerda para saltar. Asegúrate de que la longitud de la cuerda se ajusta a tu altura. Una forma de comprobarlo es agarrar las dos asas con una mano y situarse en el centro de la cuerda colgando del suelo con un pie. Si la cuerda (excluyendo las asas) te llega justo por debajo del pecho, su longitud es la adecuada. Una cuerda más corta sería peligrosa, ya que podrías golpearte, y una cuerda más larga sería una mala forma.
1. Pon los pies juntos, dobla un poco las rodillas, mantén la cabeza y el cuerpo rectos, mantén los codos dentro, abre los brazos.
2. Gira sólo las muñecas con la fuerza suficiente para hacer girar la cuerda.
3. Salta lo suficiente para pasar la cuerda por debajo de tus pies.
4. Repite desde el paso 2.""",
        "ar":
            """هذا التمرين يتطلب حبل القفز. تأكد من تعديل طول الحبل إلى طولك. طريقة واحدة للتحقق هو الامساك على كل المقابض بيد واحدة والوقوف على منتصف الحبل معلقة على الأرض مع قدم واحدة. إذا كان الحبل (باستثناء المقابض) يصل إلى أسفل صدرك مباشرة ، فإن طوله صحيح. حبل أقصر سيكون خطرا، كما كنت قد ضرب نفسك، وحبل أطول من شأنه أن يجعل الوضع اسوء.
1. ضع قدميك قريبة من بعضها البعض، وثني الركبتين قليلا، والحفاظ على رأسك والجسم مستقيم، والحفاظ على المرفقين في، وفتح ذراعيك.
2. تدور فقط المعصمين الخاص بك مع ما يكفي من القوة لجعل الحبل يدور.
3. القفز عاليا بما يكفي لتمرير الحبل تحت قدميك.
4. كرر من الخطوة 2.""",
      } +
      {
        "zh": """前臂绕环""",
        "tr": """Kolları çevirme""",
        "nl": """Voorwaartse arm cirkels""",
        "de": """Armkreisen vorwärts""",
        "ru": """Forward arm circles""",
        "pt": """Círculos com o braço pra frente""",
        "en": """Forward arm circles""",
        "it": """Cerchi del braccio""",
        "hr": """Kruženje rukama prema naprijed""",
        "fr": """Cercles avant des bras""",
        "el": """Κύκλοι χεριών προς τα εμπρός""",
        "cs": """Kroužení pažemi dopředu""",
        "id": """Lingkaran lengan ke depan""",
        "es": """Círculos de brazo""",
        "ar": """تدوير الذراع إلى الأمام""",
      } +
      {
        "zh": """大臂绕环""",
        "tr": """Geriye doğru kol çemberleri""",
        "nl": """Achterwaartse arm cirkels""",
        "de": """Armkreisen rückwärts""",
        "ru": """Backward arm circles""",
        "pt": """Círculos com o braço pra trás""",
        "en": """Backward arm circles""",
        "it": """Cerchi di braccia all'indietro""",
        "hr": """Kruženje rukama prema natrag""",
        "fr": """Cercle arrière des bras""",
        "el": """Κύκλοι χεριών πίσω""",
        "cs": """Kroužení pažemi dozadu""",
        "id": """Lingkaran lengan mundur""",
        "es": """Backward arm circles""",
        "ar": """تدوير الذراع إلى الخلف""",
      } +
      {
        "zh": """起始姿势：
 站直

 步骤：
 1. 双臂伸直，放在面前，下移，放到背后，过头，最后回到初始姿势。
 2. 如第 1 步所述，重复这套动作。""",
        "tr": """1. Sırtınız düz olacak şekilde dik durun.
2. Kollarınızı öne doğru getirin, başınızın üzerine kaldırın, ardından hareketi arkanıza doğru ve başlangıç durumuna kadar devam ettirin.
3. 2. adımda anlatıldığı gibi kollarınızı çevirmeye devam edin.""",
        "nl": """1. Ga rechtop staan met een rechte rug.
2. Houd je armen recht, breng ze voor je, beweeg ze naar beneden, achter je rug, dan over je hoofd en terug naar de beginpositie.
3. Blijf je armen cirkelen zoals beschreven in stap 2.""",
        "de": """Ausgangsposition:
Stehen Sie aufrecht mit geradem Rücken.

Schritte:
1. Führen Sie die Arme bei gestrecktem Körper vor sich her, führen Sie sie nach unten, hinter den Rücken, dann über den Kopf und zurück in die Ausgangsposition.
2. Lassen Sie die Arme wie in Schritt 1 beschrieben kreisen.""",
        "ru": """Starting position:
Stand tall with your back straight.

Steps:
1. Keeping your arms straight, bring them in front of you, move them down, behind your back, then over your head, and back to the initial position.
2. Keep circling your arms as described in step 1.""",
        "pt": """1. Fique em pé com as costas retas.
2. Mantendo os braços esticados, traga-os à sua frente, mova-os para baixo, atrás das costas, depois sobre a cabeça e de volta à posição inicial.
3. Continue circulando seus braços conforme descrito na etapa 2.""",
        "en": """Starting position:
Stand tall with your back straight.

Steps:
1. Keeping your arms straight, bring them in front of you, move them down, behind your back, then over your head, and back to the initial position.
2. Keep circling your arms as described in step 1.""",
        "it": """1. Stai in piedi con la schiena dritta.
2. Porta le braccia in avanti, alzale sopra la testa, poi continua il movimento dietro la schiena e giù fino alla posizione iniziale.
3. Continua a far girare le braccia come descritto al punto 2.""",
        "hr": """Starting position:
Stand tall with your back straight.

Steps:
1. Keeping your arms straight, bring them in front of you, move them down, behind your back, then over your head, and back to the initial position.
2. Keep circling your arms as described in step 1.""",
        "fr": """1. Tenez-vous debout, le dos bien droit.
2. Gardez vos bras droits, amenez les devant vous, puis vers le bas, puis derrière votre dos, puis au dessus de votre tête, puis ramenez les en position initiale, devant vous.
3. Continuez à faire des cercles avec vos bras comme décrit à l'étape 2.""",
        "el": """1. Σταθείτε όρθιοι με την πλάτη σας ίσια.
2. Κρατώντας τα χέρια σας ίσια, φέρτε τα μπροστά σας, μετακινήστε τα προς τα κάτω, πίσω από την πλάτη σας, στη συνέχεια πάνω από το κεφάλι σας και πίσω στην αρχική θέση.
3. Συνεχίστε να κυκλώνετε τα χέρια σας όπως περιγράφεται στο βήμα 2.""",
        "cs": """1. Postavte se zpříma s rovnými zády.
2. Dejte paže před tělo, posuňte je dolů, za záda, nad hlavu a zpět do výchozí polohy.
3. Pokračujte v kroužení pažemi dle popisu v kroku 2.""",
        "id": """1. Berdiri tegak dengan punggung lurus.
2. Bawa lengan ke depan, angkat di atas kepala Anda, kemudian melanjutkan gerakan di belakang punggung Anda dan ke posisi awal.
3. Tetap lingkari tanganmu Seperti yang dijelaskan di Langkah 2.""",
        "es": """1. Ponte de pie con la espalda recta.
2. Lleva los brazos hacia delante, levántalos por encima de la cabeza y luego continúa el movimiento por detrás de la espalda y baja a la posición inicial.
3. Siga haciendo círculos con los brazos como se describe en el paso 2.""",
        "ar": """1. قف منتصبًا وظهرك مستقيمًا.
2. حافظ على ذراعيك مستقيمة ، واجعلهما أمامك ، وحركهما لأسفل ، وخلف ظهرك ، ثم فوق رأسك ، ثم عد إلى الوضع الأولي.
3. استمر في تحريك ذراعيك كما هو موضح في الخطوة 2.""",
      } +
      {
        "zh": """起始姿势：
 站直。

 步骤：
 1. 双臂伸直，转到身前，举过头顶，放到背后，最后回到初始姿势。
 2. 如第 1 步所述，重复这套动作。""",
        "tr": """1. Sırtınız düz olacak şekilde dik durun.
2. Kollarınızı düz tutarak önünüze getirin, başınızın üzerine kaldırın, ardından harekete arkanızdan devam edin ve başlangıç pozisyonuna inin.
3. Adım 2'de anlatıldığı gibi kollarınızı döndürmeye devam edin.""",
        "nl": """1. Ga rechtop staan met een rechte rug.
2. Houd je armen recht, houd ze voor je, hef ze boven je hoofd, zet de beweging voort tot achter je rug en naar beneden naar de beginpositie
3. Blijf je armen cirkelen zoals beschreven in stap 2.""",
        "de": """Ausgangsposition:
Stehen Sie aufrecht mit geradem Rücken.

Schritte:
1. Halten Sie die Arme gestreckt und führen Sie sie vor sich her, heben Sie sie über den Kopf und setzen Sie die Bewegung hinter dem Rücken fort, bis Sie wieder in die Ausgangsposition gelangen.
2. Kreisen Sie die Arme weiter wie in Schritt 1 beschrieben.""",
        "ru": """Starting position:
Stand tall with your back straight.

Steps:
1. Keeping your arms straight, bring them in front of you, raise them over your head, then continue the motion behind your back and down to the initial position.
2. Keep circling your arms as described in step 1.""",
        "pt": """1. Fique em pé com as costas retas.
2. Mantendo os braços esticados, leve-os à sua frente, levante-os acima da cabeça e, a seguir, continue o movimento atrás das costas e desça até a posição inicial.
3. Continue circulando seus braços conforme descrito na etapa 2.""",
        "en": """Starting position:
Stand tall with your back straight.

Steps:
1. Keeping your arms straight, bring them in front of you, raise them over your head, then continue the motion behind your back and down to the initial position.
2. Keep circling your arms as described in step 1.""",
        "it": """1. Stai in piedi con la schiena dritta.
2. Mantenendo le braccia dritte, portale davanti a te, alzale sopra la testa, poi continua il movimento dietro la schiena e giù fino alla posizione iniziale.
3. Continua a far girare le braccia come descritto al punto 2.""",
        "hr": """Starting position:
Stand tall with your back straight.

Steps:
1. Keeping your arms straight, bring them in front of you, raise them over your head, then continue the motion behind your back and down to the initial position.
2. Keep circling your arms as described in step 1.""",
        "fr": """1. Tenez-vous debout, le dos droit.
2. Gardez vos bras tendus, amenez-les devant vous, levez-les au-dessus de votre tête, puis continuez le mouvement derrière votre dos jusqu'à revenir en position initiale.
3. Continuez à faire des cercles comme décrit à l'étape 2.""",
        "el": """1. Σταθείτε όρθιοι με την πλάτη σας ίσια.
2. Κρατώντας τα χέρια σας ίσια, φέρτε τα μπροστά σας, σηκώστε τα πάνω από το κεφάλι σας και, στη συνέχεια, συνεχίστε την κίνηση πίσω από την πλάτη σας και κατεβείτε στην αρχική θέση.
3. Συνεχίστε να κάνετε κύκλους με τα χέρια σας όπως περιγράφεται στο βήμα 2.""",
        "cs": """1. Postavte se zpříma s rovnými zády.
2. Dejte paže před tělo, zvedněte je nad hlavu a pak pokračujte v pohybu za záda a dolů do výchozí polohy.
3. Pokračujte v kroužení pažemi dle popisu v kroku 2.""",
        "id": """1. Berdiri tegak dengan punggung lurus.
2. Jaga agar lengan tetap lurus, bawa di depan Anda, angkat di atas kepala, lalu lanjutkan gerakan di belakang punggung dan turun ke posisi awal.
3. Terus lingkari lengan Anda seperti yang dijelaskan pada Langkah 2.""",
        "es": """Starting position:
Stand tall with your back straight.

Steps:
1. Keeping your arms straight, bring them in front of you, raise them over your head, then continue the motion behind your back and down to the initial position.
2. Keep circling your arms as described in step 1.""",
        "ar": """1. قف منتصبًا وظهرك مستقيمًا.
2. حافظ على استقامة ذراعيك ، واجعلهما أمامك ، وارفعهما فوق رأسك ، ثم استمر في الحركة خلف ظهرك ولأسفل إلى الوضع الأولي.
3. استمر في تحريك ذراعيك كما هو موضح في الخطوة 2.""",
      } +
      {
        "zh": """登山者式""",
        "tr": """Dağ tırmanışı""",
        "nl": """Bergbeklimmer""",
        "de": """Bergsteiger""",
        "ru": """Mountain climbers""",
        "pt": """Montanhistas""",
        "en": """Mountain climbers""",
        "it": """Alpinista""",
        "hr": """Planinarenje""",
        "fr": """Escaladeurs de montagne""",
        "el": """Ορειβασίες""",
        "cs": """Horolezec""",
        "id": """Pendaki gunung""",
        "es": """Montañeros""",
        "ar": """متسلقو الجبال""",
      } +
      {
        "zh": """起始姿势：
以直立俯卧撑姿势，也就是“高木板”姿势开始。
双手应该在肩膀正下方。
保持头部与背部在一个平面上；面向地板。
双脚分开大约与臀部同宽。

步骤：
1. 将一侧膝盖向身体中心移动，再向肘部移动，另一条腿保持伸展。
2. 快速跳起，将弯曲的腿伸直，将另一只膝盖拉向身体。
3. 重复第2步，双腿交替。

注：
在锻炼全过程中，背部要尽可能地保持挺直，避免驼背和背部下垂的情况。""",
        "tr": """Başlangıç durumu:
Dik şınav durumunda veya yüksek plankta başlayın.
Eller doğrudan omuzlarınızın altında olmalıdır.
Başınızı yere bakacak şekilde sırtınızla aynı hizada tutun.
Ayaklar yaklaşık kalça genişliğinde olmalıdır.

Adımlar:
1. Bir dizinizi vücudunuzun ortasına, dirseklerinize doğru hareket ettirin, diğer bacağınızı uzatın.
2. Hızlı bir zıplama hareketinde, bükülmüş bacağı düzeltin ve diğer dizinizi vücudunuza doğru çekin.
3. Adım 2'yi, bacakları değiştirerek tekrarlamaya devam edin.

Notlar:
Egzersiz boyunca sırtınız olabildiğince düz kalmalıdır – kamburluktan veya sırtınızın sarkmasından kaçının.""",
        "nl": """Startpositie:
Ga in de push-up- of hogeplankpositie staan.
Houd je handen gelijk met je schouders.
Houd je hoofd in lijn met je rug en kijk naar de grond.
Zet je voeten op heuplengte van elkaar.

Stappen:
1. Breng één knie naar voren, naar het midden van je lichaam en houd het andere gestrekt.
2. Laat je gebogen been naar achter schieten (als een soort sprongetje) en buig je andere been.
3. Herhaal stap 2 en wissel telkens van been.

Let op:
blijf je rug recht houden tijdens de gehele duur van de oefening.""",
        "de": """Ausgangsposition:
Beginnen Sie in der aufrechten Liegestützposition, auch bekannt als die hohe Plank-Position.
Die Hände sollten sich direkt unter den Schultern befinden.
Halten Sie Ihren Kopf in einer Linie mit dem Rücken und schauen Sie zum Boden.
Die Füße sollten etwa hüftbreit auseinander stehen.

Die Schritte:
1. Bewegen Sie ein Knie in Richtung Körpermitte zu den Ellbogen und lassen Sie das andere Bein gestreckt.
2. In einer schnellen, hüpfenden Bewegung strecken Sie das gebeugte Bein aus und ziehen das andere Knie zum Körper.
3. Wiederholen Sie Schritt 2 im Wechsel mit dem anderen Bein.

Anmerkungen:
Während der gesamten Übung sollte Ihr Rücken so gerade wie möglich bleiben - vermeiden Sie einen Buckel oder einen durchhängenden Rücken.""",
        "ru": """Starting position:
Start in the upright push-up position, aka. the high plank position.
Hands should be directly under your shoulders.
Keep your head in line with your back, facing the floor.
Feet should be about hip-width apart.

Steps:
1. Move one knee toward the center of your body, towards your elbows, keeping the other leg extended.
2. In a quick jumping movement, straighten the bent leg out and pull the other knee toward your body.
3. Keep repeating step 2, alternating legs.

Notes:
Throughout the exercise, your back should remain as straight as possible – avoid a hump or a sagging back.""",
        "pt": """Posição inicial:
Começar na posição vertical de flexão, ou na prancha alta.
As mãos devem estar diretamente abaixo dos seus ombros.
Manter a cabeça alinhada com as costas, virada para o chão.
Os pés devem ter a distância entre os quadris.

Passos:
1. Mova um joelho em direção ao centro do corpo, em direção aos cotovelos, mantendo a outra perna estendida.
2. Num movimento de salto rápido, endireite a perna dobrada para fora e puxe o outro joelho em direção ao seu corpo.
3. Continue a repetir o passo 2, alternando as pernas.

Notas:
Ao longo do exercício, as costas devem permanecer o mais reto o possível - evite uma corcunda ou uma curvatura nas costas.""",
        "en": """Starting position:
Start in the upright push-up position, aka. the high plank position.
Hands should be directly under your shoulders.
Keep your head in line with your back, facing the floor.
Feet should be about hip-width apart.

Steps:
1. Move one knee toward the center of your body, towards your elbows, keeping the other leg extended.
2. In a quick jumping movement, straighten the bent leg out and pull the other knee toward your body.
3. Keep repeating step 2, alternating legs.

Notes:
Throughout the exercise, your back should remain as straight as possible – avoid a hump or a sagging back.""",
        "it": """Posizione di partenza:
Iniziare in posizione verticale push-up, o la tavola alta.
Le mani dovrebbero essere direttamente sotto le spalle.
Tieni la testa in linea con la schiena, rivolta verso il pavimento.
I piedi dovrebbero essere a circa la larghezza dell'anca.

Scalinata:
1. Sposta un ginocchio verso il centro del corpo, verso i gomiti, mantenendo l'altra gamba estesa.
2. In un rapido movimento di salto, raddrizza la gamba piegata e tira l'altro ginocchio verso il tuo corpo.
3. Continua a ripetere il passaggio 2, alternando le gambe.

Nota:
Durante l'esercizio la schiena dovrebbe rimanere il più dritta possibile – evitare una gobba o una schiena cascante.""",
        "hr": """Starting position:
Start in the upright push-up position, aka. the high plank position.
Hands should be directly under your shoulders.
Keep your head in line with your back, facing the floor.
Feet should be about hip-width apart.

Steps:
1. Move one knee toward the center of your body, towards your elbows, keeping the other leg extended.
2. In a quick jumping movement, straighten the bent leg out and pull the other knee toward your body.
3. Keep repeating step 2, alternating legs.

Notes:
Throughout the exercise, your back should remain as straight as possible – avoid a hump or a sagging back.""",
        "fr": """Position de départ :
Commencez par la position debout des pompes ou de la planche haute.
Les mains doivent se trouver directement sous vos épaules.
Gardez la tête dans le prolongement du dos, face au sol.
Les pieds doivent être écartés d'environ la largeur des hanches.

Étapes :
1. Déplacez un genou vers le centre de votre corps, vers vos coudes, en gardant l'autre jambe tendue.
2. Dans un mouvement de saut rapide, redressez la jambe pliée et tirez l'autre genou vers votre corps.
3. Répétez l'étape 2 en alternant les jambes.

Remarques :
Tout au long de l'exercice, votre dos doit rester aussi droit que possible – évitez d'avoir une bosse ou un dos affaissé.""",
        "el": """Θέση εκκίνησης:
Ξεκινήστε από την όρθια θέση κάμψεων ή την ψηλή σανίδα.
Τα χέρια πρέπει να βρίσκονται ακριβώς κάτω από τους ώμους.
Κρατήστε το κεφάλι σε ευθεία γραμμή με την πλάτη, κοιτάζοντας προς το πάτωμα.
Τα πόδια θα πρέπει να είναι περίπου στο πλάτος των γοφών.

Βήματα:
1. Μετακινήστε το ένα γόνατο προς το κέντρο του σώματος, προς τους αγκώνες, κρατώντας το άλλο πόδι τεντωμένο.
2. Με μια γρήγορη κίνηση άλματος, τεντώστε το λυγισμένο πόδι προς τα έξω και τραβήξτε το άλλο γόνατο προς το σώμα σας.
3. Συνεχίστε να επαναλαμβάνετε το βήμα 2, εναλλάσσοντας τα πόδια.

Σημειώσεις:
Καθ' όλη τη διάρκεια της άσκησης, η πλάτη σας θα πρέπει να παραμένει όσο το δυνατόν πιο ευθεία - αποφύγετε την καμπούρα ή τη χαλάρωση της πλάτης.""",
        "cs": """Výchozí pozice:
Začněte ve vzpřímené pozici pro kliky nebo ve vysokém prkně.
Ruce by měly být přímo pod rameny.
Hlavu držte v jedné linii se zády, čelem k podlaze.
Nohy by měly být od sebe přibližně na šířku boků.

Kroky:
1. Jedno koleno posuňte směrem ke středu těla, k loktům, druhou nohu nechte nataženou.
2. Rychlým skokovým pohybem narovnejte pokrčenou nohu a druhé koleno přitáhněte k tělu.
3. Stále opakujte krok 2 a střídejte nohy.

Poznámky:
Po celou dobu cvičení by vaše záda měla zůstat co nejvíce rovná - vyhněte se hrbení nebo prohýbání zad.""",
        "id": """Posisi awal:
Mulai dari posisi push-up yang tegak, atau papan atas.
Tangan harus langsung di bawah bahu Anda.
Tetap Sejajarkan kepalamu dengan punggungmu, menghadap lantai.
Kaki harus selebar pinggul.

Langkah:
1. Gerakkan satu lutut ke bagian tengah tubuhmu, ke arah sikumu, memperpanjang kakimu.
2. Dalam gerakan melompat cepat, meluruskan kaki membungkuk keluar dan menarik lutut lainnya ke arah tubuh Anda.
3. Terus mengulangi Langkah 2, bolak kaki.

Catatan:
Sepanjang latihan punggung harus tetap lurus mungkin-menghindari punuk atau seonggok punggung.""",
        "es": """Posición inicial:
Comienza en la posición de flexión vertical o plancha alta.
Las manos deben estar directamente debajo de los hombros.
Mantenga la cabeza alineada con la espalda, mirando al suelo.
Los pies deben estar separados a la anchura de las caderas.

Pasos:
1. Mueve una rodilla hacia el centro del cuerpo, hacia los codos, manteniendo la otra pierna extendida.
2. Con un movimiento rápido de salto, estira la pierna doblada y tira de la otra rodilla hacia tu cuerpo.
3. Sigue repitiendo el paso 2, alternando las piernas.

Notas:
Durante todo el ejercicio, la espalda debe permanecer lo más recta posible, evitando una joroba o una espalda flácida.""",
        "ar": """وضع البداية:
ابدأ في وضع الدفع المستقيم ، أو اللوح الخشبي المرتفع.
يجب أن تكون اليدين تحت كتفيك مباشرة.
حافظ على رأسك في خط مستقيم مع ظهرك ، مواجهًا للأرض.
يجب أن تكون القدمان متباعدتين بعرض الورك.

الخطوات:
1. حرك ركبة واحدة باتجاه مركز جسمك ، باتجاه مرفقيك ، مع إبقاء الساق الأخرى ممتدة.
2. في حركة القفز السريع ، افرد الرجل المنحنية واسحب الركبة الأخرى باتجاه جسمك.
3. استمر في تكرار الخطوة 2 ، بالتناوب بين الأرجل.

ملاحظة:
خلال التمرين ، يجب أن يظل ظهرك مستقيمًا قدر الإمكان - تجنب حدوث حدبة أو تراجع في الظهر.""",
      } +
      {
        "zh": """波比跳""",
        "tr": """Şınav ile burpee""",
        "nl": """Opdruk burpees""",
        "de": """Liegestütz-Burpees""",
        "ru": """Push-up burpees""",
        "pt": """Flexão burpee""",
        "en": """Push-up burpees""",
        "it": """Spingere su burpees""",
        "hr": """Push-up burpees""",
        "fr": """Burpees avec pompes""",
        "el": """Βατραχάκια με κάμψεις""",
        "cs": """Angličáky""",
        "id": """Burpe Push-up""",
        "es": """Push-up burpees""",
        "ar": """الدفع burpees""",
      } +
      {
        "zh": """起始姿势：
站直，双脚分开与臀部同宽。

步骤：
1. 深蹲蹲下，双手放在膝盖之间脚前，支撑在地板上；背部挺直。
2. 双手放在地板上，双腿向后跳到高平板支撑的位置。
3. 做一个俯卧撑。
4. 双脚向前跳，回到下蹲位置。
5. 重复。""",
        "tr": """Starting position:
Stand straight, feet hip-width apart.

Steps:
1. Squat low and support yourself on the floor with your hands between the knees and in front of your feet, your back straight.
2. Keeping your hands on the floor, jump your legs backward into high plank position.
3. Perform a push-up.
4. Jump your feet forward to return to the squat position.
5. Repeat.""",
        "nl": """Startpositie:
Sta rechtop, voeten heupbreedte uit elkaar.

Stappen:
1. Hurk laag en ondersteun jezelf op de vloer met je handen tussen je knieën en voor je voeten, met rechte rug.
2. Houd je handen op de vloer, spring met je benen naar achter in een hoge plank positie.
3. Druk op.
4. Spring met je voeten naar voren om terug te keren in de hurkpositie.
5. Herhaal.""",
        "de": """Ausgangsposition:
Gerade stehen, Füße hüftbreit auseinander.

Schritte:
1. Gehen Sie in die Hocke und stützen Sie sich mit den Händen zwischen den Knien und vor den Füßen mit geradem Rücken auf dem Boden ab.
2. Lassen Sie die Hände auf dem Boden und springen Sie mit den Beinen nach hinten in eine hohe Plank-Position.
3. Machen Sie einen Liegestütz.
4. Springen Sie mit den Füßen nach vorn, um in die Hocke zurückzukehren.
5. Wiederholen.""",
        "ru": """Starting position:
Stand straight, feet hip-width apart.

Steps:
1. Squat low and support yourself on the floor with your hands between the knees and in front of your feet, your back straight.
2. Keeping your hands on the floor, jump your legs backward into high plank position.
3. Perform a push-up.
4. Jump your feet forward to return to the squat position.
5. Repeat.""",
        "pt": """Posição inicial:
Fique de pé reto, com os pés afastados alinhados ao quadris.

Passos:
1. Se agache e se apoie com as mãos no chão entre os joelhos e a frente de seus pés, mantendo as costas retas.
2. Mantendo as mãos no chão, pule jogando as pernas para trás para a posição de prancha altas.
3. Faça uma flexão de braços.
4. Pule os pés para frente para voltar à posição de agachamento.
5. Repita.""",
        "en": """Starting position:
Stand straight, feet hip-width apart.

Steps:
1. Squat low and support yourself on the floor with your hands between the knees and in front of your feet, your back straight.
2. Keeping your hands on the floor, jump your legs backward into high plank position.
3. Perform a push-up.
4. Jump your feet forward to return to the squat position.
5. Repeat.""",
        "it": """Posizione di partenza:
Stare dritti, piedi alla larghezza delle anche.

Passi:
1. Accovacciarsi in basso e appoggiarsi al pavimento con le mani tra le ginocchia e davanti ai piedi, la schiena dritta.
2. Tenendo le mani sul pavimento, saltate le gambe all'indietro in posizione di plank alto.
3. Eseguire un push-up.
4. Saltate i piedi in avanti per tornare alla posizione di squat.
5. Ripetere.""",
        "hr": """Starting position:
Stand straight, feet hip-width apart.

Steps:
1. Squat low and support yourself on the floor with your hands between the knees and in front of your feet, your back straight.
2. Keeping your hands on the floor, jump your legs backward into high plank position.
3. Perform a push-up.
4. Jump your feet forward to return to the squat position.
5. Repeat.""",
        "fr": """Position de départ :
Tenez-vous droit, les pieds écartés de la largeur des hanches.

Étapes :
1. Accroupissez-vous et prenez appui sur le sol avec les mains entre les genoux et devant les pieds, le dos droit.
2. En gardant les mains sur le sol, lancez vos jambes vers l'arrière en position de planche haute.
3. Effectuez une pompe.
4. Remettez vos pieds vers l'avant pour revenir à la position de squat.
5. Répétez.""",
        "el": """Θέση εκκίνησης:
Σταθείτε ίσια, με τα πόδια ανοιχτά στο πλάτος των γοφών.

Βήματα:
1. Κάντε βαθύ κάθισμα χαμηλά και στηριχτείτε στο πάτωμα με τα χέρια ανάμεσα στα γόνατα και μπροστά από τα πόδια, με την πλάτη ίσια.
2. Διατηρώντας τα χέρια στο πάτωμα, πηδήξτε με τα πόδια προς τα πίσω, σε θέση υψηλής σανίδας.
3. Εκτελέστε μία κάμψη.
4. Πηδήξτε με τα πόδια σας προς τα εμπρός για να επιστρέψετε στη θέση βαθύ καθίσματος.
5. Επαναλάβετε.""",
        "cs": """Starting position:
Stand straight, feet hip-width apart.

Steps:
1. Squat low and support yourself on the floor with your hands between the knees and in front of your feet, your back straight.
2. Keeping your hands on the floor, jump your legs backward into high plank position.
3. Perform a push-up.
4. Jump your feet forward to return to the squat position.
5. Repeat.""",
        "id": """Posisi awal:
Berdiri tegak, kaki selebar pinggul.

Langkah:
1. Jongkok rendah dan dukung diri anda di lantai dengan tangan di antara lutut dan di depan kaki, punggung lurus.
2. Menjaga tangan Anda di lantai, melompat kaki Anda ke belakang ke posisi papan tinggi.
3. Lakukan push-up.
4. Lompat kaki Anda ke depan untuk kembali ke posisi jongkok.
5. Ulangi.""",
        "es": """Starting position:
Stand straight, feet hip-width apart.

Steps:
1. Squat low and support yourself on the floor with your hands between the knees and in front of your feet, your back straight.
2. Keeping your hands on the floor, jump your legs backward into high plank position.
3. Perform a push-up.
4. Jump your feet forward to return to the squat position.
5. Repeat.""",
        "ar": """وضع البداية:
الوقوف بشكل مستقيم ، والقدمين متباعدتين.

الخطوات:
1. اجلس منخفضًا وادعم نفسك على الأرض بيديك بين الركبتين وأمام قدميك ، وظهرك مستقيم.
2. إبقاء يديك على الأرض ، قفز ساقيك إلى الوراء في وضع اللوح الخشبي العالي.
3. أداء تمرين الضغط.
4. اقفز قدميك للأمام للعودة إلى وضع القرفصاء.
5. كرر.""",
      } +
      {
        "zh": """四联波比跳""",
        "tr": """4-count burpees""",
        "nl": """4-tel burpees""",
        "de": """Burpees mit 4 Zählzeiten""",
        "ru": """4-count burpees""",
        "pt": """Burpee sem flexão""",
        "en": """4-count burpees""",
        "it": """Burpees da 4 punti""",
        "hr": """4-count burpees""",
        "fr": """Burpees (4 phases)""",
        "el": """Βατραχάκια σε 4-χρόνους""",
        "cs": """Zjednodušené angličáky""",
        "id": """4-Hitung burpe""",
        "es": """4-count burpees""",
        "ar": """4-العد burpees""",
      } +
      {
        "zh": """起始姿势：
站直，双脚分开与臀部同宽。

步骤：
1. 深蹲蹲下，双手放在膝盖之间脚前，支撑在地板上；背部挺直。
2. 双手放在地板上，双腿向后跳到高平板支撑的位置。
3. 双脚向前跳，回到下蹲位置。
4. 重复。""",
        "tr": """Starting position:
Stand straight, feet hip-width apart.

Steps:
1. Squat low and support yourself on the floor with your hands between the knees and in front of your feet, your back straight.
2. Keeping your hands on the floor, jump your legs backward into high plank position.
3. Jump your feet forward to return to the squat position.
4. Repeat.""",
        "nl": """Beginpositie:
Sta recht, voeten op heupbreedte uit elkaar.

Stappen:
1. Hurk laag en ondersteun jezelf op de vloer met je handen tussen de knieën en voor je voeten, je rug recht.
2. Houd je handen op de vloer, spring je benen naar achteren in een hoge plankpositie.
3. Spring met je voeten naar voren om terug te keren naar de squat positie.
4. Herhaal.""",
        "de": """Ausgangsposition:
Gerade stehen, Füße hüftbreit auseinander.

Schritte:
1. Gehen Sie in die Hocke und stützen Sie sich mit den Händen zwischen den Knien und vor den Füßen mit geradem Rücken auf dem Boden ab.
2. Lassen Sie die Hände auf dem Boden und springen Sie mit den Beinen nach hinten in eine hohe Plank-Position.
3. Springen Sie mit den Füßen nach vorne, um wieder in die Hocke zu gehen.
4. Wiederholen Sie die Übung.""",
        "ru": """Starting position:
Stand straight, feet hip-width apart.

Steps:
1. Squat low and support yourself on the floor with your hands between the knees and in front of your feet, your back straight.
2. Keeping your hands on the floor, jump your legs backward into high plank position.
3. Jump your feet forward to return to the squat position.
4. Repeat.""",
        "pt": """Posição inicial:
Fique de pé reto, com os pés afastados alinhados ao quadris.

Passos:
1. Se agache e se apoie com as mãos no chão entre os joelhos e a frente de seus pés, mantendo as costas retas.
2. Mantendo as mãos no chão, pule jogando as pernas para trás para a posição de prancha altas
3. Pule os pés para frente para voltar à posição de agachamento.
4. Repita.""",
        "en": """Starting position:
Stand straight, feet hip-width apart.

Steps:
1. Squat low and support yourself on the floor with your hands between the knees and in front of your feet, your back straight.
2. Keeping your hands on the floor, jump your legs backward into high plank position.
3. Jump your feet forward to return to the squat position.
4. Repeat.""",
        "it": """Posizione di partenza:
Stare dritti, piedi alla larghezza delle anche.

Passi:
1. Accovacciarsi in basso e appoggiarsi al pavimento con le mani tra le ginocchia e davanti ai piedi, la schiena dritta.
2. Tenendo le mani sul pavimento, saltate le gambe all'indietro in posizione di plank alto.
3. Saltate i piedi in avanti per tornare alla posizione di squat.
4. Ripetere.""",
        "hr": """Starting position:
Stand straight, feet hip-width apart.

Steps:
1. Squat low and support yourself on the floor with your hands between the knees and in front of your feet, your back straight.
2. Keeping your hands on the floor, jump your legs backward into high plank position.
3. Jump your feet forward to return to the squat position.
4. Repeat.""",
        "fr": """Position de départ :
Tenez-vous droit, les pieds écartés de la largeur des hanches.

Étapes :
1. Accroupissez-vous et prenez appui sur le sol avec les mains entre les genoux et devant les pieds, le dos droit.
2. En gardant les mains sur le sol, sautez vos jambes vers l'arrière en position de planche haute.
3. Sautez vers l'avant pour revenir à la position de squat.
4. Répétez l'exercice.""",
        "el": """Θέση εκκίνησης:
Σταθείτε ίσια, με τα πόδια ανοιχτά στο πλάτος των γοφών.

Βήματα:
1. Κάντε βαθύ κάθισμα και στηριχτείτε στο πάτωμα με τα χέρια ανάμεσα στα γόνατα και μπροστά από τα πόδια, με την πλάτη ίσια.
2. Διατηρώντας τα χέρια στο πάτωμα, πηδήξτε με τα πόδια προς τα πίσω, σε θέση υψηλής σανίδας.
3. Πηδήξτε με τα πόδια σας προς τα εμπρός για να επιστρέψετε στη θέση βαθύ καθίσματος.
4. Επαναλάβετε.""",
        "cs": """Starting position:
Stand straight, feet hip-width apart.

Steps:
1. Squat low and support yourself on the floor with your hands between the knees and in front of your feet, your back straight.
2. Keeping your hands on the floor, jump your legs backward into high plank position.
3. Jump your feet forward to return to the squat position.
4. Repeat.""",
        "id": """Posisi awal:
Berdiri tegak, kaki selebar pinggul.

Langkah:
1. Jongkok rendah dan dukung diri anda di lantai dengan tangan di antara lutut dan di depan kaki, punggung lurus.
2. Menjaga tangan Anda di lantai, melompat kaki Anda ke belakang ke posisi papan tinggi.
3. Lompat kaki Anda ke depan untuk kembali ke posisi jongkok.
4. Ulangi.""",
        "es": """Starting position:
Stand straight, feet hip-width apart.

Steps:
1. Squat low and support yourself on the floor with your hands between the knees and in front of your feet, your back straight.
2. Keeping your hands on the floor, jump your legs backward into high plank position.
3. Jump your feet forward to return to the squat position.
4. Repeat.""",
        "ar": """وضع البداية:
الوقوف بشكل مستقيم ، والقدمين متباعدتين.

الخطوات:
1. اجلس منخفضًا وادعم نفسك على الأرض بيديك بين الركبتين وأمام قدميك ، وظهرك مستقيم.
2. إبقاء يديك على الأرض ، قفز ساقيك إلى الوراء في وضع اللوح الخشبي العالي.
3. اقفز قدميك للأمام للعودة إلى وضعية القرفصاء.
4. كرر.""",
      } +
      {
        "zh": """半程波比跳""",
        "tr": """No push-up burpees""",
        "nl": """Geen push-up burpees""",
        "de": """Keine Liegestütz-Burpees""",
        "ru": """No push-up burpees""",
        "pt": """Burpee sem flexão""",
        "en": """No push-up burpees""",
        "it": """Nessun burpees con flessioni""",
        "hr": """No push-up burpees""",
        "fr": """Burpees sans saut""",
        "el": """Βατραχάκια χωρίς κάμψεις""",
        "cs": """Angličáky bez kliku""",
        "id": """Tidak ada burpe push-up""",
        "es": """No push-up burpees""",
        "ar": """لا push-up burpees""",
      } +
      {
        "zh": """起始姿势：
站直，双脚分开与臀部同宽。

步骤：
1. 深蹲蹲下，双手放在膝盖之间脚前，支撑在地板上；背部挺直。
2. 双手放在地板上，双腿向后跳到高平板支撑的位置。
3. 双脚向前跳，回到下蹲位置。
4. 跳起。
5. 重复。""",
        "tr": """Starting position:
Stand straight, feet hip-width apart.

Steps:
1. Squat low and support yourself on the floor with your hands between the knees and in front of your feet, your back straight.
2. Keeping your hands on the floor, jump your legs backward into high plank position.
3. Jump your feet forward to return to the squat position.
4. Jump up.
5. Repeat.""",
        "nl": """Beginpositie:
Sta recht, voeten op heupbreedte uit elkaar.

Stappen:
1. Hurk laag en ondersteun jezelf op de vloer met je handen tussen de knieën en voor je voeten, je rug recht.
2. Houd je handen op de vloer, spring je benen naar achteren in een hoge plankpositie.
3. Spring met je voeten naar voren om terug te keren naar de squat positie.
4. Spring omhoog.
5. Herhaal.""",
        "de": """Ausgangsposition:
Gerade stehen, Füße hüftbreit auseinander.

Schritte:
1. Gehen Sie in die Hocke und stützen Sie sich mit den Händen zwischen den Knien und vor den Füßen mit geradem Rücken auf dem Boden ab.
2. Lassen Sie die Hände auf dem Boden und springen Sie mit den Beinen nach hinten in eine hohe Plank-Position.
3. Springen Sie mit den Füßen nach vorne, um wieder in die Hocke zu gehen.
4. Springen Sie hoch.
5. Wiederholen Sie dies.""",
        "ru": """Starting position:
Stand straight, feet hip-width apart.

Steps:
1. Squat low and support yourself on the floor with your hands between the knees and in front of your feet, your back straight.
2. Keeping your hands on the floor, jump your legs backward into high plank position.
3. Jump your feet forward to return to the squat position.
4. Jump up.
5. Repeat.""",
        "pt": """Posição inicial:
Fique de pé reto, com os pés afastados alinhados ao quadris.

Passos:
1. Se agache e se apoie com as mãos no chão entre os joelhos e a frente de seus pés, mantendo as costas retas.
2. Mantendo as mãos no chão, pule jogando as pernas para trás para a posição de prancha altas.
3. Pule os pés para frente para voltar à posição de agachamento.
4. Salte.
5. Repita.""",
        "en": """Starting position:
Stand straight, feet hip-width apart.

Steps:
1. Squat low and support yourself on the floor with your hands between the knees and in front of your feet, your back straight.
2. Keeping your hands on the floor, jump your legs backward into high plank position.
3. Jump your feet forward to return to the squat position.
4. Jump up.
5. Repeat.""",
        "it": """Posizione di partenza:
Stare dritti, piedi alla larghezza delle anche.

Passi:
1. Accovacciarsi in basso e appoggiarsi al pavimento con le mani tra le ginocchia e davanti ai piedi, la schiena dritta.
2. Tenendo le mani sul pavimento, saltate le gambe all'indietro in posizione di plank alto.
3. Saltate i piedi in avanti per tornare alla posizione di squat.
4. Saltare in alto.
5. Ripetere.""",
        "hr": """Starting position:
Stand straight, feet hip-width apart.

Steps:
1. Squat low and support yourself on the floor with your hands between the knees and in front of your feet, your back straight.
2. Keeping your hands on the floor, jump your legs backward into high plank position.
3. Jump your feet forward to return to the squat position.
4. Jump up.
5. Repeat.""",
        "fr": """Position de départ :
Se tenir droit, les pieds écartés de la largeur des hanches.

Étapes:
1. Accroupissez-vous et appuyez-vous sur le sol avec vos mains entre les genoux et devant vos pieds, le dos droit.
2. En gardant les mains au sol, donnez une impulsion pour envoyer vos jambes vers l'arrière en position de planche haute.
3. Donnez une nouvelle impulsion pour revenir à la position accroupie.
4. Sautez.
5. Répétez.""",
        "el": """Θέση εκκίνησης:
Στάσου ίσια, με τα πόδια ανοιχτά στο πλάτος των γοφών.

Βήματα:
1. Κάντε βαθύ κάθισμα και στηριχτείτε στο πάτωμα, με τα χέρια ανάμεσα στα γόνατα και μπροστά από τα πόδια, με ίσια πλάτη.
2. Διατηρώντας τα χέρια στο πάτωμα, πηδήξτε με τα πόδια προς τα πίσω σε θέση υψηλής σανίδας.
3. Πηδήξτε με τα πόδια προς τα εμπρός για να επιστρέψετε στη θέση βαθύ καθίσματος.
4. Πηδήξτε προς τα πάνω.
5. Επαναλάβετε.""",
        "cs": """Starting position:
Stand straight, feet hip-width apart.

Steps:
1. Squat low and support yourself on the floor with your hands between the knees and in front of your feet, your back straight.
2. Keeping your hands on the floor, jump your legs backward into high plank position.
3. Jump your feet forward to return to the squat position.
4. Jump up.
5. Repeat.""",
        "id": """Posisi awal:
Berdiri tegak, kaki selebar pinggul.

Langkah:
1. Jongkok rendah dan dukung diri anda di lantai dengan tangan di antara lutut dan di depan kaki, punggung lurus.
2. Menjaga tangan Anda di lantai, melompat kaki Anda ke belakang ke posisi papan tinggi.
3. Lompat kaki Anda ke depan untuk kembali ke posisi jongkok.
4. Melompat.
5. Ulangi.""",
        "es": """Starting position:
Stand straight, feet hip-width apart.

Steps:
1. Squat low and support yourself on the floor with your hands between the knees and in front of your feet, your back straight.
2. Keeping your hands on the floor, jump your legs backward into high plank position.
3. Jump your feet forward to return to the squat position.
4. Jump up.
5. Repeat.""",
        "ar": """وضع البداية:
الوقوف بشكل مستقيم ، والقدمين متباعدتين.

الخطوات:
1. اجلس منخفضًا وادعم نفسك على الأرض بيديك بين الركبتين وأمام قدميك ، وظهرك مستقيم.
2. إبقاء يديك على الأرض ، قفز ساقيك إلى الوراء في وضع اللوح الخشبي العالي.
3. اقفز قدميك للأمام للعودة إلى وضعية القرفصاء.
4. القفز.
5. كرر.""",
      } +
      {
        "zh": """俯卧撑腿屈伸""",
        "tr": """Squat thrusts""",
        "nl": """Hurkstoten""",
        "de": """Kniebeugen""",
        "ru": """Squat thrusts""",
        "pt": """Agachamento de impulso""",
        "en": """Squat thrusts""",
        "it": """Spinte squat""",
        "hr": """Squat thrusts""",
        "fr": """Poussées de squat""",
        "el": """Ωθήσεις βαθέος καθίσματος""",
        "cs": """Squat thrusts""",
        "id": """Jongkok menyodorkan""",
        "es": """Squat thrusts""",
        "ar": """دفعات القرفصاء""",
      } +
      {
        "zh": """起始姿势：
以高位平板支撑姿势开始：背部、手臂和腿均伸直，双手分开与肩同宽。

步骤：
1. 双脚向双臂的方向向前跳，保持背部平直。
2. 双手撑地，双腿跳回高位平板支撑位置。
3. 重复。""",
        "tr": """Starting position:
Start in high plank position: back, arms, and legs straight and hands shoulder-width apart.

Steps:
1. Jump your feet forward between your arms, keeping your back flat.
2. Keeping your hands on the floor, jump your legs back into high plank position.
3. Repeat.""",
        "nl": """Startpositie:
Begin in hoge plankpositie: rug, armen en benen recht en handen op schouderbreedte uit elkaar.

Stap:
1. Spring met je voeten naar voren tussen je armen en houd je rug plat.
2. Houd je handen op de vloer, spring je benen terug in hoge plank positie.
3. Herhalen.""",
        "de": """Ausgangsposition:
Beginne in der hohen Plank-Position: Rücken, Arme und Beine sind gestreckt, die Hände sind schulterbreit auseinander.

Schritte:
1. Springe mit den Füßen zwischen den Armen nach vorne und halte den Rücken flach.
2. Lasse die Hände auf dem Boden und springe mit den Beinen zurück in die hohe Plank-Position.
3. Wiederhole die Übung.""",
        "ru": """Исходное положение:
Начните с позиции высокой планки: спина, руки и ноги прямые, руки на ширине плеч.

Шаги:
1. Прыгните ногами вперед между руками, держа спину ровной.
2. Удерживая руки на полу, верните ноги в положение высокой планки.
3. Повторите.""",
        "pt": """Posição inicial:
Comece na posição de prancha alta: costas, braços e pernas retos e as mãos afastadas alinhadas aos ombros.

Passos:
1. Pule jogando seus pés para frente entre os braços, mantendo as costas reta.
2. Mantendo suas mãos no chão, retorne suas pernas para a posição de prancha altas.
3. Repita.""",
        "en": """Starting position:
Start in high plank position: back, arms, and legs straight and hands shoulder-width apart.

Steps:
1. Jump your feet forward between your arms, keeping your back flat.
2. Keeping your hands on the floor, jump your legs back into high plank position.
3. Repeat.""",
        "it": """Posizione di partenza:
Iniziare in posizione di plank alto: schiena, braccia e gambe dritte e mani alla larghezza delle spalle.

Passi:
1. Saltare i piedi in avanti tra le braccia, mantenendo la schiena piatta.
2. Tenendo le mani sul pavimento, saltare le gambe indietro in posizione di plank alto.
3. Ripetere.""",
        "hr": """Starting position:
Start in high plank position: back, arms, and legs straight and hands shoulder-width apart.

Steps:
1. Jump your feet forward between your arms, keeping your back flat.
2. Keeping your hands on the floor, jump your legs back into high plank position.
3. Repeat.""",
        "fr": """Starting position:
Start in high plank position: back, arms, and legs straight and hands shoulder-width apart.

Steps:
1. Jump your feet forward between your arms, keeping your back flat.
2. Keeping your hands on the floor, jump your legs back into high plank position.
3. Repeat.""",
        "el": """Θέση εκκίνησης:
Εκκίνηση σε θέση υψηλής σανίδας: πλάτη, χέρια και πόδια είναι ίσια, και τα χέρια βρίσκονται στο πλάτος των ώμων.

Βήματα:
1. Πηδήξτε με τα πόδια προς τα εμπρός ανάμεσα στα χέρια, κρατώντας την πλάτη επίπεδη.
2. Διατηρώντας τα χέρια στο πάτωμα, πηδήξτε με τα πόδια σας πίσω σε θέση υψηλής σανίδας.
3. Επαναλάβετε.""",
        "cs": """Starting position:
Start in high plank position: back, arms, and legs straight and hands shoulder-width apart.

Steps:
1. Jump your feet forward between your arms, keeping your back flat.
2. Keeping your hands on the floor, jump your legs back into high plank position.
3. Repeat.""",
        "id": """Posisi awal:
Mulailah dengan posisi papan tinggi: punggung, lengan, dan kaki lurus dan tangan selebar bahu.

Langkah:
1. Lompati kaki Anda ke depan di antara kedua lengan, jaga punggung tetap rata.
2. Menjaga tangan Anda di lantai, melompat kaki Anda kembali ke posisi papan tinggi.
3. Ulangi.""",
        "es": """Starting position:
Start in high plank position: back, arms, and legs straight and hands shoulder-width apart.

Steps:
1. Jump your feet forward between your arms, keeping your back flat.
2. Keeping your hands on the floor, jump your legs back into high plank position.
3. Repeat.""",
        "ar": """وضع البداية:
ابدأ في وضع اللوح الخشبي المرتفع: الظهر والذراعين والساقين مستقيمين واليدين متباعدتين بعرض الكتفين.

الخطوات:
1. اقفز قدميك للأمام بين ذراعيك ، مع الحفاظ على ظهرك مسطحًا.
2. إبقاء يديك على الأرض ، واقفز رجليك إلى الوراء في وضع اللوح الخشبي العالي.
3. كرر.""",
      } +
      {
        "zh": """反向弓步""",
        "tr": """Ters lunge hareketi""",
        "nl": """Omgekeerde lunges""",
        "de": """Umgekehrte Ausfallschritte""",
        "ru": """Reverse lunges""",
        "pt": """Lunge reverso""",
        "en": """Reverse lunges""",
        "it": """Affondi inversi""",
        "hr": """Iskoraci unatrag""",
        "fr": """Reverse lunges""",
        "el": """Αντίστροφες προβολές ποδιών""",
        "cs": """Výpady vzad""",
        "id": """Menekuk lutut terbalik""",
        "es": """Arremetidas inversas""",
        "ar": """الطعنات العكسية""",
      } +
      {
        "zh": """起始姿势：
站直，双脚分开与臀部同宽。

步骤：
1. 一条腿向后迈步，使膝盖能舒适地弯曲成90度角。
2. 慢慢弯曲双膝，双膝均成 90 度角。
3. 回到起始位置。
4. 换腿，重复。""",
        "tr": """Başlangıç durumu:
Ayaklar kalça genişliğinde açık olacak şekilde düz durun.

Adımlar:
1. 90 derecelik bir açıyla rahatça bükülebilmesi için tek ayakla geriye doğru adım atın.
2. 90 derecelik açılar oluşturmak için her iki dizinizi de yavaşça bükün.
3. Başlangıç durumuna geri dönün.
4. Bacakları dönüşümlü olarak tekrarlayın.""",
        "nl": """Beginpositie:
Sta recht, voeten op heupbreedte uit elkaar.

Stappen:
1. Stap naar achteren met één been, zodat het comfortabel kan buigen tot een hoek van 90 graden.
2. Buig langzaam beide knieën tot een hoek van 90 graden.
3. Keer terug naar de uitgangspositie.
4. Herhaal, afwisselend met de benen.""",
        "de": """Ausgangsposition:
Gerade stehen, Füße hüftbreit auseinander.

Schritte:
1. Treten Sie mit einem Bein nach hinten, so dass Sie es bequem bis zu einem Winkel von 90 Grad beugen können.
2. Beugen Sie langsam beide Knie, um einen 90-Grad-Winkel zu bilden.
3. Kehren Sie in die Ausgangsposition zurück.
4. Wiederholen, dabei die Beine abwechseln.""",
        "ru": """Starting position:
Stand straight, feet hip-width apart.

Steps:
1. Step backward with one leg so it can bend comfortably to a 90 degree angle.
2. Slowly bend both knees to form 90 degree angles.
3. Return to the starting position.
4. Repeat, alternating legs.""",
        "pt": """Posição inicial:
Fique de pé reto, com os pés afastados.

Passos:
1. Dê um passo para trás com uma perna para que você possa dobrar-se confortavelmente a um ângulo de 90 graus.
2. Dobre lentamente ambos os joelhos para formar ângulos de 90 graus.
3. Retorne para a posição inicial.
4. Repita, alternando as pernas.""",
        "en": """Starting position:
Stand straight, feet hip-width apart.

Steps:
1. Step backward with one leg so it can bend comfortably to a 90 degree angle.
2. Slowly bend both knees to form 90 degree angles.
3. Return to the starting position.
4. Repeat, alternating legs.""",
        "it": """Posizione di partenza:
Stare dritti, piedi alla larghezza delle anche.

Passi:
1. Fare un passo indietro con una gamba in modo che possa piegarsi comodamente a un angolo di 90 gradi.
2. Piegare lentamente entrambe le ginocchia per formare un angolo di 90 gradi.
3. Tornare alla posizione di partenza.
4. Ripetere, alternando le gambe.""",
        "hr": """Starting position:
Stand straight, feet hip-width apart.

Steps:
1. Step backward with one leg so it can bend comfortably to a 90 degree angle.
2. Slowly bend both knees to form 90 degree angles.
3. Return to the starting position.
4. Repeat, alternating legs.""",
        "fr": """Starting position:
Stand straight, feet hip-width apart.

Steps:
1. Step backward with one leg so it can bend comfortably to a 90 degree angle.
2. Slowly bend both knees to form 90 degree angles.
3. Return to the starting position.
4. Repeat, alternating legs.""",
        "el": """Θέση εκκίνησης:
Σταθείτε ίσια, με τα πόδια ανοιχτά στο πλάτος των γοφών.

Βήματα:
1. Κάντε ένα βήμα προς τα πίσω με το ένα πόδι, ώστε να μπορεί να λυγίσει άνετα σε γωνία 90 μοιρών.
2. Λυγίστε αργά και τα δύο γόνατα ώστε να σχηματίσουν γωνία 90 μοιρών.
3. Επιστρέψτε στην αρχική θέση.
4. Επαναλάβετε, εναλλάσσοντας τα πόδια.""",
        "cs": """Výchozí pozice:
Stoj rozkročný, chodidla na šířku boků.

Kroky:
1. Udělejte krok vzad jednou nohou tak, abyste ji mohli pohodlně pokrčit do pravého úhlu.
2. Pomalu pokrčte obě kolena do úhlu 90 stupňů.
3. Vraťte se do výchozí polohy.
4. Opakujte, střídejte nohy.""",
        "id": """Posisi awal:
Berdiri tegak, kaki selebar pinggul.

Langkah:
1. Langkah mundur dengan satu kaki sehingga dapat menekuk dengan nyaman ke sudut 90 derajat.
2. Perlahan tekuk kedua lutut untuk membentuk sudut 90 derajat.
3. Kembali ke posisi awal.
4. Ulangi, kaki bergantian.""",
        "es": """Posición inicial:
De pie, con los pies separados a la altura de las caderas.

Pasos:
1. Da un paso hacia atrás con una pierna para que pueda doblarse cómodamente hasta un ángulo de 90 grados.
2. Doble lentamente ambas rodillas hasta formar un ángulo de 90 grados.
3. Vuelva a la posición inicial.
4. Repita, alternando las piernas.""",
        "ar": """وضع البداية:
الوقوف بشكل مستقيم ، والقدمين متباعدتين.

الخطوات:
1. خطوة للخلف بساق واحدة حتى تتمكن من الانحناء بشكل مريح بزاوية 90 درجة.
2. ثني الركبتين ببطء لتشكيل زاوية 90 درجة.
3. العودة إلى وضع البداية.
4. كرر ، بالتناوب على الساقين.""",
      } +
      {
        "zh": """抬腿""",
        "tr": """Bacak kaldırmaları""",
        "nl": """Been strekken""",
        "de": """Beine heben""",
        "ru": """Leg raises""",
        "pt": """Levantamento de pernas""",
        "en": """Leg raises""",
        "it": """Alzate le gambe""",
        "hr": """Leg raises""",
        "fr": """Levées de jambe""",
        "el": """Ανυψώσεις ποδιών""",
        "cs": """Zvedání nohou""",
        "id": """Mengangkat kaki""",
        "es": """Levantamiento de piernas""",
        "ar": """رفع الساق""",
      } +
      {
        "zh": """起始姿势：
仰卧，双脚并拢，双臂放在身体两侧。

步骤：
1. 弯曲膝盖，再向上伸直，使双腿直立。
2. 保持双腿伸直，一起放下，不接触地面。双腿越低，运动的强度就越大。
3. 两条腿一并抬起，再次竖直立起双腿。
4. 从第2步重复。""",
        "tr": """Başlangıç durumu:
Ayaklar bitişik, kollarınız yan tarafınızda olacak şekilde sırt üstü uzanın.

Adımlar:
1. Dizlerinizi bükün, ardından yukarı bakacak şekilde düzeltin.
2. Bacaklarınızı düz tutarak, yere değdirmeden birlikte aşağı indirin. Ne kadar aşağı indirirseniz egzersiz o kadar yoğun olur.
3. Tekrar yukarı bakacak şekilde her iki bacağı birlikte kaldırın.
4. 2. adımdan itibaren tekrarlayın.""",
        "nl": """Beginpositie:
Ga op je rug liggen, voeten bij elkaar, armen langs je zij.

Stappen:
1. Buig uw knieën, strek ze dan tot ze recht omhoog wijzen.
2. Houd je benen recht, laat ze samen naar beneden zakken zonder de vloer te raken. Hoe lager je gaat, hoe intensiever de oefening.
3. 3. Breng beide benen weer recht omhoog.
4. Herhaal vanaf stap 2.""",
        "de": """Ausgangsposition:
Lege Dich auf den Rücken, Füße zusammen, Arme an den Seiten.

Schritte:
1. Beuge die Knie und strecke sie dann gerade nach oben.
2. Halte die Beine gerade und senke sie gemeinsam ab, ohne den Boden zu berühren. Je tiefer, desto intensiver ist die Übung.
3. Hebe beide Beine zusammen an, so dass sie wieder gerade nach oben zeigen.
4. Wiederholen ab Schritt 2.""",
        "ru": """Starting position:
Lie down on your back, feet together, arms by your sides.

Steps:
1. Bend your knees, then straighten them to point straight up.
2. Keeping your legs straight, lower them down together without touching the floor. The lower you go, the more intense the exercise.
3. Raise both legs together to point straight up again.
4. Repeat from step 2.""",
        "pt": """Posição inicial:
Deite-se de costas, com os pés juntos, e os braços ao seu lado.

Passos:
1. Dobre os joelhos, depois os endireite para apontar para cima.
2. Mantenha as pernas retas, abaixe-as juntas, sem tocar o chão. Quanto mais baixo você for, mais intenso será o exercício.
3. Levante as duas pernas juntas para apontar para cima novamente.
4. Repita a partir do passo 2.""",
        "en": """Starting position:
Lie down on your back, feet together, arms by your sides.

Steps:
1. Bend your knees, then straighten them to point straight up.
2. Keeping your legs straight, lower them down together without touching the floor. The lower you go, the more intense the exercise.
3. Raise both legs together to point straight up again.
4. Repeat from step 2.""",
        "it": """Posizione di partenza:
Sdraiarsi sulla schiena, piedi uniti, braccia lungo i fianchi.

Passi:
1. Piegare le ginocchia, poi raddrizzarle per puntare in alto.
2. Tenendo le gambe dritte, abbassale insieme senza toccare il pavimento. Più in basso vai, più intenso è l'esercizio.
3. Sollevare entrambe le gambe insieme per puntare di nuovo verso l'alto.
4. Ripetere dal punto 2.""",
        "hr": """Starting position:
Lie down on your back, feet together, arms by your sides.

Steps:
1. Bend your knees, then straighten them to point straight up.
2. Keeping your legs straight, lower them down together without touching the floor. The lower you go, the more intense the exercise.
3. Raise both legs together to point straight up again.
4. Repeat from step 2.""",
        "fr": """Starting position:
Lie down on your back, feet together, arms by your sides.

Steps:
1. Bend your knees, then straighten them to point straight up.
2. Keeping your legs straight, lower them down together without touching the floor. The lower you go, the more intense the exercise.
3. Raise both legs together to point straight up again.
4. Repeat from step 2.""",
        "el": """Θέση εκκίνησης:
Ξαπλώστε ανάσκελα, τα πόδια ενωμένα, τα χέρια στο πλάι.

Βήματα:
1. Λυγίστε τα γόνατά σας και στη συνέχεια ισιώστε τα ώστε να δείχνουν ευθεία προς τα πάνω.
2. Κρατώντας τα πόδια σας ίσια, κατεβάστε τα μαζί χωρίς να αγγίξετε το πάτωμα. Όσο πιο χαμηλά πηγαίνετε, τόσο πιο έντονη είναι η άσκηση.
3. Σηκώστε και τα δύο πόδια μαζί για να δείξετε ξανά ευθεία προς τα επάνω.
4. Επαναλάβετε από το βήμα 2.""",
        "cs": """Výchozí pozice:
Lehněte si na záda, nohy k sobě, ruce podél těla.

Kroky:
1. Pokrčte kolena a poté je narovnejte tak, aby směřovala přímo vzhůru.
2. Držte nohy rovně a spusťte je společně dolů, aniž byste se dotkli podlahy. Čím níže jdete, tím je cvičení intenzivnější.
3. Zvedněte obě nohy společně tak, aby opět směřovaly rovně nahoru.
4. Opakujte od kroku 2.""",
        "id": """Posisi awal:
Berbaring telentang, kaki menyatu, lengan di samping tubuh.

Langkah:
1. Tekuk lutut Anda, lalu luruskan untuk menunjuk lurus ke atas.
2. Jaga agar kaki Anda tetap lurus, turunkan bersama-sama tanpa menyentuh lantai. Semakin rendah Anda pergi, semakin intens latihannya.
3. Angkat kedua kaki bersama-sama untuk menunjuk lurus ke atas lagi.
4. Ulangi dari Langkah 2.""",
        "es": """Posición inicial:
Túmbate de espaldas, con los pies juntos y los brazos a los lados.

Pasos:
1. Dobla las rodillas y luego enderézalas para que apunten hacia arriba.
2. Manteniendo las piernas rectas, bájalas juntas sin tocar el suelo. Cuanto más bajes, más intenso será el ejercicio.
3. Sube las dos piernas juntas hasta que vuelvan a apuntar hacia arriba.
4. Repite desde el paso 2.""",
        "ar": """وضع البداية:
استلقِ على ظهرك وقدميك معًا وذراعيك بجانبك.

الخطوات:
1. اثني ركبتيك ، ثم افردهما للإشارة إلى الأعلى بشكل مستقيم.
2. حافظ على استقامة ساقيك ، وأنزلهما معًا دون لمس الأرض. كلما انخفضت ، زادت كثافة التمرين.
3. ارفع كلا الساقين معًا للإشارة إلى الأعلى مرة أخرى.
4. كرر من الخطوة 2.""",
      } +
      {
        "zh": """伏地挺身""",
        "tr": """Yere dalma""",
        "nl": """Vloer dips""",
        "de": """Bodensenken""",
        "ru": """Floor dips""",
        "pt": """Mergulho em solo""",
        "en": """Floor dips""",
        "it": """Cadimenti a terra""",
        "hr": """Floor dips""",
        "fr": """Floor dips""",
        "el": """Βυθίσεις δαπέδου""",
        "cs": """Dipy na podlaze""",
        "id": """Lantai dips""",
        "es": """Bajadas al suelo""",
        "ar": """انخفاضات أرضية""",
      } +
      {
        "zh": """起始姿势：
坐在地上，双臂后放撑地，支撑上半身。
手指要指向前方。
膝盖弯曲，双脚并拢。

步骤：
1. 抬起臀部，离开地面，伸直手臂。
2. 弯曲肘部，臀部向下。
3. 伸直手臂，回到之前的位置。
4. 重复步骤2和步骤3。

注：
练习难度取决于臀部撑起得有多高。""",
        "tr": """Başlangıç durumu:
Sırtınızı destekleyerek kollarınız arkanızda oturun.
Parmaklarınız öne doğru bakmalıdır.
Dizleriniz bükülmeli, ayaklarınız birbirine yapışmalıdır.

Adımlar:
1. Kollarınızı düzleştirerek kalçalarınızı yerden kaldırın.
2. Kalçalarınızı aşağı indirerek dirseklerinizi bükün.
3. Bir önceki duruma dönerek kollarınızı düzeltin.
4. 2. ve 3. adımları tekrarlayın.

Notlar:
Egzersizin zorluğu kalçalarınızı ne kadar yükseğe çıkardığınıza bağlıdır.""",
        "nl": """Beginpositie:
Zit met je armen achter je, steunend op je rug.
Uw vingers moeten naar voren wijzen.
Je knieën moeten gebogen zijn, voeten bij elkaar.

Stappen:
1. Hef uw heupen van de grond en strek uw armen.
2. Buig je ellebogen, breng je heupen naar beneden.
3. 3. Strek uw armen en keer terug naar de vorige positie.
4. Herhaal stap 2 en 3.

Opmerkingen:
De moeilijkheidsgraad van de oefening hangt af van hoe hoog u uw heupen brengt.""",
        "de": """Ausgangsposition:
Setzen Sie sich mit den Armen hinter den Rücken und stützen Sie ihn ab.
Die Finger sollten nach vorne zeigen.
Die Knie sind gebeugt, die Füße stehen zusammen.

Die Schritte:
1. Heben Sie die Hüfte vom Boden ab und strecken Sie die Arme aus.
2. Beugen Sie die Ellbogen und bringen Sie die Hüfte nach unten.
3. Strecken Sie die Arme durch und kehren Sie in die vorherige Position zurück.
4. Wiederholen Sie die Schritte 2 und 3.

Anmerkungen:
Der Schwierigkeitsgrad der Übung hängt davon ab, wie hoch Sie Ihre Hüften bringen.""",
        "ru": """Starting position:
Sit with your arms behind you, supporting your back.
Your fingers should point forward.
Your knees should be bent, feet together.

Steps:
1. Raise your hips off the ground, straightening your arms.
2. Bend your elbows, bringing your hips down.
3. Straighten your arms, returning to the previous position.
4. Repeat steps 2 and 3.

Notes:
The exercise's difficulty depends on how high you bring your hips.""",
        "pt": """Posição inicial:
Sente-se com seus braços atrás de você, apoiando suas costas.
Seus dedos devem apontar para frente.
Seus joelhos devem estar dobrados, com os pés juntos.

Passos:
1. Levante seus quadris do chão, endireitando seus braços.
2. Dobre os cotovelos, abaixando os quadris.
3. Endireite os braços, voltando à posição anterior.
4. Repita os passos 2 e 3.

Notas:
A dificuldade do exercício depende do quanto você eleva seus quadris.""",
        "en": """Starting position:
Sit with your arms behind you, supporting your back.
Your fingers should point forward.
Your knees should be bent, feet together.

Steps:
1. Raise your hips off the ground, straightening your arms.
2. Bend your elbows, bringing your hips down.
3. Straighten your arms, returning to the previous position.
4. Repeat steps 2 and 3.

Notes:
The exercise's difficulty depends on how high you bring your hips.""",
        "it": """Posizione di partenza:
Siediti con le braccia dietro di te, sostenendo la schiena.
Le tue dita dovrebbero puntare in avanti.
Le ginocchia devono essere piegate, i piedi uniti.

Passi:
1. Sollevare i fianchi da terra, raddrizzando le braccia.
2. Piegare i gomiti, portando i fianchi verso il basso.
3. Raddrizzare le braccia, tornando alla posizione precedente.
4. Ripetere i passi 2 e 3.

Note:
La difficoltà dell'esercizio dipende da quanto in alto si portano le anche.""",
        "hr": """Starting position:
Sit with your arms behind you, supporting your back.
Your fingers should point forward.
Your knees should be bent, feet together.

Steps:
1. Raise your hips off the ground, straightening your arms.
2. Bend your elbows, bringing your hips down.
3. Straighten your arms, returning to the previous position.
4. Repeat steps 2 and 3.

Notes:
The exercise's difficulty depends on how high you bring your hips.""",
        "fr": """Starting position:
Sit with your arms behind you, supporting your back.
Your fingers should point forward.
Your knees should be bent, feet together.

Steps:
1. Raise your hips off the ground, straightening your arms.
2. Bend your elbows, bringing your hips down.
3. Straighten your arms, returning to the previous position.
4. Repeat steps 2 and 3.

Notes:
The exercise's difficulty depends on how high you bring your hips.""",
        "el": """Θέση εκκίνησης:
Καθίστε με τα χέρια σας πίσω σας, στηρίζοντας την πλάτη σας.
Τα δάχτυλά σας πρέπει να δείχνουν προς τα εμπρός.
Τα γόνατά σας πρέπει να είναι λυγισμένα, τα πόδια ενωμένα.

Βήματα:
1. Σηκώστε τους γοφούς σας από το έδαφος, ισιώνοντας τα χέρια σας.
2. Λυγίστε τους αγκώνες σας, φέρνοντας τους γοφούς σας προς τα κάτω.
3. Ισιώστε τα χέρια σας, επιστρέφοντας στην προηγούμενη θέση.
4. Επαναλάβετε τα βήματα 2 και 3.

Σημειώσεις:
Η δυσκολία της άσκησης εξαρτάται από το πόσο ψηλά φέρετε τους γοφούς σας.""",
        "cs": """Výchozí pozice:
Sedněte si s rukama za zády, podporující tělo.
Prsty by měly směřovat dopředu.
Kolena by měla být pokrčená, chodidla u sebe.

Kroky:
1. Zvedněte boky nad zem a narovnejte paže.
2. Pokrčte lokty a boky stáhněte dolů.
3. Narovnejte paže a vraťte se do předchozí polohy.
4. Opakujte kroky 2 a 3.

Poznámky:
Obtížnost cviku závisí na tom, jak vysoko vynesete boky.""",
        "id": """Posisi awal:
Duduklah dengan tangan di belakang Anda, dukung punggung Anda.
Jari-jari Anda harus mengarah ke depan.
Lutut Anda harus ditekuk, kaki menyatu.

Langkah:
1. Angkat pinggul Anda dari tanah, luruskan lengan Anda.
2. Tekuk siku Anda, turunkan pinggul Anda.
3. Luruskan lengan Anda, kembali ke posisi sebelumnya.
4. Ulangi Langkah 2 dan 3.

Catatan:
Kesulitan latihan tergantung pada seberapa tinggi Anda membawa pinggul Anda.""",
        "es": """Posición inicial:
Siéntate con los brazos detrás de ti, apoyando la espalda.
Los dedos deben apuntar hacia adelante.
Las rodillas deben estar dobladas y los pies juntos.

Pasos:
1. Levanta las caderas del suelo, estirando los brazos.
2. Dobla los codos, llevando las caderas hacia abajo.
3. Endereza los brazos, volviendo a la posición anterior.
4. Repita los pasos 2 y 3.

Notas:
La dificultad del ejercicio depende de la altura de las caderas.""",
        "ar": """وضع البداية:
اجلس وذراعيك خلفك ، داعمًا ظهرك.
يجب أن تشير أصابعك إلى الأمام.
يجب أن تكون ركبتيك مثنيتين ، وقدميك معًا.

الخطوات:
1. ارفع وركيك عن الأرض مع فرد ذراعيك.
2. اثنِ مرفقيك ، وجلب الوركين إلى أسفل.
3. فرد ذراعيك ، والعودة إلى الوضع السابق.
4. كرر الخطوتين 2 و 3.

تلاحظ:
تعتمد صعوبة التمرين على مدى ارتفاع الوركين.""",
      } +
      {
        "zh": """折刀俯卧撑""",
        "tr": """Pike şınav""",
        "nl": """Snoekpush-ups""",
        "de": """Hecht-Liegestütze""",
        "ru": """Pike push-ups""",
        "pt": """Flexão Pike""",
        "en": """Pike push-ups""",
        "it": """Flessioni del luccio""",
        "hr": """Pike push-ups""",
        "fr": """Pompes piquées""",
        "el": """Κάμψεις σε σχήμα Λ""",
        "cs": """Kliky ve střeše""",
        "id": """Push-up tombak""",
        "es": """Flexiones de pica""",
        "ar": """الدراجة الضغط""",
      } +
      {
        "zh": """起始姿势：
下犬式：身体成V字形，背部、手臂和腿部挺直，臀部翘在空中。
您可以先做高位平板支撑的姿势，然后将双手向后移来形成这个姿势。

步骤：
1. 将两个肘部向一侧弯曲，保持背部和腿部挺直，将头靠近地面。
2. 伸直双臂，将臀部向后推，保持背部和腿部挺直。
3. 重复。""",
        "tr": """Başlangıç durumu:
Aşağı bakan köpek: Vücudunuz sırt, kollar ve bacaklarla düz olacak şekilde bir V şekli oluşturmalıdır. Kalçaların havada olmalıdır.
Yüksek plank durumunda ellerinizi geriye doğru yürüterek bu duruma gelebilirsiniz.

Adımlar:
1. Dirseklerinizi yana doğru bükün, sırtınızı ve bacaklarınızı düz tutun ve başınızı yere yaklaştırın.
2. Kollarınızı düzeltin, kalçalarınızı geriye doğru itin ve sırtınızı ve bacaklarınızı düz tutun.
3. Tekrarlayın.""",
        "nl": """Startpositie:
Zet je lichaam in een omlaagwijzende V-positie, met rechte rug en gestrekte armen en benen. Je heupen moeten omhoogstaan.
Je kunt deze positie aannemen door een hoge plank te doen en met je handen naar achteren te lopen.

Steps:
1. Buig je ellebogen opzij, houd je rug recht en benen gestrekt en breng je hoofd dichter naar de grond;
2. Strek je armen, duw je heupen omhoog en houd je rug recht en benen gestrekt;
3. Herhaal.""",
        "de": """Starre Position:
Der nach unten gerichtete Hund: Ihr Körper sollte eine V-Form bilden, mit geradem Rücken, Armen und Beinen. Ihre Hüften sollten in der Luft sein.
Sie können diese Position erreichen, indem Sie die Hände aus einem hohen Plankenstand nach hinten führen.

Die Schritte:
1. Beugen Sie die Ellbogen zur Seite, halten Sie Rücken und Beine gerade und bringen Sie den Kopf näher zum Boden.
2. Strecken Sie die Arme aus, drücken Sie die Hüfte wieder nach oben und halten Sie Rücken und Beine gerade.
3. Wiederholen Sie den Vorgang.""",
        "ru": """Staring position:
Downward facing dog: Your body should make a V shape, with a straight back, arms, and legs. Your hips should be up in the air.
You can get to this position by walking your hands back from a high plank.

Steps:
1. Bend your elbows to the side, keeping your back and legs straight and moving your head closer to the floor.
2. Straighten your arms, pushing your hips back up and keeping your back and legs straight.
3. Repeat.""",
        "pt": """Posição inicial:
Com a cara virada para baixo: Seu corpo deve fazer uma forma em V, com as costas, braços e pernas retas. Seus quadris devem estar para cima no ar.
Você pode chegar a esta posição caminhando com as mãos para trás a partir de uma prancha alta.

Passos:
1. Dobre os cotovelos para o lado, mantendo suas costas e pernas retas e movendo sua cabeça para mais perto do chão.
2. Endireite os braços, empurrando os quadris para cima e mantendo as costas e as pernas retas.
3. Repita.""",
        "en": """Staring position:
Downward facing dog: Your body should make a V shape, with a straight back, arms, and legs. Your hips should be up in the air.
You can get to this position by walking your hands back from a high plank.

Steps:
1. Bend your elbows to the side, keeping your back and legs straight and moving your head closer to the floor.
2. Straighten your arms, pushing your hips back up and keeping your back and legs straight.
3. Repeat.""",
        "it": """Posizione di sguardo:
Cane rivolto verso il basso: Il tuo corpo dovrebbe formare una forma a V, con la schiena, le braccia e le gambe dritte. I tuoi fianchi dovrebbero essere in aria.
Puoi raggiungere questa posizione camminando con le mani indietro da un plank alto.

Passi:
1. Piegare i gomiti di lato, mantenendo la schiena e le gambe dritte e avvicinando la testa al pavimento.
2. Raddrizzare le braccia, spingendo i fianchi verso l'alto e mantenendo la schiena e le gambe dritte.
3. Ripetere.""",
        "hr": """Staring position:
Downward facing dog: Your body should make a V shape, with a straight back, arms, and legs. Your hips should be up in the air.
You can get to this position by walking your hands back from a high plank.

Steps:
1. Bend your elbows to the side, keeping your back and legs straight and moving your head closer to the floor.
2. Straighten your arms, pushing your hips back up and keeping your back and legs straight.
3. Repeat.""",
        "fr": """Staring position:
Downward facing dog: Your body should make a V shape, with a straight back, arms, and legs. Your hips should be up in the air.
You can get to this position by walking your hands back from a high plank.

Steps:
1. Bend your elbows to the side, keeping your back and legs straight and moving your head closer to the floor.
2. Straighten your arms, pushing your hips back up and keeping your back and legs straight.
3. Repeat.""",
        "el": """Θέση εκκίνησης:
Σκύλος που κοιτάζει προς τα κάτω: Το σώμα πρέπει να έχει σχήμα Λ, με ίσια πλάτη, χέρια και πόδια. Οι γοφοί πρέπει να είναι στον αέρα.
Μπορείτε να πάρετε αυτή τη θέση μετακινώντας τα χέρια προς τα πίσω, από μια θέση υψηλής σανίδας.

Βήματα:
1. Λυγίστε τους αγκώνες στο πλάι, κρατώντας την πλάτη και τα πόδια ίσια και μετακινώντας το κεφάλι πιο κοντά στο πάτωμα.
2. Τεντώστε τα χέρια, σπρώχνοντας τους γοφούς προς τα πάνω και κρατώντας την πλάτη και τα πόδια ίσια.
3. Επαναλάβετε.""",
        "cs": """Výchozí pozice:
Střecha: Tělo ve tvaru písmene V – rovná záda, paže a nohy, boky ve vzduchu.
Do této pozice se dostanete tak, že z vysokého prkna postupně popojdete rukami k tělu.

Kroky:
1. Pokrčte lokty do stran, záda a nohy držte rovné a hlavu přibližte k podlaze.
2. Narovnejte paže, boky pohněte zpět nahoru a záda a nohy mějte stále rovné.
3. Opakujte.""",
        "id": """Posisi awal:
Downward facing dog: tubuh Anda harus membuat bentuk V, dengan punggung lurus, lengan, dan kaki. Pinggul Anda harus di udara.
Anda bisa mencapai posisi ini dengan menggerakkan tangan Anda kembali dari papan tinggi.

Langkah:
1.Tekuk siku ke samping, jaga punggung dan kaki tetap lurus dan gerakkan kepala lebih dekat ke lantai.
2. Luruskan lengan Anda, dorong pinggul ke atas dan jaga punggung dan kaki tetap lurus.
3. Ulangi.""",
        "es": """Posición de mirada fija:
Perro mirando hacia abajo: Tu cuerpo debe hacer una forma de V, con la espalda, los brazos y las piernas rectas. Las caderas deben estar en el aire.
Puedes llegar a esta posición caminando con las manos hacia atrás desde una plancha alta.

Pasos:
1.Dobla los codos hacia los lados, manteniendo la espalda y las piernas rectas y acercando la cabeza al suelo.
2. Estira los brazos, empujando las caderas hacia atrás y manteniendo la espalda y las piernas rectas.
3. 3. Repite la operación.""",
        "ar": """موقف التحديق:
الكلب المتجه للأسفل: يجب أن يتخذ جسمك شكل V ، مع ظهر مستقيم وذراعان وأرجل. يجب أن يكون الوركين في الهواء.
يمكنك الوصول إلى هذا الوضع عن طريق إرجاع يديك للخلف من لوح مرتفع.

الخطوات:
1- اثنِ مرفقيك إلى الجانب ، وحافظ على استقامة ظهرك ورجليك وحرك رأسك أقرب إلى الأرض.
2. افرد ذراعيك وادفع وركيك للخلف وحافظ على استقامة ظهرك ورجليك.
3. كرر.""",
      } +
      {
        "zh": """收下巴运动""",
        "tr": """Chin tuck""",
        "nl": """Kin instoppen""",
        "de": """Schluckübungen""",
        "ru": """Chin tuck""",
        "pt": """Flexão de queixo""",
        "en": """Chin tuck""",
        "it": """Rialzo del mento""",
        "hr": """Chin tuck""",
        "fr": """Chin tuck""",
        "el": """Πίεση πηγουνιού""",
        "cs": """Šuplík""",
        "id": """selipkan dagu""",
        "es": """Chin tuck""",
        "ar": """تشين تاك""",
      } +
      {
        "zh": """起始姿势：
坐位或站位，背部挺直。

步骤：
1. 将手指放在下巴上，慢慢将下巴收起；头部向后移，与脊柱对齐。
2. 保持5秒钟。
3. 头部回到正常位置，重复。""",
        "tr": """Starting position:
Sit or stand with your back straight.

Steps:
1. Use fingers on your chin to slowly tuck your chin in, moving your head back to align it with your spine.
2. Hold for 5 seconds.
3. Go back to normal head position and repeat.""",
        "nl": """Beginpositie:
Zit of sta met rechte rug.

Stappen:
1. Gebruik uw vingers op uw kin om uw kin langzaam in te trekken, beweeg uw hoofd naar achteren om het op één lijn te brengen met uw ruggengraat.
2. Houd 5 seconden vast.
3. 3. Ga terug naar de normale hoofdpositie en herhaal.""",
        "de": """Ausgangsposition:
Sitzen oder stehen Sie mit geradem Rücken.

Schritte:
1. Ziehen Sie mit den Fingern am Kinn langsam das Kinn nach innen und bewegen Sie den Kopf zurück, um ihn mit der Wirbelsäule in Einklang zu bringen.
2. Halten Sie die Position für 5 Sekunden.
3. Gehen Sie zurück in die normale Kopfposition und wiederholen Sie den Vorgang.""",
        "ru": """Starting position:
Sit or stand with your back straight.

Steps:
1. Use fingers on your chin to slowly tuck your chin in, moving your head back to align it with your spine.
2. Hold for 5 seconds.
3. Go back to normal head position and repeat.""",
        "pt": """Posicão inicial:
Sente-se ou fique de pé com as costas retas.

Passos:
1. Coloque os dedos no queixo para incliná-lo para dentro lentamente, movendo a cabeça para trás para alinhá-la com a coluna.
2. Segure por 5 segundos.
3. Volte à posição normal da cabeça e repita.""",
        "en": """Starting position:
Sit or stand with your back straight.

Steps:
1. Use fingers on your chin to slowly tuck your chin in, moving your head back to align it with your spine.
2. Hold for 5 seconds.
3. Go back to normal head position and repeat.""",
        "it": """Posizione di partenza:
Seduti o in piedi con la schiena dritta.

Passi:
1. Usare le dita sul mento per infilare lentamente il mento, spostando la testa indietro per allinearla con la colonna vertebrale.
2. Tenere per 5 secondi.
3. Torna alla posizione normale della testa e ripeti.""",
        "hr": """Starting position:
Sit or stand with your back straight.

Steps:
1. Use fingers on your chin to slowly tuck your chin in, moving your head back to align it with your spine.
2. Hold for 5 seconds.
3. Go back to normal head position and repeat.""",
        "fr": """Starting position:
Sit or stand with your back straight.

Steps:
1. Use fingers on your chin to slowly tuck your chin in, moving your head back to align it with your spine.
2. Hold for 5 seconds.
3. Go back to normal head position and repeat.""",
        "el": """Θέση εκκίνησης:
Καθίστε ή σταθείτε με την πλάτη σας ίσια.

Βήματα:
1. Χρησιμοποιήστε τα δάχτυλά σας στο πηγούνι σας για να πιέσετε αργά το πηγούνι σας προς τα μέσα, μετακινώντας το κεφάλι σας προς τα πίσω για να το ευθυγραμμίσετε με τη σπονδυλική σας στήλη.
2. Κρατήστε για 5 δευτερόλεπτα.
3. Επιστρέψτε στην κανονική θέση του κεφαλιού και επαναλάβετε.""",
        "cs": """Starting position:
Sit or stand with your back straight.

Steps:
1. Use fingers on your chin to slowly tuck your chin in, moving your head back to align it with your spine.
2. Hold for 5 seconds.
3. Go back to normal head position and repeat.""",
        "id": """Posisi awal:
Duduk atau berdiri dengan punggung lurus.

Langkah:
1. Gunakan jari-jari di dagu Anda untuk perlahan-lahan menyelipkan dagu Anda, gerakkan kepala anda ke belakang untuk menyelaraskannya dengan tulang belakang Anda.
2. Tahan selama 5 detik.
3. Kembali ke posisi kepala normal dan ulangi.""",
        "es": """Starting position:
Sit or stand with your back straight.

Steps:
1. Use fingers on your chin to slowly tuck your chin in, moving your head back to align it with your spine.
2. Hold for 5 seconds.
3. Go back to normal head position and repeat.""",
        "ar": """وضع البداية:
اجلس أو قف وظهرك مستقيم.

خطوات:
1. استخدم أصابعك على ذقنك لثني ذقنك ببطء ، وحرك رأسك للخلف لمحاذاة عمودك الفقري.
2. استمر لمدة 5 ثوان.
3. العودة إلى وضع الرأس الطبيعي وكرر.""",
      } +
      {
        "zh": """转头""",
        "tr": """Head turns""",
        "nl": """Hoofd draaiingen""",
        "de": """Kopf drehen""",
        "ru": """Повороты головы""",
        "pt": """Virar a cabeça""",
        "en": """Head turns""",
        "it": """La testa gira""",
        "hr": """Head turns""",
        "fr": """Tour de tête""",
        "el": """Στροφές κεφαλής""",
        "cs": """Head turns""",
        "id": """Putar kepala""",
        "es": """Head turns""",
        "ar": """تدوير الرأس""",
      } +
      {
        "zh": """起始姿势：
坐位或站位，背部挺直，肩部向下。

步骤：
1. 坐直（站直），放松肩部。
2. 尽可能地把头转向一侧，在您感到阻碍时停下来，保持5秒钟。
3. 回到中间位置，换边，重复。""",
        "tr": """Starting position:
Sit or stand with your back straight and shoulders down.

Steps:
1. Sit or stand up straight, shoulders dropped.
2. Turn your head to the side as far as possible. Stop when you hit a barrier and hold for 5 seconds.
3. Return to center position and repeat, changing sides.""",
        "nl": """Beginpositie:
Zit of sta met je rug recht en schouders naar beneden.

Stappen:
1. Zit of sta rechtop, schouders omlaag.
2. Draai uw hoofd zo ver mogelijk opzij. Stop wanneer je een barrière raakt en houd 5 seconden vast.
3. Keer terug naar de middenpositie en herhaal, waarbij u van kant wisselt.""",
        "de": """Ausgangsposition:
Sitzen oder stehen Sie mit geradem Rücken und Schultern nach unten.

Schritte:
1. Setzen oder stellen Sie sich gerade hin, die Schultern sind gesenkt.
2. Drehen Sie Ihren Kopf so weit wie möglich zur Seite. Halten Sie an, wenn Sie auf ein Hindernis stoßen, und bleiben Sie 5 Sekunden lang stehen.
3. Kehren Sie in die Mittelposition zurück und wiederholen Sie den Vorgang, wobei Sie die Seite wechseln.""",
        "ru": """Starting position:
Sit or stand with your back straight and shoulders down.

Steps:
1. Sit or stand up straight, shoulders dropped.
2. Turn your head to the side as far as possible. Stop when you hit a barrier and hold for 5 seconds.
3. Return to center position and repeat, changing sides.""",
        "pt": """Posição inicial:
Sente-se ou fique em pé com as costas retas e com os ombros para baixo.

Passos:
1. Sente-se ou levante-se ereto, ombros caídos.
2. Vire a cabeça para o lado o máximo possível. Pare quando você atingir um limite e segure por 5 segundos.
3. Retorne à posição central e repita, mudando de lado.""",
        "en": """Starting position:
Sit or stand with your back straight and shoulders down.

Steps:
1. Sit or stand up straight, shoulders dropped.
2. Turn your head to the side as far as possible. Stop when you hit a barrier and hold for 5 seconds.
3. Return to center position and repeat, changing sides.""",
        "it": """Posizione di partenza:
Seduti o in piedi con la schiena dritta e le spalle abbassate.

Passi:
1. Sedersi o stare in piedi con la schiena dritta e le spalle abbassate.
2. Gira la testa di lato il più possibile. Fermati quando colpisci una barriera e tieni premuto per 5 secondi.
3. Ritorna in posizione centrale e ripeti, cambiando lato.""",
        "hr": """Starting position:
Sit or stand with your back straight and shoulders down.

Steps:
1. Sit or stand up straight, shoulders dropped.
2. Turn your head to the side as far as possible. Stop when you hit a barrier and hold for 5 seconds.
3. Return to center position and repeat, changing sides.""",
        "fr": """Position de départ :
Asseyez-vous ou tenez-vous debout, le dos droit et les épaules basses.

Étapes :
1. Asseyez-vous ou tenez-vous debout, le dos droit. Épaules baissées.
2. Tournez la tête vers la gauche aussi loin que possible. Arrêtez-vous lorsque vous rencontrez un obstacle et maintenez cette position pendant 5 secondes.
3. Revenez à la position centrale.
4. Répétez en changeant de côté.""",
        "el": """Θέση εκκίνησης:
Καθίστε ή σταθείτε με την πλάτη ίσια και τους ώμους κάτω.

Βήματα:
1. Καθίστε ή σταθείτε όρθιοι, με τους ώμους πεσμένους.
2. Γυρίστε το κεφάλι σας στο πλάι όσο το δυνατόν περισσότερο. Σταματήστε όταν φτάσετε σε σημείο αντίστασης και κρατήστε το για 5 δευτερόλεπτα.
3. Επιστρέψτε στην κεντρική θέση και επαναλάβετε, αλλάζοντας πλευρές.""",
        "cs": """Starting position:
Sit or stand with your back straight and shoulders down.

Steps:
1. Sit or stand up straight, shoulders dropped.
2. Turn your head to the side as far as possible. Stop when you hit a barrier and hold for 5 seconds.
3. Return to center position and repeat, changing sides.""",
        "id": """Posisi awal:
Duduk atau berdiri dengan punggung lurus dan bahu ke bawah.

Langkah:
1. Duduk atau berdiri tegak, bahu turun.
2. Putar kepala Anda ke samping sejauh mungkin. Berhenti ketika Anda menekan penghalang dan tahan selama 5 detik.
3. Kembali ke posisi tengah dan ulangi, ganti sisi.""",
        "es": """Starting position:
Sit or stand with your back straight and shoulders down.

Steps:
1. Sit or stand up straight, shoulders dropped.
2. Turn your head to the side as far as possible. Stop when you hit a barrier and hold for 5 seconds.
3. Return to center position and repeat, changing sides.""",
        "ar": """وضع البداية:
اجلس أو قف وظهرك مستقيماً وكتفيك إلى أسفل.

خطوات:
1. اجلس أو قف بشكل مستقيم ، مع انخفاض الكتفين.
2. أدر رأسك إلى الجانب إلى أقصى حد ممكن. توقف عندما تصطدم بحاجز وتثبت.
3. عد إلى المركز وكرر الأمر مع تغيير الجوانب.""",
      } +
      {
        "zh": """后颈部拉伸""",
        "tr": """Back neck stretch""",
        "nl": """Achternek rekken""",
        "de": """Nackendehnung""",
        "ru": """Back neck stretch""",
        "pt": """Alongamento de pescoço""",
        "en": """Back neck stretch""",
        "it": """Stiramento della nuca""",
        "hr": """Istezanje stražnjeg vrata""",
        "fr": """Flexion du cou""",
        "el": """Διάταση αυχένα πίσω""",
        "cs": """Protažení zadní strany krku""",
        "id": """Peregangan leher belakang""",
        "es": """Back neck stretch""",
        "ar": """تمتد الرقبة الخلفية""",
      } +
      {
        "zh": """起始姿势：
 坐在椅子或坚固的枕头上。

 步骤：
 1. 呼气，头向前倾斜，下巴靠胸，双手放在脑后。
 2. 用手将头轻轻拉下，用头顶住双手以平衡用力。
 3. 坚持一会儿。
 4. 放松手臂和头部，肩膀稍微张开。
 5. 从第 2 步开始重复此操作。""",
        "tr": """Starting position:
Sit upright on a chair or a firm pillow.

Steps:
1. Breathe out and tilt your head forward, chin to chest, putting hands behind your head.
2. Use your hands to pull your head down lightly and press against your hands with your head to balance out the force.
3. Hold for a bit.
4. Relax your arms and head, opening up a bit with your shoulders.
5. Keep repeating this from step 2 onward.""",
        "nl": """Beginpositie:
Zit rechtop op een stoel of een stevig kussen.

Stappen:
1. Adem uit en kantel uw hoofd naar voren, kin naar de borst, waarbij u de handen achter uw hoofd plaatst.
2. Gebruik uw handen om uw hoofd heel licht naar beneden te trekken. Houd 5 seconden vast.
3. 3. Trek de schouders naar achteren en naar beneden met behulp van de spieren in uw rug. Dit zou de nek meer moeten strekken. Houd 5 seconden vast.
4. Duw nu zachtjes uw hoofd terug omhoog, terwijl u het ook naar beneden trekt met uw handen. Balanceer beide krachten zodat uw hoofd niet beweegt. Houd dit minstens 5 seconden vast.
5. Breng uw vingers naar uw voorhoofd en gebruik ze om uw hoofd zachtjes terug in de oorspronkelijke positie te brengen.""",
        "de": """Ausgangsposition:
Setzen Sie sich aufrecht auf einen Stuhl oder ein festes Kissen.

Schritte:
1. Atmen Sie aus und neigen Sie den Kopf nach vorne, das Kinn zur Brust, und legen Sie die Hände hinter den Kopf.
2. Ziehen Sie den Kopf mit den Händen leicht nach unten und drücken Sie mit dem Kopf gegen die Hände, um die Kraft auszugleichen.
3. Halten Sie die Position eine Weile.
4. Entspanne deine Arme und deinen Kopf und öffne deine Schultern ein wenig.
5. Wiederhole dies von Schritt 2 an.""",
        "ru": """Starting position:
Sit upright on a chair or a firm pillow.

Steps:
1. Breathe out and tilt your head forward, chin to chest, putting hands behind your head.
2. Use your hands to pull your head down lightly and press against your hands with your head to balance out the force.
3. Hold for a bit.
4. Relax your arms and head, opening up a bit with your shoulders.
5. Keep repeating this from step 2 onward.""",
        "pt": """Posição inicial:
Sente-se ereto em uma cadeira ou em um travesseiro firme.

Passos:
1. Expire e incline a cabeça para frente, queixo no peito, colocando as mãos atrás da cabeça.
2. Use as mãos para puxar a cabeça levemente para baixo. Segure por 5 segundos.
3. Puxe os ombros para trás e para baixo usando os músculos das costas. Isso deve aumentar o alongamento do pescoço. Segure por 5 segundos.
4. Agora empurre suavemente a cabeça para cima, enquanto também a puxa para baixo com as mãos. Equilibre as duas forças para que sua cabeça não se mova. Segure por pelo menos 5 segundos.
5. Leve os dedos à testa e use-os para mover suavemente a cabeça de volta à posição original.""",
        "en": """Starting position:
Sit upright on a chair or a firm pillow.

Steps:
1. Breathe out and tilt your head forward, chin to chest, putting hands behind your head.
2. Use your hands to pull your head down lightly and press against your hands with your head to balance out the force.
3. Hold for a bit.
4. Relax your arms and head, opening up a bit with your shoulders.
5. Keep repeating this from step 2 onward.""",
        "it": """Posizione di partenza:
Sedersi in posizione eretta su una sedia o un cuscino solido.

Passi:
1. Espirare e inclinare la testa in avanti, mento al petto, mettendo le mani dietro la testa.
2. Usa le mani per tirare la testa verso il basso molto leggermente. Tenere per 5 secondi.
3. Tira le spalle indietro e in basso usando i muscoli della schiena. Questo dovrebbe aumentare l'allungamento del collo. Tenere per 5 secondi.
4. Ora spingi delicatamente la testa verso l'alto, mentre la tiri verso il basso con le mani. Bilanciare entrambe le forze in modo che la testa non si muova. Tenere per almeno 5 secondi.
5. Porta le dita alla fronte e usale per spostare delicatamente la testa nella posizione originale.""",
        "hr": """Starting position:
Sit upright on a chair or a firm pillow.

Steps:
1. Breathe out and tilt your head forward, chin to chest, putting hands behind your head.
2. Use your hands to pull your head down lightly and press against your hands with your head to balance out the force.
3. Hold for a bit.
4. Relax your arms and head, opening up a bit with your shoulders.
5. Keep repeating this from step 2 onward.""",
        "fr": """Starting position:
Sit upright on a chair or a firm pillow.

Steps:
1. Breathe out and tilt your head forward, chin to chest, putting hands behind your head.
2. Use your hands to pull your head down lightly and press against your hands with your head to balance out the force.
3. Hold for a bit.
4. Relax your arms and head, opening up a bit with your shoulders.
5. Keep repeating this from step 2 onward.""",
        "el": """Θέση εκκίνησης:
Καθίστε όρθιοι σε μια καρέκλα ή ένα σταθερό μαξιλάρι.

Βήματα:
1. Εκπνεύστε και γείρετε το κεφάλι προς τα εμπρός, το πηγούνι στο στήθος, βάζοντας τα χέρια πίσω από το κεφάλι.
2. Χρησιμοποιήστε τα χέρια για να τραβήξετε το κεφάλι προς τα κάτω πολύ ελαφρά. Κρατήστε το για 5 δευτερόλεπτα.
3. Τραβήξτε τους ώμους πίσω και κάτω χρησιμοποιώντας τους μυς στην πλάτη σας. Αυτό θα πρέπει να αυξήσει το τέντωμα του λαιμού. Κρατήστε το για 5 δευτερόλεπτα.
4. Τώρα σπρώξτε απαλά το κεφάλι σας προς τα πάνω, ενώ το τραβάτε επίσης προς τα κάτω με τα χέρια σας. Ισορροπήστε και τις δύο δυνάμεις έτσι ώστε το κεφάλι σας να μην κινείται. Κρατήστε το για τουλάχιστον 5 δευτερόλεπτα.
5. Φέρτε τα δάχτυλά σας στο μέτωπό σας και χρησιμοποιήστε τα για να μετακινήσετε απαλά το κεφάλι σας πίσω στην αρχική του θέση.""",
        "cs": """Starting position:
Sit upright on a chair or a firm pillow.

Steps:
1. Breathe out and tilt your head forward, chin to chest, putting hands behind your head.
2. Use your hands to pull your head down lightly and press against your hands with your head to balance out the force.
3. Hold for a bit.
4. Relax your arms and head, opening up a bit with your shoulders.
5. Keep repeating this from step 2 onward.""",
        "id": """Posisi awal:
Duduk tegak di kursi atau bantal yang kokoh.

Langkah:
1. Tarik napas dan miringkan kepala ke depan, dagu ke dada, letakkan tangan di belakang kepala.
2. Gunakan tangan Anda untuk menarik kepala Anda ke bawah dengan sangat ringan. Tahan selama 5 detik.
3. Tarik bahu ke belakang dan ke bawah menggunakan otot-otot di punggung Anda. Ini harus meningkatkan peregangan leher. Tahan selama 5 detik.
4. Sekarang dengan lembut dorong kepala Anda kembali ke atas, sambil juga menariknya ke bawah dengan tangan Anda. Seimbangkan kedua kekuatan agar kepala Anda tidak bergerak. Tahan setidaknya selama 5 detik.
5. Bawa jari-jari Anda ke dahi Anda dan gunakan untuk menggerakkan kepala Anda kembali ke posisi semula dengan lembut.""",
        "es": """Starting position:
Sit upright on a chair or a firm pillow.

Steps:
1. Breathe out and tilt your head forward, chin to chest, putting hands behind your head.
2. Use your hands to pull your head down lightly and press against your hands with your head to balance out the force.
3. Hold for a bit.
4. Relax your arms and head, opening up a bit with your shoulders.
5. Keep repeating this from step 2 onward.""",
        "ar": """وضع البداية:
اجلس منتصبًا على كرسي أو وسادة ثابتة.

خطوات:
1. أخرج الزفير وقم بإمالة رأسك للأمام ، والذقن إلى الصدر ، ووضع يديك خلف رأسك.
2. استخدم يديك لسحب رأسك لأسفل بخفة شديدة. استمر لمدة 5 ثوان.
3. اسحب الكتفين للخلف والأسفل باستخدام عضلات ظهرك. هذا يجب أن يزيد من شد الرقبة. استمر لمدة 5 ثوان.
4. الآن ادفع رأسك بلطف للخلف ، بينما اسحبه لأسفل بيديك. وازن بين القوتين بحيث لا يتحرك رأسك. استمر لمدة 5 ثوان على الأقل.
5. اجلب أصابعك إلى جبهتك واستخدمها لتحريك رأسك برفق إلى الموضع الأصلي.""",
      } +
      {
        "zh": """左颈部拉伸""",
        "tr": """Left neck stretch""",
        "nl": """Linker nekrekking""",
        "de": """Linke Nackendehnung""",
        "ru": """Left neck stretch""",
        "pt": """Alongamento de pescoço para esquerda""",
        "en": """Left neck stretch""",
        "it": """Stiramento del collo sinistro""",
        "hr": """Left neck stretch""",
        "fr": """Étirement du cou à gauche""",
        "el": """Διάταση λαιμού αριστερά""",
        "cs": """Protažení levé strany krku""",
        "id": """Peregangan leher kiri""",
        "es": """Left neck stretch""",
        "ar": """تمتد الرقبة لليسار""",
      } +
      {
        "zh": """右颈部拉伸""",
        "tr": """Right neck stretch""",
        "nl": """Rechter nekrekking""",
        "de": """Rechte Nackendehnung""",
        "ru": """Right neck stretch""",
        "pt": """Alongamento de pescoço para direita""",
        "en": """Right neck stretch""",
        "it": """Stiramento del collo destro""",
        "hr": """Right neck stretch""",
        "fr": """Étirement du cou à droite""",
        "el": """Διάταση λαιμού δεξιά""",
        "cs": """Protažení pravé strany krku""",
        "id": """Peregangan leher kanan""",
        "es": """Right neck stretch""",
        "ar": """تمدد الرقبة لليمين""",
      } +
      {
        "zh": """起始姿势：
坐位或站位，背部挺直。

步骤：
 1. 头向一侧倾斜。
 2. 用离头较近的那只手从另一侧抓住头部。
 3. 手顶着头，头顶着手推动，使力量平衡，头部保持静止。
 4. 保持这种张力直到练习结束。""",
        "tr": """Starting position:
Sit or stand with your back straight.

Steps:
1. Tilt your head to the side.
2. Take the hand closer to your head and use it to grab your head from the other side.
3. Push with your hand against your head and with your head against your hand so that the forces balance out and your head stays still.
4. Maintain this tension until the end of the exercise.""",
        "nl": """Beginpositie:
Zit of sta met rechte rug.

Stappen:
1. Kantel uw hoofd naar de zijkant en houd 8 seconden vast om de zijkant van uw nek te strekken.
2. Trek met de dichtstbijzijnde hand boven op uw hoofd zachtjes om verder te strekken. Houd 8 seconden vast.
3. Draai uw kin naar uw schouder. Houd 8 seconden vast.
4. Laat los en keer terug naar de beginpositie.""",
        "de": """Ausgangsposition:
Sitzen oder stehen Sie mit geradem Rücken.

Schritte:
1. Neigen Sie den Kopf zur Seite.
2. Nehmen Sie die Hand, die näher am Kopf ist, und fassen Sie damit Ihren Kopf von der anderen Seite.
3. Drücken Sie mit der Hand gegen den Kopf und mit dem Kopf gegen die Hand, damit sich die Kräfte ausgleichen und der Kopf ruhig bleibt.
4. Halten Sie diese Spannung bis zum Ende der Übung aufrecht.""",
        "ru": """Starting position:
Sit or stand with your back straight.

Steps:
1. Tilt your head to the side.
2. Take the hand closer to your head and use it to grab your head from the other side.
3. Push with your hand against your head and with your head against your hand so that the forces balance out and your head stays still.
4. Maintain this tension until the end of the exercise.""",
        "pt": """Posição inicial:
Sente-se ou fique em pé com as costas retas.

Passos:
1. Incline a cabeça para o lado e segure por 8 segundos para alongar a lateral do pescoço.
2. Com a mão mais próxima no topo da cabeça, puxe suavemente para alongar ainda mais. Segure por 8 segundos.
3. Vire o queixo para o ombro. Segure por 8 segundos.
4. Solte e retorne à posição inicial.""",
        "en": """Starting position:
Sit or stand with your back straight.

Steps:
1. Tilt your head to the side.
2. Take the hand closer to your head and use it to grab your head from the other side.
3. Push with your hand against your head and with your head against your hand so that the forces balance out and your head stays still.
4. Maintain this tension until the end of the exercise.""",
        "it": """Posizione di partenza:
Seduti o in piedi con la schiena dritta.

Passi:
1. Inclinare la testa di lato e tenerla per 8 secondi per allungare il lato del collo.
2. Con la mano più vicina sopra la testa, tirare delicatamente per allungare ulteriormente. Tenere per 8 secondi.
3. Girare il mento verso la spalla. Tenere per 8 secondi.
4. Rilasciare e tornare alla posizione di partenza.""",
        "hr": """Starting position:
Sit or stand with your back straight.

Steps:
1. Tilt your head to the side.
2. Take the hand closer to your head and use it to grab your head from the other side.
3. Push with your hand against your head and with your head against your hand so that the forces balance out and your head stays still.
4. Maintain this tension until the end of the exercise.""",
        "fr": """Starting position:
Sit or stand with your back straight.

Steps:
1. Tilt your head to the side.
2. Take the hand closer to your head and use it to grab your head from the other side.
3. Push with your hand against your head and with your head against your hand so that the forces balance out and your head stays still.
4. Maintain this tension until the end of the exercise.""",
        "el": """Θέση εκκίνησης:
Κάθισε ή στάσου όρθιος με την πλάτη ίσια.

Βήματα:
1. Γείρετε το κεφάλι σας προς το πλάι και κρατήστε το για 8 δευτερόλεπτα για να τεντώσετε την πλευρά του αυχένα σας.
2. Με το πιο κοντινό χέρι στην κορυφή του κεφαλιού σας, τραβήξτε απαλά για να τεντώσετε περισσότερο. Κρατήστε το για 8 δευτερόλεπτα.
3. Γυρίστε το πηγούνι προς τον ώμο. Κρατήστε το για 8 δευτερόλεπτα.
4. Απελευθερώστε και επιστρέψτε στην αρχική θέση.""",
        "cs": """Starting position:
Sit or stand with your back straight.

Steps:
1. Tilt your head to the side.
2. Take the hand closer to your head and use it to grab your head from the other side.
3. Push with your hand against your head and with your head against your hand so that the forces balance out and your head stays still.
4. Maintain this tension until the end of the exercise.""",
        "id": """Posisi awal:
Duduk atau berdiri dengan punggung lurus.

Langkah:
1. Miringkan kepala anda ke samping dan tahan selama 8 detik untuk meregangkan sisi leher Anda.
2. Dengan tangan yang lebih dekat di atas kepala Anda, tarik perlahan untuk meregangkan lebih jauh. Tahan selama 8 detik.
3. Putar dagu ke bahu. Tahan selama 8 detik.
4. Lepaskan dan kembali ke posisi awal.""",
        "es": """Starting position:
Sit or stand with your back straight.

Steps:
1. Tilt your head to the side.
2. Take the hand closer to your head and use it to grab your head from the other side.
3. Push with your hand against your head and with your head against your hand so that the forces balance out and your head stays still.
4. Maintain this tension until the end of the exercise.""",
        "ar": """وضع البداية:
اجلس أو قف وظهرك مستقيم.

خطوات:
1. قم بإمالة رأسك إلى الجانب واستمر لمدة ٨ ثوانٍ لتمديد جانب رقبتك.
2. مع وضع اليد المعاكسة على رأسك ، اسحب برفق لتمتد أكثر. استمر لمدة ٨ ثوان.
3. أدر ذقنك إلى كتفك. استمر لمدة ٨ ثوان.
4. حرر والعودة إلى وضع البداية.""",
      } +
      {
        "zh": """耸肩运动""",
        "tr": """Shoulder shrugs""",
        "nl": """Schouders ophalen""",
        "de": """Schulterzucken""",
        "ru": """Shoulder shrugs""",
        "pt": """Encolher os ombros""",
        "en": """Shoulder shrugs""",
        "it": """Scrollate di spalle""",
        "hr": """Shoulder shrugs""",
        "fr": """Haussement d'épaules""",
        "el": """Ανασηκώσεις ώμων""",
        "cs": """Shoulder shrugs""",
        "id": """Mengangkat bahu""",
        "es": """Shoulder shrugs""",
        "ar": """هز الكتفين""",
      } +
      {
        "zh": """起始位置：
坐位或站位，背部挺直。

步骤：
1. 将肩膀尽可能地向上抬起，保持 5 秒。
2. 肩膀回到放松的位置。
3. 重复。""",
        "tr": """Starting position:
Sit or stand with your back straight.

Steps:
1. Lift shoulders straight up as far as possible and hold for 5 sec.
2. Release shoulders back down to a relaxed position.
3. Repeat.""",
        "nl": """Beginpositie:
Zit of sta met rechte rug.

Stappen:
1. Til de schouders zo ver mogelijk recht omhoog en houd ze 5 sec. vast.
2. Laat de schouders weer zakken naar een ontspannen positie.
3. Herhaal.""",
        "de": """Ausgangsposition:
Sitzen oder stehen Sie mit geradem Rücken.

Schritte:
1. Heben Sie die Schultern so weit wie möglich gerade nach oben und halten Sie sie 5 Sekunden lang.
2. Lassen Sie die Schultern wieder in eine entspannte Position sinken.
3. Wiederholen Sie die Übung.""",
        "ru": """Starting position:
Sit or stand with your back straight.

Steps:
1. Lift shoulders straight up as far as possible and hold for 5 sec.
2. Release shoulders back down to a relaxed position.
3. Repeat.""",
        "pt": """Posicão inicial:
Sente-se ou fique de pé com as costas retas.

Passos:
1. Levante os ombros o máximo possível e segure por 5 segundos.
2. Solte os ombros de volta para uma posição relaxada.
3. Repita.""",
        "en": """Starting position:
Sit or stand with your back straight.

Steps:
1. Lift shoulders straight up as far as possible and hold for 5 sec.
2. Release shoulders back down to a relaxed position.
3. Repeat.""",
        "it": """Posizione di partenza:
Seduti o in piedi con la schiena dritta.

Passi:
1. Sollevare le spalle in alto il più possibile e tenere premuto per 5 secondi.
2. Rilasciare le spalle verso il basso in una posizione rilassata.
3. Ripetere.""",
        "hr": """Starting position:
Sit or stand with your back straight.

Steps:
1. Lift shoulders straight up as far as possible and hold for 5 sec.
2. Release shoulders back down to a relaxed position.
3. Repeat.""",
        "fr": """Starting position:
Sit or stand with your back straight.

Steps:
1. Lift shoulders straight up as far as possible and hold for 5 sec.
2. Release shoulders back down to a relaxed position.
3. Repeat.""",
        "el": """Θέση εκκίνησης:
Καθίστε ή σταθείτε με την πλάτη σας ίσια.

Βήματα:
1. Σηκώστε τους ώμους πιο ψηλά όσο το δυνατόν περισσότερο και κρατήστε για 5 δευτερόλεπτα.
2. Αφήστε τους ώμους προς τα κάτω σε χαλαρή θέση.
3. Επαναλάβετε.""",
        "cs": """Starting position:
Sit or stand with your back straight.

Steps:
1. Lift shoulders straight up as far as possible and hold for 5 sec.
2. Release shoulders back down to a relaxed position.
3. Repeat.""",
        "id": """Posisi awal:
Duduk atau berdiri dengan punggung lurus.

Langkah:
1. Angkat bahu lurus ke atas sejauh mungkin dan tahan selama 5 detik.
2. Lepaskan bahu kembali ke posisi santai.
3. Ulangi.""",
        "es": """Starting position:
Sit or stand with your back straight.

Steps:
1. Lift shoulders straight up as far as possible and hold for 5 sec.
2. Release shoulders back down to a relaxed position.
3. Repeat.""",
        "ar": """وضع البداية:
اجلس أو قف وظهرك مستقيم.

خطوات:
1. ارفع الكتفين بشكل مستقيم إلى أقصى حد ممكن واستمر لمدة 5 ثوانٍ.
2. حرر الكتفين لأسفل إلى وضع مريح.
3. كرر.""",
      } +
      {
        "zh": """前颈部拉伸""",
        "tr": """Front neck stretch""",
        "nl": """Voor nekrekking""",
        "de": """Nackenstütze vorne""",
        "ru": """Front neck stretch""",
        "pt": """Alongamento frontal do pescoço""",
        "en": """Front neck stretch""",
        "it": """Collo anteriore allungato""",
        "hr": """Istezanje vrata prema naprijed""",
        "fr": """Étirement du cou en avant""",
        "el": """Διάταση λαιμού εμπρός""",
        "cs": """Protažení přední strany krku""",
        "id": """Peregangan leher depan""",
        "es": """Front neck stretch""",
        "ar": """تمتد الرقبة الأمامية""",
      } +
      {
        "zh": """起始位置：
坐位或站位，背部挺直。

步骤：
1. 张大嘴巴。
2. 保持嘴张开，慢慢仰头。可以将双手放在脑后支撑头部。
3. 慢慢地合上嘴再张开。
4. 最后，慢慢回到起始位置，合上嘴部。""",
        "tr": """Starting position:
Sit or stand with your back straight.

Steps:
1. Open mouth wide.
2. Slowly tilt head back with mouth opened. If you feel the need for support, clasp your hands behind your head.
3. Very slowly close and open your mouth.
4. At the end, slowly return to starting position and close mouth.""",
        "nl": """Beginpositie:
Zit of sta met rechte rug.

Stappen:
1. Mond wijd open.
2. Kantel het hoofd langzaam naar achteren met de mond open. Als u behoefte heeft aan steun, klem dan uw handen achter uw hoofd.
3. Sluit en open heel langzaam uw mond.
4. Aan het einde keert u langzaam terug naar de beginpositie en sluit u de mond.""",
        "de": """Ausgangsposition:
Sitzen oder stehen Sie mit geradem Rücken.

Schritte:
1. Öffnen Sie den Mund weit.
2. Neigen Sie den Kopf bei geöffnetem Mund langsam nach hinten. Wenn Sie das Gefühl haben, dass Sie Unterstützung brauchen, verschränken Sie Ihre Hände hinter dem Kopf.
3. Schließen und öffnen Sie den Mund ganz langsam.
4. Am Ende kehren Sie langsam in die Ausgangsposition zurück und schließen den Mund.""",
        "ru": """Starting position:
Sit or stand with your back straight.

Steps:
1. Open mouth wide.
2. Slowly tilt head back with mouth opened. If you feel the need for support, clasp your hands behind your head.
3. Very slowly close and open your mouth.
4. At the end, slowly return to starting position and close mouth.""",
        "pt": """Posição inicial:
Sente-se ou fique em pé com as costas retas.

Passos:
1. Abra bem a boca.
2. Incline lentamente a cabeça para trás com a boca aberta. Se sentir necessidade de apoio, junte as mãos atrás da cabeça.
3. Feche e abra a boca muito lentamente.
4. Ao final, retorne lentamente à posição inicial e feche a boca.""",
        "en": """Starting position:
Sit or stand with your back straight.

Steps:
1. Open mouth wide.
2. Slowly tilt head back with mouth opened. If you feel the need for support, clasp your hands behind your head.
3. Very slowly close and open your mouth.
4. At the end, slowly return to starting position and close mouth.""",
        "it": """Posizione di partenza:
Seduti o in piedi con la schiena dritta.

Passi:
1. Aprire bene la bocca.
2. Inclinare lentamente la testa all'indietro con la bocca aperta. Se senti il bisogno di un sostegno, stringi le mani dietro la testa.
3. Chiudere e aprire molto lentamente la bocca.
4. Alla fine, torna lentamente alla posizione di partenza e chiudi la bocca.""",
        "hr": """Starting position:
Sit or stand with your back straight.

Steps:
1. Open mouth wide.
2. Slowly tilt head back with mouth opened. If you feel the need for support, clasp your hands behind your head.
3. Very slowly close and open your mouth.
4. At the end, slowly return to starting position and close mouth.""",
        "fr": """Starting position:
Sit or stand with your back straight.

Steps:
1. Open mouth wide.
2. Slowly tilt head back with mouth opened. If you feel the need for support, clasp your hands behind your head.
3. Very slowly close and open your mouth.
4. At the end, slowly return to starting position and close mouth.""",
        "el": """Θέση εκκίνησης:
Κάθισε ή στάσου όρθιος με την πλάτη ίσια.

Βήματα:
1. Ανοίξτε διάπλατα το στόμα.
2. Γείρετε αργά το κεφάλι προς τα πίσω με το στόμα ανοιχτό. Αν νιώθετε την ανάγκη για στήριξη, σφίξτε τα χέρια σας πίσω από το κεφάλι σας.
3. Πολύ αργά κλείστε και ανοίξτε το στόμα σας.
4. Στο τέλος, επιστρέψτε αργά στην αρχική θέση και κλείστε το στόμα.""",
        "cs": """Výchozí poloha:
Postavte se nebo si sedněte s narovnanými zády.

Kroky:
1. Otevřete ústa do O.
2. Pomalu zakloňte hlavu s ústy otevřenými. Pokud potřebujete hlavu podpořit, sepněte za ní ruce.
3. Velmi pomalu zavírejte a otevírejte ústa.
4. Nakonec se vraťte do výchozí polohy a ústa zavřete.""",
        "id": """Posisi awal:
Duduk atau berdiri dengan punggung lurus.

Langkah:
1. Buka mulut lebar-lebar.
2. Perlahan miringkan kepala ke belakang dengan mulut terbuka. Jika Anda merasa perlu untuk dukungan, bertepuk tangan di belakang kepala.
3. Sangat perlahan tutup dan Buka mulut Anda.
4. Pada akhirnya, perlahan kembali ke posisi awal dan tutup mulut.""",
        "es": """Starting position:
Sit or stand with your back straight.

Steps:
1. Open mouth wide.
2. Slowly tilt head back with mouth opened. If you feel the need for support, clasp your hands behind your head.
3. Very slowly close and open your mouth.
4. At the end, slowly return to starting position and close mouth.""",
        "ar": """وضع البداية:
اجلس أو قف وظهرك مستقيما.

الخطوات:
1. فتح الفم على نطاق واسع.
2. إمالة الرأس ببطء مرة أخرى مع فتح الفم. إذا كنت تشعر بالحاجة إلى الدعم، شبك يديك وراء رأسك.
3. إغلاق ببطء شديد وفتح فمك.
4. في النهاية، والعودة ببطء إلى موقف البداية وإغلاق الفم.""",
      } +
      {
        "zh": """肩部向前绕环""",
        "tr": """Forward shoulder rotation""",
        "nl": """Voortwaartse schouder draaiing""",
        "de": """Vorwärtsdrehung der Schulter""",
        "ru": """Forward shoulder rotation""",
        "pt": """Rotação do ombro para frente""",
        "en": """Forward shoulder rotation""",
        "it": """Rotazione della spalla in avanti""",
        "hr": """Okretanje ramena prema naprijed""",
        "fr": """Rotation de l'épaule vers l'avant""",
        "el": """Περιστροφή ώμου εμπρός""",
        "cs": """Kroužení rameny dopředu""",
        "id": """Rotasi bahu ke depan""",
        "es": """Forward shoulder rotation""",
        "ar": """دوران الكتف إلى الأمام""",
      } +
      {
        "zh": """肩部向后绕环""",
        "tr": """Backward shoulder rotation""",
        "nl": """Achterwaartse schouder draaiing""",
        "de": """Rückwärtsdrehung der Schulter""",
        "ru": """Backward shoulder rotation""",
        "pt": """Rotação do ombro para trás""",
        "en": """Backward shoulder rotation""",
        "it": """Rotazione della spalla all'indietro""",
        "hr": """Okretanje ramena prema natrag""",
        "fr": """Rotation de l'épaule vers l'arrière""",
        "el": """Περιστροφή ώμου πίσω""",
        "cs": """Kroužení rameny dozadu""",
        "id": """Rotasi bahu ke belakang""",
        "es": """Backward shoulder rotation""",
        "ar": """دوران الكتف للخلف""",
      } +
      {
        "zh": """起始姿势：
坐位或站位，背部挺直。

步骤：
1. 将双手放在肩膀上。
2. 以适中的速度不断绕转两侧肩关节。""",
        "tr": """Starting position:
Sit or stand with your back straight.

Steps:
1. Place your hands on your shoulders.
2. Repeatedly rotate both shoulder joints in a circular motion at a moderate pace.""",
        "nl": """Beginpositie:
Zit of sta met rechte rug.

Stappen:
1. Plaats uw handen op uw schouders.
2. Roteer herhaaldelijk beide schoudergewrichten in een cirkelvormige beweging in een gematigd tempo.""",
        "de": """Ausgangsposition:
Sitze oder stehe mit geradem Rücken.

Schritte:
1. Lege Deine Hände auf Deine Schultern.
2. Drehe wiederholt beide Schultergelenke in einer kreisförmigen Bewegung mit mäßigem Tempo.""",
        "ru": """Starting position:
Sit or stand with your back straight.

Steps:
1. Place your hands on your shoulders.
2. Repeatedly rotate both shoulder joints in a circular motion at a moderate pace.""",
        "pt": """Posicão inicial:
Sente-se ou fique de pé com as costas retas.

Passos:
1. Coloque as mãos nos ombros.
2. Gire repetidamente ambas as articulações dos ombros em um movimento circular em um ritmo moderado.""",
        "en": """Starting position:
Sit or stand with your back straight.

Steps:
1. Place your hands on your shoulders.
2. Repeatedly rotate both shoulder joints in a circular motion at a moderate pace.""",
        "it": """Posizione di partenza:
Seduti o in piedi con la schiena dritta.

Passi:
1. Mettere le mani sulle spalle.
2. Ruotare ripetutamente entrambe le articolazioni delle spalle con un movimento circolare ad un ritmo moderato.""",
        "hr": """Starting position:
Sit or stand with your back straight.

Steps:
1. Place your hands on your shoulders.
2. Repeatedly rotate both shoulder joints in a circular motion at a moderate pace.""",
        "fr": """Starting position:
Sit or stand with your back straight.

Steps:
1. Place your hands on your shoulders.
2. Repeatedly rotate both shoulder joints in a circular motion at a moderate pace.""",
        "el": """Θέση εκκίνησης:
Καθίστε ή σταθείτε με την πλάτη ίσια.

Βήματα:
1. Τοποθετήστε τα χέρια στους ώμους.
2. Περιστρέψτε επανειλημμένα και τις δύο αρθρώσεις των ώμων με κυκλική κίνηση με μέτριο ρυθμό.""",
        "cs": """Starting position:
Sit or stand with your back straight.

Steps:
1. Place your hands on your shoulders.
2. Repeatedly rotate both shoulder joints in a circular motion at a moderate pace.""",
        "id": """Posisi awal:
Duduk atau berdiri dengan punggung lurus.

Langkah:
1. Letakkan tangan Anda di bahu Anda.
2. Berulang kali memutar kedua sendi bahu dalam gerakan melingkar dengan kecepatan sedang.""",
        "es": """Starting position:
Sit or stand with your back straight.

Steps:
1. Place your hands on your shoulders.
2. Repeatedly rotate both shoulder joints in a circular motion at a moderate pace.""",
        "ar": """وضع البداية:
اجلس أو قف وظهرك مستقيم.

خطوات:
1. ضع يديك على كتفيك.
2. قم بتدوير مفصلي الكتف بشكل متكرر في حركة دائرية بوتيرة معتدلة.""",
      } +
      {
        "zh": """高位平板支撑""",
        "tr": """High plank""",
        "nl": """Hoge plank""",
        "de": """Hohe Planke""",
        "ru": """High plank""",
        "pt": """Prancha alta""",
        "en": """High plank""",
        "it": """Asse alto""",
        "hr": """High plank""",
        "fr": """Planche haute""",
        "el": """Υψηλή σανίδα""",
        "cs": """Vysoké prkno""",
        "id": """papan tinggi""",
        "es": """High plank""",
        "ar": """لوح مرتفع""",
      } +
      {
        "zh": """起始姿势：
开始高位平板支撑：手和脚趾接触地面，背部平直，手臂和腿伸直。
做这个姿势，您可以趴在地上，手掌朝下放在您头部两边，然后抬起并且伸直手臂。

步骤：
1. 在整个练习过程中保持一开始的姿势。""",
        "tr": """Starting position:
Get into the high plank position: your hands and toes should be touching the ground, your back, arms and legs should be straight.
To get to this position, you can lie down on your stomach, place your hands facing down next to your head, and lifting your arms up until they are straight.

Steps:
1. Maintain the starting position for the entire duration of the exercise.""",
        "nl": """Beginpositie:
Ga in de hoge plankpositie staan: je handen en tenen moeten de grond raken, je rug, armen en benen moeten recht zijn.
Om in deze positie te komen, kun je op je buik gaan liggen, je handen naar beneden gericht naast je hoofd plaatsen, en je armen omhoog tillen tot ze recht zijn.

Stappen:
1. Houd de uitgangspositie aan voor de gehele duur van de oefening.""",
        "de": """Ausgangsposition:
Nehmen Sie die hohe Planke ein: Ihre Hände und Zehen sollten den Boden berühren, Ihr Rücken, Ihre Arme und Beine sollten gerade sein.
Um in diese Position zu gelangen, können Sie sich auf den Bauch legen, die Hände mit dem Gesicht nach unten neben den Kopf legen und die Arme anheben, bis sie gerade sind.

Die Schritte:
1. Behalten Sie die Ausgangsposition während der gesamten Dauer der Übung bei.""",
        "ru": """Starting position:
Get into the high plank position: your hands and toes should be touching the ground, your back, arms and legs should be straight.
To get to this position, you can lie down on your stomach, place your hands facing down next to your head, and lifting your arms up until they are straight.

Steps:
1. Maintain the starting position for the entire duration of the exercise.""",
        "pt": """Posição inicial:
Entre na posição de prancha alta: as mãos e os dedos dos pés devem tocar o chão, as costas, os braços e as pernas devem estar retos.
Para chegar a essa posição, você pode deitar de bruços, colocar as mãos voltadas para baixo ao lado da cabeça e levantar os braços até que estejam retos.

Passos:
1. Mantenha a posição inicial durante todo o exercício.""",
        "en": """Starting position:
Get into the high plank position: your hands and toes should be touching the ground, your back, arms and legs should be straight.
To get to this position, you can lie down on your stomach, place your hands facing down next to your head, and lifting your arms up until they are straight.

Steps:
1. Maintain the starting position for the entire duration of the exercise.""",
        "it": """Posizione di partenza:
Mettiti in posizione di plank alto: le mani e le dita dei piedi devono toccare terra, la schiena, le braccia e le gambe devono essere dritte.
Per arrivare a questa posizione, puoi sdraiarti a pancia in giù, mettere le mani rivolte verso il basso accanto alla testa e sollevare le braccia fino a quando sono dritte.

Passi:
1. Mantenere la posizione di partenza per tutta la durata dell'esercizio.""",
        "hr": """Starting position:
Get into the high plank position: your hands and toes should be touching the ground, your back, arms and legs should be straight.
To get to this position, you can lie down on your stomach, place your hands facing down next to your head, and lifting your arms up until they are straight.

Steps:
1. Maintain the starting position for the entire duration of the exercise.""",
        "fr": """Starting position:
Get into the high plank position: your hands and toes should be touching the ground, your back, arms and legs should be straight.
To get to this position, you can lie down on your stomach, place your hands facing down next to your head, and lifting your arms up until they are straight.

Steps:
1. Maintain the starting position for the entire duration of the exercise.""",
        "el": """Θέση εκκίνησης:
Τα χέρια και τα δάχτυλα των ποδιών σας πρέπει να ακουμπούν στο έδαφος, η πλάτη, τα χέρια και τα πόδια σας πρέπει να είναι ίσια.
Για να φτάσετε σε αυτή τη θέση, μπορείτε να ξαπλώσετε μπρούμυτα, να τοποθετήσετε τα χέρια σας στραμμένα προς τα κάτω δίπλα στο κεφάλι σας και να σηκώσετε τα χέρια σας μέχρι να είναι ίσια.

Βήματα:
1. Διατηρήστε την αρχική θέση για όλη τη διάρκεια της άσκησης.""",
        "cs": """Starting position:
Get into the high plank position: your hands and toes should be touching the ground, your back, arms and legs should be straight.
To get to this position, you can lie down on your stomach, place your hands facing down next to your head, and lifting your arms up until they are straight.

Steps:
1. Maintain the starting position for the entire duration of the exercise.""",
        "id": """Posisi awal:
Masuk ke posisi papan tinggi: tangan dan kaki Anda harus menyentuh tanah, punggung, lengan, dan kaki Anda harus lurus.
Untuk mencapai posisi ini, Anda bisa berbaring tengkurap, meletakkan tangan menghadap ke bawah di samping kepala, dan mengangkat lengan ke atas hingga lurus.

Langkah:
1. Pertahankan posisi awal selama seluruh durasi latihan.""",
        "es": """Starting position:
Get into the high plank position: your hands and toes should be touching the ground, your back, arms and legs should be straight.
To get to this position, you can lie down on your stomach, place your hands facing down next to your head, and lifting your arms up until they are straight.

Steps:
1. Maintain the starting position for the entire duration of the exercise.""",
        "ar": """وضع البداية:
ادخل إلى وضع اللوح الخشبي المرتفع: يجب أن تكون يديك وأصابع قدمك ملامسة للأرض ، ويجب أن يكون ظهرك وذراعيك وساقيك مستقيمة.
للوصول إلى هذا الوضع ، يمكنك الاستلقاء على بطنك ، ووضع يديك في مواجهة رأسك ، ورفع ذراعيك لأعلى حتى تستقيم.

خطوات:
1. حافظ على وضع البداية طوال مدة التمرين.""",
      } +
      {
        "zh": """婴儿式""",
        "tr": """Child's pose""",
        "nl": """Kindhouding""",
        "de": """Kinderpose""",
        "ru": """Child's pose""",
        "pt": """Postura da criança (Balsana)""",
        "en": """Child's pose""",
        "it": """Posa del bambino""",
        "hr": """Child's pose""",
        "fr": """Position de l'enfant""",
        "el": """Παιδική στάση""",
        "cs": """Pozice dítěte""",
        "id": """Pose anak""",
        "es": """Child's pose""",
        "ar": """وضعية الطفل""",
      } +
      {
        "zh": """起始姿势：
开始时四肢着地，膝盖、脚趾、手接触地面，两个大脚趾相碰。

步骤：
1. 移动你的膝盖，使之与臀部同宽。
2. 呼气，同时将骨盆向后移动。保持手接触地面，坐在您的脚后跟上。
3. 放松上半身，将额头贴向地面，手自然向前移动。
4. 保持这个姿势。

提示：
* 结束这个姿势，您可以把手臂收回到肩膀下，移动上半身，坐起。""",
        "tr": """Starting position:
Start on all fours, knees, toes, and hands touching the ground. Your two big toes should be touching.

Steps:
1. Move your knees so that they're about hip-width apart.
2. On an exhale, move your pelvis back to sit on your heels. Your hands should still be touching the ground.
3. Relax your upper body, lowering your forehead to the floor and letting your hands move forward naturally.
4. Stay in this pose.

Tips:
* To leave the pose, walk your arms back under your shoulders and move your upper body up into a seated position.""",
        "nl": """Beginpositie:
Begin op handen en voeten, knieën, tenen en handen raken de grond. Je twee grote tenen moeten elkaar raken.

Stappen:
1. Beweeg je knieën zo dat ze op heupbreedte uit elkaar staan.
2. Op een uitademing, beweeg je bekken naar achteren om op je hielen te zitten. Je handen moeten nog steeds de grond raken.
3. 3. Ontspan uw bovenlichaam, laat uw voorhoofd naar de grond zakken en laat uw handen op een natuurlijke manier naar voren bewegen.
4. Blijf in deze houding.

Tips:
* Om de houding te verlaten, loop je armen terug onder je schouders en beweeg je bovenlichaam omhoog in een zittende positie.""",
        "de": """Ausgangsposition:
Beginnen Sie auf allen Vieren, wobei Knie, Zehen und Hände den Boden berühren. Ihre beiden großen Zehen sollten sich berühren.

Schritte:
1. Bewegen Sie Ihre Knie so, dass sie etwa hüftbreit auseinander sind.
2. Bewegen Sie beim Ausatmen Ihr Becken nach hinten, so dass Sie auf Ihren Fersen sitzen. Ihre Hände sollten noch den Boden berühren.
3. Entspannen Sie Ihren Oberkörper, indem Sie die Stirn auf den Boden senken und die Hände ganz natürlich nach vorne bewegen.
4. Bleiben Sie in dieser Haltung.

Tipps:
* Um die Haltung zu verlassen, führen Sie die Arme wieder unter die Schultern und bringen Sie den Oberkörper in eine sitzende Position.""",
        "ru": """Starting position:
Start on all fours, knees, toes, and hands touching the ground. Your two big toes should be touching.

Steps:
1. Move your knees so that they're about hip-width apart.
2. On an exhale, move your pelvis back to sit on your heels. Your hands should still be touching the ground.
3. Relax your upper body, lowering your forehead to the floor and letting your hands move forward naturally.
4. Stay in this pose.

Tips:
* To leave the pose, walk your arms back under your shoulders and move your upper body up into a seated position.""",
        "pt": """Posição inicial:
Comece de quatro, joelhos, dedos dos pés e mãos tocando o chão. Seus dois dedões dos pés devem estar se tocando.

Passos:
1. Mova os joelhos para que fiquem aproximadamente na largura do quadril.
2. Ao expirar, mova a pélvis para trás para se sentar sobre os calcanhares. Suas mãos ainda devem estar tocando o chão.
3. Relaxe a parte superior do corpo, abaixando a testa até o chão e deixando as mãos avançarem naturalmente.
4. Permaneça nesta postura.

Dicas:
* Para sair da postura, passe os braços para trás sob os ombros e mova a parte superior do corpo para cima, para uma posição sentada.""",
        "en": """Starting position:
Start on all fours, knees, toes, and hands touching the ground. Your two big toes should be touching.

Steps:
1. Move your knees so that they're about hip-width apart.
2. On an exhale, move your pelvis back to sit on your heels. Your hands should still be touching the ground.
3. Relax your upper body, lowering your forehead to the floor and letting your hands move forward naturally.
4. Stay in this pose.

Tips:
* To leave the pose, walk your arms back under your shoulders and move your upper body up into a seated position.""",
        "it": """Posizione di partenza:
Iniziare a quattro zampe, con le ginocchia, le dita dei piedi e le mani che toccano terra. I tuoi due alluci dovrebbero toccarsi.

Passi:
1. Spostare le ginocchia in modo che siano alla larghezza delle anche.
2. Espirando, sposta il bacino indietro per sederti sui talloni. Le mani devono ancora toccare il suolo.
3. Rilassate la parte superiore del corpo, abbassando la fronte verso il pavimento e lasciando che le mani si muovano in avanti in modo naturale.
4. Rimanete in questa posa.

Suggerimenti:
* Per lasciare la posa, porta le braccia indietro sotto le spalle e sposta la parte superiore del corpo in una posizione seduta.""",
        "hr": """Starting position:
Start on all fours, knees, toes, and hands touching the ground. Your two big toes should be touching.

Steps:
1. Move your knees so that they're about hip-width apart.
2. On an exhale, move your pelvis back to sit on your heels. Your hands should still be touching the ground.
3. Relax your upper body, lowering your forehead to the floor and letting your hands move forward naturally.
4. Stay in this pose.

Tips:
* To leave the pose, walk your arms back under your shoulders and move your upper body up into a seated position.""",
        "fr": """Starting position:
Start on all fours, knees, toes, and hands touching the ground. Your two big toes should be touching.

Steps:
1. Move your knees so that they're about hip-width apart.
2. On an exhale, move your pelvis back to sit on your heels. Your hands should still be touching the ground.
3. Relax your upper body, lowering your forehead to the floor and letting your hands move forward naturally.
4. Stay in this pose.

Tips:
* To leave the pose, walk your arms back under your shoulders and move your upper body up into a seated position.""",
        "el": """Θέση εκκίνησης:
Ξεκινήστε στα τέσσερα, γόνατα, δάχτυλα των ποδιών και χέρια να ακουμπάνε το έδαφος. Τα δύο μεγάλα δάχτυλα των ποδιών σας πρέπει να εφάπτονται.

Βήματα:
1. Μετακινήστε τα γόνατά σας έτσι ώστε να απέχουν περίπου όσο το πλάτος των γοφών.
2. Σε μια εκπνοή, μετακινήστε τη λεκάνη σας προς τα πίσω για να καθίσετε στις φτέρνες σας. Τα χέρια σας θα πρέπει να αγγίζουν ακόμα το έδαφος.
3. Χαλαρώστε το πάνω μέρος του σώματός σας, χαμηλώνοντας το μέτωπό σας στο πάτωμα και αφήνοντας τα χέρια σας να κινούνται φυσικά μπροστά.
4. Μείνε σε αυτή τη στάση.

Συμβουλές:
* Για να αφήσετε τη στάση, οδηγήστε τα χέρια σας πίσω κάτω από τους ώμους και μετακινήστε το πάνω μέρος του σώματος σε καθιστή θέση.""",
        "cs": """Starting position:
Start on all fours, knees, toes, and hands touching the ground. Your two big toes should be touching.

Steps:
1. Move your knees so that they're about hip-width apart.
2. On an exhale, move your pelvis back to sit on your heels. Your hands should still be touching the ground.
3. Relax your upper body, lowering your forehead to the floor and letting your hands move forward naturally.
4. Stay in this pose.

Tips:
* To leave the pose, walk your arms back under your shoulders and move your upper body up into a seated position.""",
        "id": """Posisi awal:
Mulailah merangkak, lutut, jari kaki, dan tangan menyentuh tanah. Kedua jari kaki besar Anda harus bersentuhan.

Langkah:
1. Gerakkan lutut Anda sehingga mereka sekitar selebar pinggul.
2. Saat menghembuskan napas, gerakkan panggul ke belakang untuk duduk di atas tumit. Tangan Anda harus tetap menyentuh tanah.
3. Rilekskan tubuh bagian atas Anda, turunkan dahi ke lantai dan biarkan tangan Anda bergerak maju secara alami.
4. Tetap dalam pose ini.

Tips:
* Untuk meninggalkan pose, berjalan lengan Anda kembali di bawah bahu Anda dan memindahkan tubuh bagian atas Anda ke posisi duduk.""",
        "es": """Starting position:
Start on all fours, knees, toes, and hands touching the ground. Your two big toes should be touching.

Steps:
1. Move your knees so that they're about hip-width apart.
2. On an exhale, move your pelvis back to sit on your heels. Your hands should still be touching the ground.
3. Relax your upper body, lowering your forehead to the floor and letting your hands move forward naturally.
4. Stay in this pose.

Tips:
* To leave the pose, walk your arms back under your shoulders and move your upper body up into a seated position.""",
        "ar": """وضع البداية:
ابدأ في ملامسة الأرض من جميع الجهات والركب وأصابع القدم واليدين. يجب أن تكون أصابع قدميك الكبيرة ملامسة للارض.

خطوات:
1. حرك ركبتيك بحيث يكونا متباعدين بعرض الورك.
2. عند الزفير ، حرك حوضك للخلف للجلوس على كعبيك. يجب أن تظل يداك تلمس الأرض.
3. استرخِ الجزء العلوي من جسمك ، وأنزل جبهتك على الأرض واترك يديك تتحرك بشكل طبيعي إلى الأمام.
4. ابق في هذا الوضع.

نصائح:
* لترك الوضع ، حرك ذراعيك للخلف تحت كتفيك وحرك الجزء العلوي من جسمك إلى وضع الجلوس.""",
      } +
      {
        "zh": """引体向上""",
        "tr": """Pull-ups""",
        "nl": """Optrekken""",
        "de": """Klimmzüge""",
        "ru": """Pull-ups""",
        "pt": """Flexões de braço""",
        "en": """Pull-ups""",
        "it": """Pull ups""",
        "hr": """Pull-ups""",
        "fr": """Pompes""",
        "el": """Έλξεις""",
        "cs": """Shyby""",
        "id": """Tarik - up""",
        "es": """Pull-ups""",
        "ar": """اسحب""",
      } +
      {
        "zh": """起始姿势：
先悬挂在单杠上，手掌朝前，双脚离地。
双手比肩稍宽。不要太宽，肘部不要在身体两边，要在身体前面。
身体应为伸直，略微向前的状态。手臂应处于伸展状态。

步骤：
1. 用力均匀地拉起你的身体，使胸部靠近单杠，下巴刚好超过横杆。不要跃起或晃起身体，比如踢腿。
2. 小心地把身体放下来，回到起始位置。
3. 重复进行。

提示：
——引体向上要想做得正确，您必须先增强几个关键部位的力量，包括肩膀、手臂和腹肌。您应该通过其他练习积累了足够的力量后，再开始做引体向上。""",
        "tr": """Starting position:
Start by hanging from the pull-up bar, palms facing away and feet off the floor.
Your hands should be slightly wider than shoulder-width apart. Only slightly so, so that elbows are still in front of the body rather than squarely to the side.
Your body should be straight and pointed slightly forward. Your arms should be extended.

Steps:
1. Use your strength to pull your body up evenly, bringing your chest closer to the pull-up bar and your chin just above it. Do NOT lift yourself up using momentum, such as kicking.
2. Carefully lower your body back down to starting position.
3. Repeat.

Tips:
- To do pull-ups correctly, you must first build up strength in several key areas, including shoulders, arms, and abs. Start with pull-ups only after you have built up enough strength with other exercises.""",
        "nl": """Beginpositie:
Begin met hangen aan de pull-up bar, handpalmen van je af en voeten van de vloer.
Je handen moeten iets wijder dan schouderbreedte uit elkaar staan. Slechts een beetje, zodat de ellebogen nog steeds voor het lichaam zijn in plaats van haaks opzij.
Je lichaam moet recht zijn en een beetje naar voren wijzen. Je armen moeten gestrekt zijn.

Stappen:
1. Gebruik uw kracht om uw lichaam gelijkmatig omhoog te trekken, waarbij u uw borst dichter bij de pull-up bar brengt en uw kin er net boven. Til jezelf NIET op door gebruik te maken van momentum, zoals schoppen.
2. Laat je lichaam voorzichtig weer zakken naar de startpositie.
3. Herhaal.

Tips:
- Om pull-ups correct uit te voeren, moet je eerst kracht opbouwen in verschillende belangrijke gebieden, waaronder schouders, armen, en buikspieren. Begin pas met pull-ups nadat u voldoende kracht hebt opgebouwd met andere oefeningen.""",
        "de": """Ausgangsposition:
Hängen Sie sich zunächst an die Klimmzugstange, die Handflächen zeigen nach außen und die Füße heben sich vom Boden ab.
Ihre Hände sollten etwas weiter als schulterbreit auseinander sein. Nur ein wenig, so dass die Ellbogen noch vor dem Körper sind und nicht direkt an der Seite.
Ihr Körper sollte gerade sein und leicht nach vorne zeigen. Die Arme sollten gestreckt sein.

Die Schritte:
1. Ziehen Sie Ihren Körper mit aller Kraft gleichmäßig nach oben, so dass sich Ihre Brust der Klimmzugstange nähert und Ihr Kinn knapp über ihr liegt. Heben Sie sich NICHT mit Schwung hoch, z. B. durch einen Tritt.
2. Senken Sie Ihren Körper vorsichtig in die Ausgangsposition zurück.
3. Wiederholen Sie den Vorgang.

Tipps:
- Um Klimmzüge richtig ausführen zu können, müssen Sie zunächst Kraft in mehreren Schlüsselbereichen aufbauen, darunter Schultern, Arme und Bauchmuskeln. Beginnen Sie erst dann mit Klimmzügen, wenn Sie mit anderen Übungen genügend Kraft aufgebaut haben.""",
        "ru": """Starting position:
Start by hanging from the pull-up bar, palms facing away and feet off the floor.
Your hands should be slightly wider than shoulder-width apart. Only slightly so, so that elbows are still in front of the body rather than squarely to the side.
Your body should be straight and pointed slightly forward. Your arms should be extended.

Steps:
1. Use your strength to pull your body up evenly, bringing your chest closer to the pull-up bar and your chin just above it. Do NOT lift yourself up using momentum, such as kicking.
2. Carefully lower your body back down to starting position.
3. Repeat.

Tips:
- To do pull-ups correctly, you must first build up strength in several key areas, including shoulders, arms, and abs. Start with pull-ups only after you have built up enough strength with other exercises.""",
        "pt": """Posição inicial:
Comece pendurando-se na barra de pull-up, com as palmas das mãos voltadas para fora e os pés fora do chão.
Suas mãos devem estar ligeiramente mais afastadas do que a largura dos ombros. Apenas ligeiramente, de modo que os cotovelos ainda estejam na frente do corpo e não diretamente para o lado.
Seu corpo deve ser reto e apontado ligeiramente para a frente. Seus braços devem estar estendidos.

Passos:
1. Use sua força para puxar o corpo para cima de maneira uniforme, aproximando o peito da barra e o queixo logo acima dela. NÃO se levante usando impulso, como chutar.
2. Abaixe cuidadosamente o corpo de volta à posição inicial.
3. Repita.

Dicas:
- Para fazer flexões corretamente, você deve primeiro aumentar a força em várias áreas-chave, incluindo ombros, braços e abdominais. Comece com flexões somente depois de ter construído força suficiente com outros exercícios.""",
        "en": """Starting position:
Start by hanging from the pull-up bar, palms facing away and feet off the floor.
Your hands should be slightly wider than shoulder-width apart. Only slightly so, so that elbows are still in front of the body rather than squarely to the side.
Your body should be straight and pointed slightly forward. Your arms should be extended.

Steps:
1. Use your strength to pull your body up evenly, bringing your chest closer to the pull-up bar and your chin just above it. Do NOT lift yourself up using momentum, such as kicking.
2. Carefully lower your body back down to starting position.
3. Repeat.

Tips:
- To do pull-ups correctly, you must first build up strength in several key areas, including shoulders, arms, and abs. Start with pull-ups only after you have built up enough strength with other exercises.""",
        "it": """Posizione di partenza:
Iniziare appendendosi alla barra di pull-up, con i palmi rivolti verso l'esterno e i piedi fuori dal pavimento.
Le vostre mani dovrebbero essere leggermente più larghe della larghezza delle spalle. Solo leggermente, in modo che i gomiti siano ancora di fronte al corpo piuttosto che esattamente di lato.
Il corpo deve essere dritto e puntato leggermente in avanti. Le braccia devono essere distese.

Passi:
1. Usa la tua forza per tirare il tuo corpo verso l'alto in modo uniforme, avvicinando il tuo petto alla barra del pull-up e il tuo mento appena sopra di essa. NON sollevarsi usando lo slancio, come i calci.
2. Abbassare con attenzione il corpo fino alla posizione di partenza.
3. Ripetere.

Suggerimenti:
- Per fare correttamente le trazioni, dovete prima costruire la forza in diverse aree chiave, comprese le spalle, le braccia e gli addominali. Iniziate con le trazioni solo dopo aver acquisito abbastanza forza con altri esercizi.""",
        "hr": """Starting position:
Start by hanging from the pull-up bar, palms facing away and feet off the floor.
Your hands should be slightly wider than shoulder-width apart. Only slightly so, so that elbows are still in front of the body rather than squarely to the side.
Your body should be straight and pointed slightly forward. Your arms should be extended.

Steps:
1. Use your strength to pull your body up evenly, bringing your chest closer to the pull-up bar and your chin just above it. Do NOT lift yourself up using momentum, such as kicking.
2. Carefully lower your body back down to starting position.
3. Repeat.

Tips:
- To do pull-ups correctly, you must first build up strength in several key areas, including shoulders, arms, and abs. Start with pull-ups only after you have built up enough strength with other exercises.""",
        "fr": """Starting position:
Start by hanging from the pull-up bar, palms facing away and feet off the floor.
Your hands should be slightly wider than shoulder-width apart. Only slightly so, so that elbows are still in front of the body rather than squarely to the side.
Your body should be straight and pointed slightly forward. Your arms should be extended.

Steps:
1. Use your strength to pull your body up evenly, bringing your chest closer to the pull-up bar and your chin just above it. Do NOT lift yourself up using momentum, such as kicking.
2. Carefully lower your body back down to starting position.
3. Repeat.

Tips:
- To do pull-ups correctly, you must first build up strength in several key areas, including shoulders, arms, and abs. Start with pull-ups only after you have built up enough strength with other exercises.""",
        "el": """Θέση εκκίνησης:
Ξεκινήστε κρεμάμενοι από τη ράβδο έλξης, με τις παλάμες προς τα έξω και τα πόδια να μην εφάπτονται στο πάτωμα.
Τα χέρια σας πρέπει να είναι ελαφρά πιο ανοιχτά από το πλάτος των ώμων. Μόνο ελαφρά, έτσι ώστε οι αγκώνες να είναι ακόμα μπροστά από το σώμα και όχι ίσια στο πλάι.
Το σώμα σας πρέπει να είναι ίσιο και ελαφρώς στραμμένο προς τα εμπρός. Τα χέρια σας πρέπει να είναι εκτεταμένα.

Βήματα:
1. Χρησιμοποιήστε τη δύναμή σας για να τραβήξετε το σώμα σας ομοιόμορφα προς τα πάνω, φέρνοντας το στήθος σας πιο κοντά στη ράβδο έλξης και το πηγούνι σας ακριβώς από πάνω. ΜΗΝ σηκώνετε τον εαυτό σας χρησιμοποιώντας ορμή, όπως κλοτσιές.
2. Κατεβάστε προσεκτικά το σώμα σας προς τα κάτω στην αρχική θέση.
3. Επαναλάβετε.

Συμβουλές:
- Για να κάνετε σωστά τα έλξεις, πρέπει πρώτα να αναπτύξετε δύναμη σε πολλές σημαντικές περιοχές, όπως ώμοι, χέρια και κοιλιακοί. Ξεκινήστε τις έλξεις μόνο αφού έχετε αναπτύξει αρκετή δύναμη με άλλες ασκήσεις.""",
        "cs": """Starting position:
Start by hanging from the pull-up bar, palms facing away and feet off the floor.
Your hands should be slightly wider than shoulder-width apart. Only slightly so, so that elbows are still in front of the body rather than squarely to the side.
Your body should be straight and pointed slightly forward. Your arms should be extended.

Steps:
1. Use your strength to pull your body up evenly, bringing your chest closer to the pull-up bar and your chin just above it. Do NOT lift yourself up using momentum, such as kicking.
2. Carefully lower your body back down to starting position.
3. Repeat.

Tips:
- To do pull-ups correctly, you must first build up strength in several key areas, including shoulders, arms, and abs. Start with pull-ups only after you have built up enough strength with other exercises.""",
        "id": """Posisi awal:
Mulailah dengan menggantung dari bar pull-up, telapak tangan menghadap jauh dan kaki dari lantai.
Tangan Anda harus sedikit lebih lebar dari selebar bahu. Hanya sedikit begitu, sehingga siku masih di depan tubuh daripada tepat ke samping.
Tubuh Anda harus lurus dan sedikit mengarah ke depan. Lengan Anda harus diperpanjang.

Langkah:
1. Gunakan kekuatan Anda untuk menarik tubuh Anda secara merata, mendekatkan dada anda ke Palang pull-up dan dagu Anda tepat di atasnya. Jangan mengangkat diri menggunakan momentum, seperti menendang.
2. Hati-hati menurunkan tubuh Anda kembali ke posisi awal.
3. Ulangi.

Tips:
- Untuk melakukan pull-up dengan benar, Anda harus terlebih dahulu membangun kekuatan di beberapa area utama, termasuk bahu, lengan, dan perut. Mulailah dengan pull-up hanya setelah Anda membangun kekuatan yang cukup dengan latihan lain.""",
        "es": """Starting position:
Start by hanging from the pull-up bar, palms facing away and feet off the floor.
Your hands should be slightly wider than shoulder-width apart. Only slightly so, so that elbows are still in front of the body rather than squarely to the side.
Your body should be straight and pointed slightly forward. Your arms should be extended.

Steps:
1. Use your strength to pull your body up evenly, bringing your chest closer to the pull-up bar and your chin just above it. Do NOT lift yourself up using momentum, such as kicking.
2. Carefully lower your body back down to starting position.
3. Repeat.

Tips:
- To do pull-ups correctly, you must first build up strength in several key areas, including shoulders, arms, and abs. Start with pull-ups only after you have built up enough strength with other exercises.""",
        "ar": """وضع البداية:
ابدأ بالتعلق من شريط السحب ، بحيث تكون راحة اليد متجهة بعيدًا والقدمين عن الأرض.
يجب أن تكون يداك أعرض قليلاً من عرض الكتفين. بدرجة طفيفة فقط ، بحيث يظل المرفقان أمام الجسم بدلاً من الجانب بشكل مباشر.
يجب أن يكون جسدك مستقيمًا وموجهًا للأمام قليلاً. يجب أن تمد ذراعيك.

خطوات:
1. استخدم قوتك لسحب جسمك بالتساوي ، مع تقريب صدرك من شريط السحب والذقن فوقه مباشرة. لا ترفع نفسك باستخدام الزخم ، مثل الركل.
2. اخفض جسمك بحذر لأسفل إلى وضع البداية.
3. كرر.

نصائح:
- للقيام بتمارين السحب بشكل صحيح ، يجب عليك أولاً بناء القوة في العديد من المجالات الرئيسية ، بما في ذلك الكتفين والذراعين والبطن. ابدأ بتمارين السحب فقط بعد أن تكون قد اكتسبت قوة كافية مع تمارين أخرى.""",
      } +
      {
        "zh": """提壶铃""",
        "tr": """Kettlebell deadlifts""",
        "nl": """Kettlebell Deadliften""",
        "de": """Kettlebell Kreuzheben""",
        "ru": """Kettlebell deadlifts""",
        "pt": """Levantamento terra com Kettlebell""",
        "en": """Kettlebell deadlifts""",
        "it": """Kettlebell Deadlifts""",
        "hr": """Kettlebell deadlifts""",
        "fr": """Haltères de kettlebell""",
        "el": """Άρση δραμιών""",
        "cs": """Kettlebell deadlifts""",
        "id": """Deadlift Kettlebell""",
        "es": """Kettlebell deadlifts""",
        "ar": """كيتلبيل رفع الأثقال""",
      } +
      {
        "zh": """起始位置：
站位，双脚与臀部同宽，壶铃位于脚踝之间。背部挺直，头朝前。

步骤：
1. 背部保持平直，以臀部为轴，微微弯曲膝盖，手放在壶铃把手上。
2. 抓住壶铃把手，双手向相反方向推动，好像在拉弹簧一样。
3. 接触到腹肌和臀大肌时，站直。
4. 再次以臀部为轴，将壶铃放回原位，类似于步骤1。
5. 从第 3 步重复。

提示：
* 一定要按正确的方式做这些动作，否则可能会导致受伤。例如，不要蹲下而不以臀部为轴、在伸手去拿壶铃时不要弯腰、站立时不要向后倾斜。""",
        "tr": """Starting position:
Stand hip-width apart, with your kettlebell centered between your ankles. Your back should be straight, your head facing forward.

Steps:
1. Hinge at the hips and slightly bend at the knees to put your hands on the kettlebell handles. Your back should be straight as you perform the movement.
2. Grab the kettlebell handles, with your hands pushing in opposite directions as if to pull the handle apart.
3. While contacting your abs and glutes, stand straight up.
4. Hinge at the hips again to bring the kettlebell back down, similarly to step 1.
5. Repeat from step 3.

Tips:
* Be sure you're performing the movements correctly, as doing otherwise can lead to injury. For example, do not squat instead of hinging at the hips, do not round your back while reaching for the kettlebell, and do not lean back while standing up.""",
        "nl": """Beginpositie:
Ga op heupbreedte uit elkaar staan, met je kettlebell gecentreerd tussen je enkels. Je rug moet recht zijn, je hoofd naar voren gericht.

Stappen:
1. Scharnier bij de heupen en buig lichtjes bij de knieën om je handen op de kettlebell handgrepen te plaatsen. Je rug moet recht zijn terwijl je de beweging uitvoert.
2. Pak de kettlebell handgrepen vast, waarbij je handen in tegengestelde richtingen duwen alsof je de handgreep uit elkaar trekt.
3. Terwijl u contact maakt met uw buikspieren en bilspieren, gaat u rechtop staan.
4. Scharnier weer bij de heupen om de kettlebell weer naar beneden te brengen, op dezelfde manier als bij stap 1.
5. Herhaal vanaf stap 3.

Tips:
* Zorg ervoor dat je de bewegingen correct uitvoert, want als je dat anders doet kan dat tot blessures leiden. Bijvoorbeeld, niet squatten in plaats van scharnieren bij de heupen, niet je rug rond maken terwijl je naar de kettlebell reikt, en niet achterover leunen terwijl je opstaat.""",
        "de": """Ausgangsposition:
Stellen Sie sich hüftbreit auseinander, die Kettlebell befindet sich in der Mitte zwischen Ihren Knöcheln. Der Rücken sollte gerade sein, der Kopf nach vorne zeigen.

Schritte:
1. Beugen Sie sich in der Hüfte und gehen Sie leicht in die Knie, um die Hände auf die Kettlebell-Griffe zu legen. Der Rücken sollte gerade sein, während Sie die Bewegung ausführen.
2. Greifen Sie die Kettlebell-Griffe und drücken Sie mit den Händen in entgegengesetzte Richtungen, als ob Sie die Griffe auseinanderziehen wollten.
3. Während Sie Ihre Bauch- und Gesäßmuskeln anspannen, richten Sie sich auf.
4. Beugen Sie sich wieder in die Hüfte, um die Kettlebell wieder nach unten zu bringen, ähnlich wie in Schritt 1.
5. Wiederholen Sie den Vorgang ab Schritt 3.

Tipps:
* Achten Sie darauf, dass Sie die Bewegungen korrekt ausführen, da dies sonst zu Verletzungen führen kann. Gehen Sie z.B. nicht in die Hocke statt in die Hüfte, machen Sie den Rücken nicht rund, wenn Sie nach der Kettlebell greifen, und lehnen Sie sich beim Aufstehen nicht zurück.""",
        "ru": """Starting position:
Stand hip-width apart, with your kettlebell centered between your ankles. Your back should be straight, your head facing forward.

Steps:
1. Hinge at the hips and slightly bend at the knees to put your hands on the kettlebell handles. Your back should be straight as you perform the movement.
2. Grab the kettlebell handles, with your hands pushing in opposite directions as if to pull the handle apart.
3. While contacting your abs and glutes, stand straight up.
4. Hinge at the hips again to bring the kettlebell back down, similarly to step 1.
5. Repeat from step 3.

Tips:
* Be sure you're performing the movements correctly, as doing otherwise can lead to injury. For example, do not squat instead of hinging at the hips, do not round your back while reaching for the kettlebell, and do not lean back while standing up.""",
        "pt": """Posição inicial:
Fique em pé na largura do quadril, com o kettlebell centralizado entre os tornozelos. Suas costas devem estar retas, sua cabeça voltada para a frente.

Passos:
1. Dobre os quadris e dobre levemente os joelhos para colocar as mãos nas alças do kettlebell. Suas costas devem estar retas enquanto você executa o movimento.
2. Agarre as alças do kettlebell, com as mãos empurrando em direções opostas, como se fosse separar a alça.
3. Enquanto faz contato com seus abdominais e glúteos, fique em pé.
4. Dobre os quadris novamente para trazer o kettlebell de volta para baixo, semelhante ao passo 1.
5. Repita a partir da etapa 3.

Dicas:
- Certifique-se de realizar os movimentos corretamente, pois fazer o contrário pode causar lesões. Por exemplo, não se agache em vez de dobrar os quadris, não arredonde as costas ao alcançar o kettlebell e não se incline para trás ao se levantar.""",
        "en": """Starting position:
Stand hip-width apart, with your kettlebell centered between your ankles. Your back should be straight, your head facing forward.

Steps:
1. Hinge at the hips and slightly bend at the knees to put your hands on the kettlebell handles. Your back should be straight as you perform the movement.
2. Grab the kettlebell handles, with your hands pushing in opposite directions as if to pull the handle apart.
3. While contacting your abs and glutes, stand straight up.
4. Hinge at the hips again to bring the kettlebell back down, similarly to step 1.
5. Repeat from step 3.

Tips:
* Be sure you're performing the movements correctly, as doing otherwise can lead to injury. For example, do not squat instead of hinging at the hips, do not round your back while reaching for the kettlebell, and do not lean back while standing up.""",
        "it": """Posizione di partenza:
Stare alla larghezza delle anche, con il kettlebell centrato tra le caviglie. La schiena deve essere dritta, la testa rivolta in avanti.

Passi:
1. Inclinarsi sui fianchi e piegare leggermente le ginocchia per mettere le mani sulle maniglie del kettlebell. La schiena deve essere dritta mentre si esegue il movimento.
2. Afferrare le maniglie del kettlebell, con le mani che spingono in direzioni opposte come se si volesse separare la maniglia.
3. Mentre contattate gli addominali e i glutei, alzatevi in piedi.
4. Inclinarsi di nuovo sui fianchi per riportare il kettlebell verso il basso, in modo simile al passo 1.
5. Ripetere dal punto 3.

Suggerimenti:
* Assicuratevi di eseguire i movimenti correttamente, perché altrimenti potreste farvi male. Per esempio, non accovacciarsi invece di piegarsi sui fianchi, non arrotondare la schiena mentre si raggiunge il kettlebell, e non piegarsi all'indietro mentre ci si alza.""",
        "hr": """Starting position:
Stand hip-width apart, with your kettlebell centered between your ankles. Your back should be straight, your head facing forward.

Steps:
1. Hinge at the hips and slightly bend at the knees to put your hands on the kettlebell handles. Your back should be straight as you perform the movement.
2. Grab the kettlebell handles, with your hands pushing in opposite directions as if to pull the handle apart.
3. While contacting your abs and glutes, stand straight up.
4. Hinge at the hips again to bring the kettlebell back down, similarly to step 1.
5. Repeat from step 3.

Tips:
* Be sure you're performing the movements correctly, as doing otherwise can lead to injury. For example, do not squat instead of hinging at the hips, do not round your back while reaching for the kettlebell, and do not lean back while standing up.""",
        "fr": """Starting position:
Stand hip-width apart, with your kettlebell centered between your ankles. Your back should be straight, your head facing forward.

Steps:
1. Hinge at the hips and slightly bend at the knees to put your hands on the kettlebell handles. Your back should be straight as you perform the movement.
2. Grab the kettlebell handles, with your hands pushing in opposite directions as if to pull the handle apart.
3. While contacting your abs and glutes, stand straight up.
4. Hinge at the hips again to bring the kettlebell back down, similarly to step 1.
5. Repeat from step 3.

Tips:
* Be sure you're performing the movements correctly, as doing otherwise can lead to injury. For example, do not squat instead of hinging at the hips, do not round your back while reaching for the kettlebell, and do not lean back while standing up.""",
        "el": """Θέση εκκίνησης:
Σταθείτε με τα πόδια στο πλάτος των γοφών, με το δράμι σας στο κέντρο ανάμεσα στους αστραγάλους. Η πλάτη πρέπει να είναι ίσια, το κεφάλι προς τα εμπρός.

Βήματα:
1. Κάμψτε το σώμα στους γοφούς και λυγίστε ελαφρώς τα γόνατα για να τοποθετήσετε τα χέρια σας στις λαβές του δραμιού. Η πλάτη πρέπει να είναι ευθεία καθώς εκτελείτε την κίνηση.
2. Πιάστε τις λαβές του δραμιού, με τα χέρια να πιέζουν προς αντίθετες κατευθύνσεις σαν να θέλετε να σκίσετε τη λαβή.
3. Καθώς χρησιμοποιείτε τους κοιλιακούς και τους γλουτούς, σταθείτε όρθιοι.
4. Κάμψτε ξανά το σώμα στους γοφούς για να επαναφέρετε το δράμι ξανά κάτω, όπως στο βήμα 1.
5. Επαναλάβετε από το βήμα 3.

Συμβουλές:
* Βεβαιωθείτε ότι εκτελείτε τις κινήσεις σωστά, καθώς διαφορετικός τρόπος μπορεί να οδηγήσει σε τραυματισμό. Για παράδειγμα, μην κάνετε βαθύ κάθισμα αντί να κάμπτετε τους γοφούς, μην στρογγυλεύετε την πλάτη σας ενώ πιάνετε το δράμι και μην γέρνετε προς τα πίσω ενώ στέκεστε όρθιοι.""",
        "cs": """Starting position:
Stand hip-width apart, with your kettlebell centered between your ankles. Your back should be straight, your head facing forward.

Steps:
1. Hinge at the hips and slightly bend at the knees to put your hands on the kettlebell handles. Your back should be straight as you perform the movement.
2. Grab the kettlebell handles, with your hands pushing in opposite directions as if to pull the handle apart.
3. While contacting your abs and glutes, stand straight up.
4. Hinge at the hips again to bring the kettlebell back down, similarly to step 1.
5. Repeat from step 3.

Tips:
* Be sure you're performing the movements correctly, as doing otherwise can lead to injury. For example, do not squat instead of hinging at the hips, do not round your back while reaching for the kettlebell, and do not lean back while standing up.""",
        "id": """Posisi awal:
Berdirilah selebar pinggul, dengan kettlebell Anda berpusat di antara pergelangan kaki Anda. Punggung Anda harus lurus, kepala menghadap ke depan.

Langkah:
1. Engsel di pinggul dan sedikit tekuk lutut untuk meletakkan tangan Anda di pegangan kettlebell. Punggung Anda harus lurus saat anda melakukan gerakan.
2. Pegang pegangan kettlebell, dengan tangan Anda mendorong ke arah yang berlawanan seolah-olah untuk menarik pegangan terpisah.
3. Saat menyentuh perut dan glutes Anda, berdiri tegak.
4. Engsel di pinggul lagi untuk membawa kettlebell kembali ke bawah, mirip dengan langkah 1.
5. Ulangi dari Langkah 3.

Tips:
* Pastikan anda melakukan gerakan dengan benar, karena melakukan sebaliknya dapat menyebabkan cedera. Misalnya, jangan jongkok alih-alih berpikir di pinggul, jangan membulatkan punggung saat meraih kettlebell, dan jangan bersandar saat berdiri.""",
        "es": """Starting position:
Stand hip-width apart, with your kettlebell centered between your ankles. Your back should be straight, your head facing forward.

Steps:
1. Hinge at the hips and slightly bend at the knees to put your hands on the kettlebell handles. Your back should be straight as you perform the movement.
2. Grab the kettlebell handles, with your hands pushing in opposite directions as if to pull the handle apart.
3. While contacting your abs and glutes, stand straight up.
4. Hinge at the hips again to bring the kettlebell back down, similarly to step 1.
5. Repeat from step 3.

Tips:
* Be sure you're performing the movements correctly, as doing otherwise can lead to injury. For example, do not squat instead of hinging at the hips, do not round your back while reaching for the kettlebell, and do not lean back while standing up.""",
        "ar": """وضع البداية:
قف متباعدًا بمقدار عرض الورك ، مع وضع الثقل في المنتصف بين كاحليك. يجب أن يكون ظهرك مستقيمًا ورأسك متجهًا للأمام.

خطوات:
1. قم بمفصلة الوركين وانحني قليلاً عند الركبتين لوضع يديك على مقابض الثقل. يجب أن يكون ظهرك مستقيمًا أثناء أداء الحركة.
2. أمسك بمقبض الثقل ، مع دفع يديك في اتجاهين متعاكسين كما لو كنت تبتعد عن المقبض.
3. أثناء ملامسة عضلات البطن والألوية ، قف بشكل مستقيم.
4. قم بمفصلة الوركين مرة أخرى لإخراج الجرس إلى أسفل ، على غرار الخطوة 1.
5. كرر من الخطوة 3.

نصائح:
* تأكد من أداء الحركات بشكل صحيح ، لأن القيام بخلاف ذلك قد يؤدي إلى الإصابة. على سبيل المثال ، لا تقم بالقرفصاء بدلًا من التوقف عند الوركين ، ولا تلف ظهرك أثناء الوصول إلى الثقل ، ولا تميل للخلف أثناء الوقوف.""",
      } +
      {
        "zh": """相扑深蹲""",
        "tr": """Sumo squats""",
        "nl": """Sumo hurken""",
        "de": """Sumo Kniebeugen""",
        "ru": """Sumo squats""",
        "pt": """Agachamentos de sumô""",
        "en": """Sumo squats""",
        "it": """Squat sumo""",
        "hr": """Sumo squats""",
        "fr": """Squats sumo""",
        "el": """Βαθύ κάθισμα Σούμο""",
        "cs": """Sumo dřepy""",
        "id": """Sumo jongkok""",
        "es": """Sumo squats""",
        "ar": """قرفصاء السومو""",
      } +
      {
        "zh": """起始姿势：
站起，双腿张开，脚趾向外。

步骤：
1. 膝盖向外弯曲，慢慢往下沉。将手臂向前伸。头部、胸部和臀部保持在一条直线上。挤压臀部。
2. 向上撑回到起始位置。
3. 脉冲式地重复上述动作。""",
        "tr": """Starting position:
Stand with legs wide and toes turned outwards.

Steps:
1. Slowly sink down by bending your knees out. Reach arms forward. Keep your head, chest and hips in a straight line. Squeeze your glutes.
2. Push back up into starting position.
3. Repeat this exercise in a pulsing motion.""",
        "nl": """Beginpositie:
Sta met de benen wijd en de tenen naar buiten gedraaid.

Stappen:
1. Zak langzaam naar beneden door je knieën naar buiten te buigen. Reik de armen naar voren. Houd uw hoofd, borst en heupen in een rechte lijn. Knijp je bilspieren samen.
2. Duw terug omhoog in startpositie.
3. Herhaal deze oefening in een pulserende beweging.""",
        "de": """Ausgangsposition:
Breitbeiniger Stand mit nach außen gedrehten Zehen.

Schritte:
1. Sinke langsam nach unten, indem die Knie nach außen gebeugt werden. Arme nach vorne strecken. Halte Kopf, Brust und Hüfte in einer geraden Linie. Spanne die Gesäßmuskeln an.
2. Bringe Dich wieder in die Ausgangsposition.
3. Wiederhole diese Übung in einer pulsierenden Bewegung.""",
        "ru": """Starting position:
Stand with legs wide and toes turned outwards.

Steps:
1. Slowly sink down by bending your knees out. Reach arms forward. Keep your head, chest and hips in a straight line. Squeeze your glutes.
2. Push back up into starting position.
3. Repeat this exercise in a pulsing motion.""",
        "pt": """Posição inicial:
Fique em pé com as pernas separadas e os dedos dos pés virados para fora.

Passos:
1. Agache lentamente dobrando os joelhos. Jogue os braços para frente. Mantenha a cabeça, o peito e os quadris em linha reta. Aperte seus glúteos.
2. Levante de volta para a posição inicial.
3. Repita este exercício em um movimento pulsante.""",
        "en": """Starting position:
Stand with legs wide and toes turned outwards.

Steps:
1. Slowly sink down by bending your knees out. Reach arms forward. Keep your head, chest and hips in a straight line. Squeeze your glutes.
2. Push back up into starting position.
3. Repeat this exercise in a pulsing motion.""",
        "it": """Posizione di partenza:
Stare in piedi con le gambe larghe e le dita dei piedi rivolte verso l'esterno.

Passi:
1. Sprofondare lentamente piegando le ginocchia in fuori. Portare le braccia in avanti. Tenere la testa, il petto e i fianchi in linea retta. Stringere i glutei.
2. Spingete verso l'alto nella posizione di partenza.
3. Ripetere questo esercizio con un movimento pulsante.""",
        "hr": """Starting position:
Stand with legs wide and toes turned outwards.

Steps:
1. Slowly sink down by bending your knees out. Reach arms forward. Keep your head, chest and hips in a straight line. Squeeze your glutes.
2. Push back up into starting position.
3. Repeat this exercise in a pulsing motion.""",
        "fr": """Starting position:
Stand with legs wide and toes turned outwards.

Steps:
1. Slowly sink down by bending your knees out. Reach arms forward. Keep your head, chest and hips in a straight line. Squeeze your glutes.
2. Push back up into starting position.
3. Repeat this exercise in a pulsing motion.""",
        "el": """Θέση εκκίνησης:
Σταθείτε με τα πόδια ανοιχτά και τα δάχτυλα στραμμένα προς τα έξω.

Βήματα:
1. Βυθιστείτε αργά λυγίζοντας τα γόνατά σας προς τα έξω. Απλώστε τα χέρια προς τα εμπρός. Κρατήστε κεφάλι, στήθος και γοφούς σε ευθεία γραμμή. Πιέστε τους γλουτούς σας.
2. Σπρώξτε προς τα πάνω στην αρχική θέση.
3. Επαναλάβετε αυτή την άσκηση με παλμική κίνηση.""",
        "cs": """Starting position:
Stand with legs wide and toes turned outwards.

Steps:
1. Slowly sink down by bending your knees out. Reach arms forward. Keep your head, chest and hips in a straight line. Squeeze your glutes.
2. Push back up into starting position.
3. Repeat this exercise in a pulsing motion.""",
        "id": """Posisi awal:
Berdiri dengan kaki lebar dan jari kaki menghadap ke luar.

Langkah:
1. Perlahan-lahan tenggelam ke bawah dengan menekuk lutut Anda keluar. Raih lengan ke depan. Jaga kepala, dada, dan pinggul Anda dalam garis lurus. Peras glutes Anda.
2. Dorong kembali ke posisi awal.
3. Ulangi latihan ini dengan gerakan berdenyut.""",
        "es": """Starting position:
Stand with legs wide and toes turned outwards.

Steps:
1. Slowly sink down by bending your knees out. Reach arms forward. Keep your head, chest and hips in a straight line. Squeeze your glutes.
2. Push back up into starting position.
3. Repeat this exercise in a pulsing motion.""",
        "ar": """وضع البداية:
الوقوف مع الساقين واسعة وأصابع القدم إلى الخارج.

خطوات:
1. انزل ببطء عن طريق ثني ركبتيك. اثني ركبتيك للأمام. حافظ على رأسك وصدرك ووركيك في خط مستقيم. الضغط على عضلات المؤخرة.
2. ادفع لأعلى إلى وضع البداية.
3. كرر هذا التمرين بحركة نابضة.""",
      } +
      {
        "zh": """Alternating bicep curls""",
        "tr": """Alternating bicep curls""",
        "nl": """Alternating bicep curls""",
        "de": """Abwechselnde Bizepscurls""",
        "ru": """Alternating bicep curls""",
        "pt": """Alternating bicep curls""",
        "en": """Alternating bicep curls""",
        "it": """Alternating bicep curls""",
        "hr": """Alternating bicep curls""",
        "fr": """Alternating bicep curls""",
        "el": """Alternating bicep curls""",
        "cs": """Alternating bicep curls""",
        "id": """Alternating bicep curls""",
        "es": """Alternating bicep curls""",
        "ar": """Alternating bicep curls""",
      } +
      {
        "zh": """Starting position:
Start standing up with dumbbells in each hand, your back straight and feet hip-width apart. Your arms should be relaxed, pointing down. Your knees should be slightly bent, your abs contracted, and your shoulders down.

Steps:
1. Bend one arm at the elbow, bringing the dumbbell up to your shoulder. Your upper arm should remain motionless during this movement.
2. Bring the dumbbell back down until your arm is in its original relaxed position.
3. Repeat, switching arms.""",
        "tr": """Starting position:
Start standing up with dumbbells in each hand, your back straight and feet hip-width apart. Your arms should be relaxed, pointing down. Your knees should be slightly bent, your abs contracted, and your shoulders down.

Steps:
1. Bend one arm at the elbow, bringing the dumbbell up to your shoulder. Your upper arm should remain motionless during this movement.
2. Bring the dumbbell back down until your arm is in its original relaxed position.
3. Repeat, switching arms.""",
        "nl": """Starting position:
Start standing up with dumbbells in each hand, your back straight and feet hip-width apart. Your arms should be relaxed, pointing down. Your knees should be slightly bent, your abs contracted, and your shoulders down.

Steps:
1. Bend one arm at the elbow, bringing the dumbbell up to your shoulder. Your upper arm should remain motionless during this movement.
2. Bring the dumbbell back down until your arm is in its original relaxed position.
3. Repeat, switching arms.""",
        "de": """Ausgangsposition:
Beginnen Sie im Stehen mit Kurzhanteln in jeder Hand, mit geradem Rücken und hüftbreit auseinander stehenden Füßen. Die Arme sind entspannt und zeigen nach unten. Die Knie sollten leicht gebeugt, die Bauchmuskeln angespannt und die Schultern nach unten gerichtet sein.

Die Schritte:
1. Beugen Sie einen Arm am Ellenbogen und führen Sie die Hantel bis zur Schulter. Ihr Oberarm sollte während dieser Bewegung unbeweglich bleiben.
2. Bringen Sie die Hantel wieder nach unten, bis sich Ihr Arm in seiner ursprünglichen, entspannten Position befindet.
3. Wiederholen Sie die Übung mit dem anderen Arm.""",
        "ru": """Starting position:
Start standing up with dumbbells in each hand, your back straight and feet hip-width apart. Your arms should be relaxed, pointing down. Your knees should be slightly bent, your abs contracted, and your shoulders down.

Steps:
1. Bend one arm at the elbow, bringing the dumbbell up to your shoulder. Your upper arm should remain motionless during this movement.
2. Bring the dumbbell back down until your arm is in its original relaxed position.
3. Repeat, switching arms.""",
        "pt": """Starting position:
Start standing up with dumbbells in each hand, your back straight and feet hip-width apart. Your arms should be relaxed, pointing down. Your knees should be slightly bent, your abs contracted, and your shoulders down.

Steps:
1. Bend one arm at the elbow, bringing the dumbbell up to your shoulder. Your upper arm should remain motionless during this movement.
2. Bring the dumbbell back down until your arm is in its original relaxed position.
3. Repeat, switching arms.""",
        "en": """Starting position:
Start standing up with dumbbells in each hand, your back straight and feet hip-width apart. Your arms should be relaxed, pointing down. Your knees should be slightly bent, your abs contracted, and your shoulders down.

Steps:
1. Bend one arm at the elbow, bringing the dumbbell up to your shoulder. Your upper arm should remain motionless during this movement.
2. Bring the dumbbell back down until your arm is in its original relaxed position.
3. Repeat, switching arms.""",
        "it": """Starting position:
Start standing up with dumbbells in each hand, your back straight and feet hip-width apart. Your arms should be relaxed, pointing down. Your knees should be slightly bent, your abs contracted, and your shoulders down.

Steps:
1. Bend one arm at the elbow, bringing the dumbbell up to your shoulder. Your upper arm should remain motionless during this movement.
2. Bring the dumbbell back down until your arm is in its original relaxed position.
3. Repeat, switching arms.""",
        "hr": """Starting position:
Start standing up with dumbbells in each hand, your back straight and feet hip-width apart. Your arms should be relaxed, pointing down. Your knees should be slightly bent, your abs contracted, and your shoulders down.

Steps:
1. Bend one arm at the elbow, bringing the dumbbell up to your shoulder. Your upper arm should remain motionless during this movement.
2. Bring the dumbbell back down until your arm is in its original relaxed position.
3. Repeat, switching arms.""",
        "fr": """Starting position:
Start standing up with dumbbells in each hand, your back straight and feet hip-width apart. Your arms should be relaxed, pointing down. Your knees should be slightly bent, your abs contracted, and your shoulders down.

Steps:
1. Bend one arm at the elbow, bringing the dumbbell up to your shoulder. Your upper arm should remain motionless during this movement.
2. Bring the dumbbell back down until your arm is in its original relaxed position.
3. Repeat, switching arms.""",
        "el": """Starting position:
Start standing up with dumbbells in each hand, your back straight and feet hip-width apart. Your arms should be relaxed, pointing down. Your knees should be slightly bent, your abs contracted, and your shoulders down.

Steps:
1. Bend one arm at the elbow, bringing the dumbbell up to your shoulder. Your upper arm should remain motionless during this movement.
2. Bring the dumbbell back down until your arm is in its original relaxed position.
3. Repeat, switching arms.""",
        "cs": """Starting position:
Start standing up with dumbbells in each hand, your back straight and feet hip-width apart. Your arms should be relaxed, pointing down. Your knees should be slightly bent, your abs contracted, and your shoulders down.

Steps:
1. Bend one arm at the elbow, bringing the dumbbell up to your shoulder. Your upper arm should remain motionless during this movement.
2. Bring the dumbbell back down until your arm is in its original relaxed position.
3. Repeat, switching arms.""",
        "id": """Starting position:
Start standing up with dumbbells in each hand, your back straight and feet hip-width apart. Your arms should be relaxed, pointing down. Your knees should be slightly bent, your abs contracted, and your shoulders down.

Steps:
1. Bend one arm at the elbow, bringing the dumbbell up to your shoulder. Your upper arm should remain motionless during this movement.
2. Bring the dumbbell back down until your arm is in its original relaxed position.
3. Repeat, switching arms.""",
        "es": """Starting position:
Start standing up with dumbbells in each hand, your back straight and feet hip-width apart. Your arms should be relaxed, pointing down. Your knees should be slightly bent, your abs contracted, and your shoulders down.

Steps:
1. Bend one arm at the elbow, bringing the dumbbell up to your shoulder. Your upper arm should remain motionless during this movement.
2. Bring the dumbbell back down until your arm is in its original relaxed position.
3. Repeat, switching arms.""",
        "ar": """Starting position:
Start standing up with dumbbells in each hand, your back straight and feet hip-width apart. Your arms should be relaxed, pointing down. Your knees should be slightly bent, your abs contracted, and your shoulders down.

Steps:
1. Bend one arm at the elbow, bringing the dumbbell up to your shoulder. Your upper arm should remain motionless during this movement.
2. Bring the dumbbell back down until your arm is in its original relaxed position.
3. Repeat, switching arms.""",
      } +
      {
        "zh": """Shoulders down""",
        "tr": """Shoulders down""",
        "nl": """Shoulders down""",
        "de": """Schultern nach unten""",
        "ru": """Shoulders down""",
        "pt": """Shoulders down""",
        "en": """Shoulders down""",
        "it": """Shoulders down""",
        "hr": """Shoulders down""",
        "fr": """Shoulders down""",
        "el": """Shoulders down""",
        "cs": """Shoulders down""",
        "id": """Shoulders down""",
        "es": """Shoulders down""",
        "ar": """Shoulders down""",
      } +
      {
        "zh": """Push against hands""",
        "tr": """Push against hands""",
        "nl": """Push against hands""",
        "de": """Gegen Hände drücken""",
        "ru": """Push against hands""",
        "pt": """Push against hands""",
        "en": """Push against hands""",
        "it": """Push against hands""",
        "hr": """Push against hands""",
        "fr": """Push against hands""",
        "el": """Push against hands""",
        "cs": """Push against hands""",
        "id": """Push against hands""",
        "es": """Push against hands""",
        "ar": """Push against hands""",
      } +
      {
        "zh": """Left levator scapulae stretch""",
        "tr": """Left levator scapulae stretch""",
        "nl": """Left levator scapulae stretch""",
        "de": """Dehnung des linken Schulterblattes""",
        "ru": """Left levator scapulae stretch""",
        "pt": """Left levator scapulae stretch""",
        "en": """Left levator scapulae stretch""",
        "it": """Left levator scapulae stretch""",
        "hr": """Left levator scapulae stretch""",
        "fr": """Left levator scapulae stretch""",
        "el": """Left levator scapulae stretch""",
        "cs": """Left levator scapulae stretch""",
        "id": """Left levator scapulae stretch""",
        "es": """Left levator scapulae stretch""",
        "ar": """Left levator scapulae stretch""",
      } +
      {
        "zh": """Right levator scapulae stretch""",
        "tr": """Right levator scapulae stretch""",
        "nl": """Right levator scapulae stretch""",
        "de": """Dehnung des rechten Schulterblattes""",
        "ru": """Right levator scapulae stretch""",
        "pt": """Right levator scapulae stretch""",
        "en": """Right levator scapulae stretch""",
        "it": """Right levator scapulae stretch""",
        "hr": """Right levator scapulae stretch""",
        "fr": """Right levator scapulae stretch""",
        "el": """Right levator scapulae stretch""",
        "cs": """Right levator scapulae stretch""",
        "id": """Right levator scapulae stretch""",
        "es": """Right levator scapulae stretch""",
        "ar": """Right levator scapulae stretch""",
      } +
      {
        "zh": """Starting position:
Start standing up or sitting down. Turn your head in one direction, around 45 degrees or just above your nipple. Place your futher hand behind your back or sit on it. Take your closer hand and use it to hold the back of your head. Lead your head down slightly.

Steps:
1. After assuming the starting position, press your head against your hand with slight force. Your hand should press back with equal force, so that your head doesn't move. Hold this position.""",
        "tr": """Starting position:
Start standing up or sitting down. Turn your head in one direction, around 45 degrees or just above your nipple. Place your futher hand behind your back or sit on it. Take your closer hand and use it to hold the back of your head. Lead your head down slightly.

Steps:
1. After assuming the starting position, press your head against your hand with slight force. Your hand should press back with equal force, so that your head doesn't move. Hold this position.""",
        "nl": """Starting position:
Start standing up or sitting down. Turn your head in one direction, around 45 degrees or just above your nipple. Place your futher hand behind your back or sit on it. Take your closer hand and use it to hold the back of your head. Lead your head down slightly.

Steps:
1. After assuming the starting position, press your head against your hand with slight force. Your hand should press back with equal force, so that your head doesn't move. Hold this position.""",
        "de": """Ausgangsposition:
Beginnen Sie im Stehen oder Sitzen. Drehen Sie Ihren Kopf in eine Richtung, etwa um 45 Grad oder direkt über Ihre Brustwarze. Legen Sie die andere Hand hinter den Rücken oder setzen Sie sich auf sie. Nehmen Sie Ihre nähere Hand und halten Sie damit Ihren Hinterkopf. Führen Sie Ihren Kopf leicht nach unten.

Die Schritte:
1. Nachdem Sie die Ausgangsposition eingenommen haben, drücken Sie Ihren Kopf mit leichter Kraft gegen Ihre Hand. Ihre Hand sollte mit gleicher Kraft zurückdrücken, so dass sich Ihr Kopf nicht bewegt. Halten Sie diese Position.""",
        "ru": """Starting position:
Start standing up or sitting down. Turn your head in one direction, around 45 degrees or just above your nipple. Place your futher hand behind your back or sit on it. Take your closer hand and use it to hold the back of your head. Lead your head down slightly.

Steps:
1. After assuming the starting position, press your head against your hand with slight force. Your hand should press back with equal force, so that your head doesn't move. Hold this position.""",
        "pt": """Starting position:
Start standing up or sitting down. Turn your head in one direction, around 45 degrees or just above your nipple. Place your futher hand behind your back or sit on it. Take your closer hand and use it to hold the back of your head. Lead your head down slightly.

Steps:
1. After assuming the starting position, press your head against your hand with slight force. Your hand should press back with equal force, so that your head doesn't move. Hold this position.""",
        "en": """Starting position:
Start standing up or sitting down. Turn your head in one direction, around 45 degrees or just above your nipple. Place your futher hand behind your back or sit on it. Take your closer hand and use it to hold the back of your head. Lead your head down slightly.

Steps:
1. After assuming the starting position, press your head against your hand with slight force. Your hand should press back with equal force, so that your head doesn't move. Hold this position.""",
        "it": """Starting position:
Start standing up or sitting down. Turn your head in one direction, around 45 degrees or just above your nipple. Place your futher hand behind your back or sit on it. Take your closer hand and use it to hold the back of your head. Lead your head down slightly.

Steps:
1. After assuming the starting position, press your head against your hand with slight force. Your hand should press back with equal force, so that your head doesn't move. Hold this position.""",
        "hr": """Starting position:
Start standing up or sitting down. Turn your head in one direction, around 45 degrees or just above your nipple. Place your futher hand behind your back or sit on it. Take your closer hand and use it to hold the back of your head. Lead your head down slightly.

Steps:
1. After assuming the starting position, press your head against your hand with slight force. Your hand should press back with equal force, so that your head doesn't move. Hold this position.""",
        "fr": """Starting position:
Start standing up or sitting down. Turn your head in one direction, around 45 degrees or just above your nipple. Place your futher hand behind your back or sit on it. Take your closer hand and use it to hold the back of your head. Lead your head down slightly.

Steps:
1. After assuming the starting position, press your head against your hand with slight force. Your hand should press back with equal force, so that your head doesn't move. Hold this position.""",
        "el": """Starting position:
Start standing up or sitting down. Turn your head in one direction, around 45 degrees or just above your nipple. Place your futher hand behind your back or sit on it. Take your closer hand and use it to hold the back of your head. Lead your head down slightly.

Steps:
1. After assuming the starting position, press your head against your hand with slight force. Your hand should press back with equal force, so that your head doesn't move. Hold this position.""",
        "cs": """Starting position:
Start standing up or sitting down. Turn your head in one direction, around 45 degrees or just above your nipple. Place your futher hand behind your back or sit on it. Take your closer hand and use it to hold the back of your head. Lead your head down slightly.

Steps:
1. After assuming the starting position, press your head against your hand with slight force. Your hand should press back with equal force, so that your head doesn't move. Hold this position.""",
        "id": """Starting position:
Start standing up or sitting down. Turn your head in one direction, around 45 degrees or just above your nipple. Place your futher hand behind your back or sit on it. Take your closer hand and use it to hold the back of your head. Lead your head down slightly.

Steps:
1. After assuming the starting position, press your head against your hand with slight force. Your hand should press back with equal force, so that your head doesn't move. Hold this position.""",
        "es": """Starting position:
Start standing up or sitting down. Turn your head in one direction, around 45 degrees or just above your nipple. Place your futher hand behind your back or sit on it. Take your closer hand and use it to hold the back of your head. Lead your head down slightly.

Steps:
1. After assuming the starting position, press your head against your hand with slight force. Your hand should press back with equal force, so that your head doesn't move. Hold this position.""",
        "ar": """Starting position:
Start standing up or sitting down. Turn your head in one direction, around 45 degrees or just above your nipple. Place your futher hand behind your back or sit on it. Take your closer hand and use it to hold the back of your head. Lead your head down slightly.

Steps:
1. After assuming the starting position, press your head against your hand with slight force. Your hand should press back with equal force, so that your head doesn't move. Hold this position.""",
      } +
      {
        "zh": """Clockwise neck circles""",
        "tr": """Clockwise neck circles""",
        "nl": """Clockwise neck circles""",
        "de": """Halskreise im Uhrzeigersinn""",
        "ru": """Clockwise neck circles""",
        "pt": """Clockwise neck circles""",
        "en": """Clockwise neck circles""",
        "it": """Clockwise neck circles""",
        "hr": """Clockwise neck circles""",
        "fr": """Clockwise neck circles""",
        "el": """Clockwise neck circles""",
        "cs": """Clockwise neck circles""",
        "id": """Clockwise neck circles""",
        "es": """Clockwise neck circles""",
        "ar": """Clockwise neck circles""",
      } +
      {
        "zh": """Starting position:
Start sitting or standing. Drop your head down, bringing your chin toward your chest, but not pushing.

Steps:
In a slower fluid motion and with your head relaxed and not pushing in any direction:
1. lean toward your right shoulder.
2. then bring your head back, facing up.
3. then lean toward your left shoulder.
4.and back toward the starting position.

Keep repeating this as part of one slower fluid motion.""",
        "tr": """Starting position:
Start sitting or standing. Drop your head down, bringing your chin toward your chest, but not pushing.

Steps:
In a slower fluid motion and with your head relaxed and not pushing in any direction:
1. lean toward your right shoulder.
2. then bring your head back, facing up.
3. then lean toward your left shoulder.
4.and back toward the starting position.

Keep repeating this as part of one slower fluid motion.""",
        "nl": """Starting position:
Start sitting or standing. Drop your head down, bringing your chin toward your chest, but not pushing.

Steps:
In a slower fluid motion and with your head relaxed and not pushing in any direction:
1. lean toward your right shoulder.
2. then bring your head back, facing up.
3. then lean toward your left shoulder.
4.and back toward the starting position.

Keep repeating this as part of one slower fluid motion.""",
        "de": """Ausgangsposition:
Beginnen Sie im Sitzen oder Stehen. Senken Sie den Kopf nach unten und bringen Sie das Kinn zur Brust, aber drücken Sie nicht.

Schritte:
Führen Sie die Übung in einer langsamen, fließenden Bewegung aus, wobei Ihr Kopf entspannt ist und in keine Richtung drückt:
1. Lehnen Sie sich zu Ihrer rechten Schulter.
2. Legen Sie dann den Kopf zurück und schauen Sie nach oben.
3. dann lehnen Sie sich zur linken Schulter
4. und zurück in die Ausgangsposition.

Wiederholen Sie dies als Teil einer langsamen, fließenden Bewegung.""",
        "ru": """Starting position:
Start sitting or standing. Drop your head down, bringing your chin toward your chest, but not pushing.

Steps:
In a slower fluid motion and with your head relaxed and not pushing in any direction:
1. lean toward your right shoulder.
2. then bring your head back, facing up.
3. then lean toward your left shoulder.
4.and back toward the starting position.

Keep repeating this as part of one slower fluid motion.""",
        "pt": """Starting position:
Start sitting or standing. Drop your head down, bringing your chin toward your chest, but not pushing.

Steps:
In a slower fluid motion and with your head relaxed and not pushing in any direction:
1. lean toward your right shoulder.
2. then bring your head back, facing up.
3. then lean toward your left shoulder.
4.and back toward the starting position.

Keep repeating this as part of one slower fluid motion.""",
        "en": """Starting position:
Start sitting or standing. Drop your head down, bringing your chin toward your chest, but not pushing.

Steps:
In a slower fluid motion and with your head relaxed and not pushing in any direction:
1. lean toward your right shoulder.
2. then bring your head back, facing up.
3. then lean toward your left shoulder.
4.and back toward the starting position.

Keep repeating this as part of one slower fluid motion.""",
        "it": """Starting position:
Start sitting or standing. Drop your head down, bringing your chin toward your chest, but not pushing.

Steps:
In a slower fluid motion and with your head relaxed and not pushing in any direction:
1. lean toward your right shoulder.
2. then bring your head back, facing up.
3. then lean toward your left shoulder.
4.and back toward the starting position.

Keep repeating this as part of one slower fluid motion.""",
        "hr": """Starting position:
Start sitting or standing. Drop your head down, bringing your chin toward your chest, but not pushing.

Steps:
In a slower fluid motion and with your head relaxed and not pushing in any direction:
1. lean toward your right shoulder.
2. then bring your head back, facing up.
3. then lean toward your left shoulder.
4.and back toward the starting position.

Keep repeating this as part of one slower fluid motion.""",
        "fr": """Starting position:
Start sitting or standing. Drop your head down, bringing your chin toward your chest, but not pushing.

Steps:
In a slower fluid motion and with your head relaxed and not pushing in any direction:
1. lean toward your right shoulder.
2. then bring your head back, facing up.
3. then lean toward your left shoulder.
4.and back toward the starting position.

Keep repeating this as part of one slower fluid motion.""",
        "el": """Starting position:
Start sitting or standing. Drop your head down, bringing your chin toward your chest, but not pushing.

Steps:
In a slower fluid motion and with your head relaxed and not pushing in any direction:
1. lean toward your right shoulder.
2. then bring your head back, facing up.
3. then lean toward your left shoulder.
4.and back toward the starting position.

Keep repeating this as part of one slower fluid motion.""",
        "cs": """Starting position:
Start sitting or standing. Drop your head down, bringing your chin toward your chest, but not pushing.

Steps:
In a slower fluid motion and with your head relaxed and not pushing in any direction:
1. lean toward your right shoulder.
2. then bring your head back, facing up.
3. then lean toward your left shoulder.
4.and back toward the starting position.

Keep repeating this as part of one slower fluid motion.""",
        "id": """Starting position:
Start sitting or standing. Drop your head down, bringing your chin toward your chest, but not pushing.

Steps:
In a slower fluid motion and with your head relaxed and not pushing in any direction:
1. lean toward your right shoulder.
2. then bring your head back, facing up.
3. then lean toward your left shoulder.
4.and back toward the starting position.

Keep repeating this as part of one slower fluid motion.""",
        "es": """Starting position:
Start sitting or standing. Drop your head down, bringing your chin toward your chest, but not pushing.

Steps:
In a slower fluid motion and with your head relaxed and not pushing in any direction:
1. lean toward your right shoulder.
2. then bring your head back, facing up.
3. then lean toward your left shoulder.
4.and back toward the starting position.

Keep repeating this as part of one slower fluid motion.""",
        "ar": """Starting position:
Start sitting or standing. Drop your head down, bringing your chin toward your chest, but not pushing.

Steps:
In a slower fluid motion and with your head relaxed and not pushing in any direction:
1. lean toward your right shoulder.
2. then bring your head back, facing up.
3. then lean toward your left shoulder.
4.and back toward the starting position.

Keep repeating this as part of one slower fluid motion.""",
      } +
      {
        "zh": """Counterclockwise neck circles""",
        "tr": """Counterclockwise neck circles""",
        "nl": """Counterclockwise neck circles""",
        "de": """Nackenkreise gegen den Uhrzeigersinn""",
        "ru": """Counterclockwise neck circles""",
        "pt": """Counterclockwise neck circles""",
        "en": """Counterclockwise neck circles""",
        "it": """Counterclockwise neck circles""",
        "hr": """Counterclockwise neck circles""",
        "fr": """Counterclockwise neck circles""",
        "el": """Counterclockwise neck circles""",
        "cs": """Counterclockwise neck circles""",
        "id": """Counterclockwise neck circles""",
        "es": """Counterclockwise neck circles""",
        "ar": """Counterclockwise neck circles""",
      } +
      {
        "zh": """Starting position:
Start sitting or standing. Drop your head down, bringing your chin toward your chest, but not pushing.

Steps:
In a slower fluid motion and with your head relaxed and not pushing in any direction:
1. lean toward your left shoulder.
2. then bring your head back, facing up.
3. then lean toward your right shoulder.
4.and back toward the starting position.

Keep repeating this as part of one slower fluid motion.""",
        "tr": """Starting position:
Start sitting or standing. Drop your head down, bringing your chin toward your chest, but not pushing.

Steps:
In a slower fluid motion and with your head relaxed and not pushing in any direction:
1. lean toward your left shoulder.
2. then bring your head back, facing up.
3. then lean toward your right shoulder.
4.and back toward the starting position.

Keep repeating this as part of one slower fluid motion.""",
        "nl": """Starting position:
Start sitting or standing. Drop your head down, bringing your chin toward your chest, but not pushing.

Steps:
In a slower fluid motion and with your head relaxed and not pushing in any direction:
1. lean toward your left shoulder.
2. then bring your head back, facing up.
3. then lean toward your right shoulder.
4.and back toward the starting position.

Keep repeating this as part of one slower fluid motion.""",
        "de": """Ausgangsposition:
Beginnen Sie im Sitzen oder Stehen. Senken Sie den Kopf nach unten und bringen Sie das Kinn zur Brust, aber drücken Sie nicht.

Schritte:
Führen Sie die Übung in einer langsamen, fließenden Bewegung aus, wobei Ihr Kopf entspannt ist und in keine Richtung drückt:
1. Lehnen Sie sich zu Ihrer linken Schulter.
2. Legen Sie dann den Kopf zurück und schauen Sie nach oben.
3. dann lehnen Sie sich zur rechten Schulter
4. und zurück in die Ausgangsposition.

Wiederholen Sie dies als Teil einer langsamen, fließenden Bewegung.""",
        "ru": """Starting position:
Start sitting or standing. Drop your head down, bringing your chin toward your chest, but not pushing.

Steps:
In a slower fluid motion and with your head relaxed and not pushing in any direction:
1. lean toward your left shoulder.
2. then bring your head back, facing up.
3. then lean toward your right shoulder.
4.and back toward the starting position.

Keep repeating this as part of one slower fluid motion.""",
        "pt": """Starting position:
Start sitting or standing. Drop your head down, bringing your chin toward your chest, but not pushing.

Steps:
In a slower fluid motion and with your head relaxed and not pushing in any direction:
1. lean toward your left shoulder.
2. then bring your head back, facing up.
3. then lean toward your right shoulder.
4.and back toward the starting position.

Keep repeating this as part of one slower fluid motion.""",
        "en": """Starting position:
Start sitting or standing. Drop your head down, bringing your chin toward your chest, but not pushing.

Steps:
In a slower fluid motion and with your head relaxed and not pushing in any direction:
1. lean toward your left shoulder.
2. then bring your head back, facing up.
3. then lean toward your right shoulder.
4.and back toward the starting position.

Keep repeating this as part of one slower fluid motion.""",
        "it": """Starting position:
Start sitting or standing. Drop your head down, bringing your chin toward your chest, but not pushing.

Steps:
In a slower fluid motion and with your head relaxed and not pushing in any direction:
1. lean toward your left shoulder.
2. then bring your head back, facing up.
3. then lean toward your right shoulder.
4.and back toward the starting position.

Keep repeating this as part of one slower fluid motion.""",
        "hr": """Starting position:
Start sitting or standing. Drop your head down, bringing your chin toward your chest, but not pushing.

Steps:
In a slower fluid motion and with your head relaxed and not pushing in any direction:
1. lean toward your left shoulder.
2. then bring your head back, facing up.
3. then lean toward your right shoulder.
4.and back toward the starting position.

Keep repeating this as part of one slower fluid motion.""",
        "fr": """Starting position:
Start sitting or standing. Drop your head down, bringing your chin toward your chest, but not pushing.

Steps:
In a slower fluid motion and with your head relaxed and not pushing in any direction:
1. lean toward your left shoulder.
2. then bring your head back, facing up.
3. then lean toward your right shoulder.
4.and back toward the starting position.

Keep repeating this as part of one slower fluid motion.""",
        "el": """Starting position:
Start sitting or standing. Drop your head down, bringing your chin toward your chest, but not pushing.

Steps:
In a slower fluid motion and with your head relaxed and not pushing in any direction:
1. lean toward your left shoulder.
2. then bring your head back, facing up.
3. then lean toward your right shoulder.
4.and back toward the starting position.

Keep repeating this as part of one slower fluid motion.""",
        "cs": """Starting position:
Start sitting or standing. Drop your head down, bringing your chin toward your chest, but not pushing.

Steps:
In a slower fluid motion and with your head relaxed and not pushing in any direction:
1. lean toward your left shoulder.
2. then bring your head back, facing up.
3. then lean toward your right shoulder.
4.and back toward the starting position.

Keep repeating this as part of one slower fluid motion.""",
        "id": """Starting position:
Start sitting or standing. Drop your head down, bringing your chin toward your chest, but not pushing.

Steps:
In a slower fluid motion and with your head relaxed and not pushing in any direction:
1. lean toward your left shoulder.
2. then bring your head back, facing up.
3. then lean toward your right shoulder.
4.and back toward the starting position.

Keep repeating this as part of one slower fluid motion.""",
        "es": """Starting position:
Start sitting or standing. Drop your head down, bringing your chin toward your chest, but not pushing.

Steps:
In a slower fluid motion and with your head relaxed and not pushing in any direction:
1. lean toward your left shoulder.
2. then bring your head back, facing up.
3. then lean toward your right shoulder.
4.and back toward the starting position.

Keep repeating this as part of one slower fluid motion.""",
        "ar": """Starting position:
Start sitting or standing. Drop your head down, bringing your chin toward your chest, but not pushing.

Steps:
In a slower fluid motion and with your head relaxed and not pushing in any direction:
1. lean toward your left shoulder.
2. then bring your head back, facing up.
3. then lean toward your right shoulder.
4.and back toward the starting position.

Keep repeating this as part of one slower fluid motion.""",
      } +
      {
        "zh": """Neck half circles""",
        "tr": """Neck half circles""",
        "nl": """Neck half circles""",
        "de": """Nacken-Halbkreise""",
        "ru": """Neck half circles""",
        "pt": """Neck half circles""",
        "en": """Neck half circles""",
        "it": """Neck half circles""",
        "hr": """Neck half circles""",
        "fr": """Neck half circles""",
        "el": """Neck half circles""",
        "cs": """Neck half circles""",
        "id": """Neck half circles""",
        "es": """Neck half circles""",
        "ar": """Neck half circles""",
      } +
      {
        "zh": """Starting position:
Start sitting or standing. Lean your head against one of your shoulders, but don't push.

Steps:
In one slower fluid motion and with your head relaxed and not pushing in any direction:
1. bring your head down toward your chest.
2. then lean back aganst your other shoulder.
3. then back toward the chest again.
4.and finally toward the starting position.

Keep repeating this.""",
        "tr": """Starting position:
Start sitting or standing. Lean your head against one of your shoulders, but don't push.

Steps:
In one slower fluid motion and with your head relaxed and not pushing in any direction:
1. bring your head down toward your chest.
2. then lean back aganst your other shoulder.
3. then back toward the chest again.
4.and finally toward the starting position.

Keep repeating this.""",
        "nl": """Starting position:
Start sitting or standing. Lean your head against one of your shoulders, but don't push.

Steps:
In one slower fluid motion and with your head relaxed and not pushing in any direction:
1. bring your head down toward your chest.
2. then lean back aganst your other shoulder.
3. then back toward the chest again.
4.and finally toward the starting position.

Keep repeating this.""",
        "de": """Ausgangsposition:
Beginnen Sie im Sitzen oder Stehen. Lehnen Sie Ihren Kopf gegen eine Ihrer Schultern, aber drücken Sie nicht.

Schritte:
Führen Sie eine langsame, fließende Bewegung aus, wobei Ihr Kopf entspannt ist und in keine Richtung drückt:
1. Bringen Sie den Kopf nach unten zur Brust.
2. lehnen Sie sich dann gegen die andere Schulter zurück
3. dann wieder zurück zur Brust
4. und schließlich zurück in die Ausgangsposition.

Wiederholen Sie dies immer wieder.""",
        "ru": """Starting position:
Start sitting or standing. Lean your head against one of your shoulders, but don't push.

Steps:
In one slower fluid motion and with your head relaxed and not pushing in any direction:
1. bring your head down toward your chest.
2. then lean back aganst your other shoulder.
3. then back toward the chest again.
4.and finally toward the starting position.

Keep repeating this.""",
        "pt": """Starting position:
Start sitting or standing. Lean your head against one of your shoulders, but don't push.

Steps:
In one slower fluid motion and with your head relaxed and not pushing in any direction:
1. bring your head down toward your chest.
2. then lean back aganst your other shoulder.
3. then back toward the chest again.
4.and finally toward the starting position.

Keep repeating this.""",
        "en": """Starting position:
Start sitting or standing. Lean your head against one of your shoulders, but don't push.

Steps:
In one slower fluid motion and with your head relaxed and not pushing in any direction:
1. bring your head down toward your chest.
2. then lean back aganst your other shoulder.
3. then back toward the chest again.
4.and finally toward the starting position.

Keep repeating this.""",
        "it": """Starting position:
Start sitting or standing. Lean your head against one of your shoulders, but don't push.

Steps:
In one slower fluid motion and with your head relaxed and not pushing in any direction:
1. bring your head down toward your chest.
2. then lean back aganst your other shoulder.
3. then back toward the chest again.
4.and finally toward the starting position.

Keep repeating this.""",
        "hr": """Starting position:
Start sitting or standing. Lean your head against one of your shoulders, but don't push.

Steps:
In one slower fluid motion and with your head relaxed and not pushing in any direction:
1. bring your head down toward your chest.
2. then lean back aganst your other shoulder.
3. then back toward the chest again.
4.and finally toward the starting position.

Keep repeating this.""",
        "fr": """Starting position:
Start sitting or standing. Lean your head against one of your shoulders, but don't push.

Steps:
In one slower fluid motion and with your head relaxed and not pushing in any direction:
1. bring your head down toward your chest.
2. then lean back aganst your other shoulder.
3. then back toward the chest again.
4.and finally toward the starting position.

Keep repeating this.""",
        "el": """Starting position:
Start sitting or standing. Lean your head against one of your shoulders, but don't push.

Steps:
In one slower fluid motion and with your head relaxed and not pushing in any direction:
1. bring your head down toward your chest.
2. then lean back aganst your other shoulder.
3. then back toward the chest again.
4.and finally toward the starting position.

Keep repeating this.""",
        "cs": """Starting position:
Start sitting or standing. Lean your head against one of your shoulders, but don't push.

Steps:
In one slower fluid motion and with your head relaxed and not pushing in any direction:
1. bring your head down toward your chest.
2. then lean back aganst your other shoulder.
3. then back toward the chest again.
4.and finally toward the starting position.

Keep repeating this.""",
        "id": """Starting position:
Start sitting or standing. Lean your head against one of your shoulders, but don't push.

Steps:
In one slower fluid motion and with your head relaxed and not pushing in any direction:
1. bring your head down toward your chest.
2. then lean back aganst your other shoulder.
3. then back toward the chest again.
4.and finally toward the starting position.

Keep repeating this.""",
        "es": """Starting position:
Start sitting or standing. Lean your head against one of your shoulders, but don't push.

Steps:
In one slower fluid motion and with your head relaxed and not pushing in any direction:
1. bring your head down toward your chest.
2. then lean back aganst your other shoulder.
3. then back toward the chest again.
4.and finally toward the starting position.

Keep repeating this.""",
        "ar": """Starting position:
Start sitting or standing. Lean your head against one of your shoulders, but don't push.

Steps:
In one slower fluid motion and with your head relaxed and not pushing in any direction:
1. bring your head down toward your chest.
2. then lean back aganst your other shoulder.
3. then back toward the chest again.
4.and finally toward the starting position.

Keep repeating this.""",
      } +
      {
        "zh": """Head tilts""",
        "tr": """Head tilts""",
        "nl": """Head tilts""",
        "de": """Kopf neigen""",
        "ru": """Head tilts""",
        "pt": """Head tilts""",
        "en": """Head tilts""",
        "it": """Head tilts""",
        "hr": """Head tilts""",
        "fr": """Head tilts""",
        "el": """Head tilts""",
        "cs": """Head tilts""",
        "id": """Head tilts""",
        "es": """Head tilts""",
        "ar": """Head tilts""",
      } +
      {
        "zh": """Starting position:
Sit or stand with your back straight.

Steps:
1. Tilt your head to one side and hold for a bit.
2.Return your head to neutral position and hold for a bit.
3. Tilt your head to the other side and hold for a bit.
4. Return your head to neutral position yet again and hold for a bit.
5. Repeat.""",
        "tr": """Starting position:
Sit or stand with your back straight.

Steps:
1. Tilt your head to one side and hold for a bit.
2.Return your head to neutral position and hold for a bit.
3. Tilt your head to the other side and hold for a bit.
4. Return your head to neutral position yet again and hold for a bit.
5. Repeat.""",
        "nl": """Starting position:
Sit or stand with your back straight.

Steps:
1. Tilt your head to one side and hold for a bit.
2.Return your head to neutral position and hold for a bit.
3. Tilt your head to the other side and hold for a bit.
4. Return your head to neutral position yet again and hold for a bit.
5. Repeat.""",
        "de": """Ausgangsposition:
Sitzen oder stehen Sie mit geradem Rücken.

Schritte:
1. Neigen Sie den Kopf zu einer Seite und halten Sie ihn ein wenig.
2. Bringen Sie den Kopf in die neutrale Position zurück und halten Sie ihn kurz.
3. Neigen Sie den Kopf auf die andere Seite und halten Sie ihn kurz.
4. Bringen Sie den Kopf wieder in die neutrale Position und halten Sie ihn ein wenig.
5. Wiederholen Sie die Übung.""",
        "ru": """Starting position:
Sit or stand with your back straight.

Steps:
1. Tilt your head to one side and hold for a bit.
2.Return your head to neutral position and hold for a bit.
3. Tilt your head to the other side and hold for a bit.
4. Return your head to neutral position yet again and hold for a bit.
5. Repeat.""",
        "pt": """Starting position:
Sit or stand with your back straight.

Steps:
1. Tilt your head to one side and hold for a bit.
2.Return your head to neutral position and hold for a bit.
3. Tilt your head to the other side and hold for a bit.
4. Return your head to neutral position yet again and hold for a bit.
5. Repeat.""",
        "en": """Starting position:
Sit or stand with your back straight.

Steps:
1. Tilt your head to one side and hold for a bit.
2.Return your head to neutral position and hold for a bit.
3. Tilt your head to the other side and hold for a bit.
4. Return your head to neutral position yet again and hold for a bit.
5. Repeat.""",
        "it": """Starting position:
Sit or stand with your back straight.

Steps:
1. Tilt your head to one side and hold for a bit.
2.Return your head to neutral position and hold for a bit.
3. Tilt your head to the other side and hold for a bit.
4. Return your head to neutral position yet again and hold for a bit.
5. Repeat.""",
        "hr": """Starting position:
Sit or stand with your back straight.

Steps:
1. Tilt your head to one side and hold for a bit.
2.Return your head to neutral position and hold for a bit.
3. Tilt your head to the other side and hold for a bit.
4. Return your head to neutral position yet again and hold for a bit.
5. Repeat.""",
        "fr": """Starting position:
Sit or stand with your back straight.

Steps:
1. Tilt your head to one side and hold for a bit.
2.Return your head to neutral position and hold for a bit.
3. Tilt your head to the other side and hold for a bit.
4. Return your head to neutral position yet again and hold for a bit.
5. Repeat.""",
        "el": """Starting position:
Sit or stand with your back straight.

Steps:
1. Tilt your head to one side and hold for a bit.
2.Return your head to neutral position and hold for a bit.
3. Tilt your head to the other side and hold for a bit.
4. Return your head to neutral position yet again and hold for a bit.
5. Repeat.""",
        "cs": """Starting position:
Sit or stand with your back straight.

Steps:
1. Tilt your head to one side and hold for a bit.
2.Return your head to neutral position and hold for a bit.
3. Tilt your head to the other side and hold for a bit.
4. Return your head to neutral position yet again and hold for a bit.
5. Repeat.""",
        "id": """Starting position:
Sit or stand with your back straight.

Steps:
1. Tilt your head to one side and hold for a bit.
2.Return your head to neutral position and hold for a bit.
3. Tilt your head to the other side and hold for a bit.
4. Return your head to neutral position yet again and hold for a bit.
5. Repeat.""",
        "es": """Starting position:
Sit or stand with your back straight.

Steps:
1. Tilt your head to one side and hold for a bit.
2.Return your head to neutral position and hold for a bit.
3. Tilt your head to the other side and hold for a bit.
4. Return your head to neutral position yet again and hold for a bit.
5. Repeat.""",
        "ar": """Starting position:
Sit or stand with your back straight.

Steps:
1. Tilt your head to one side and hold for a bit.
2.Return your head to neutral position and hold for a bit.
3. Tilt your head to the other side and hold for a bit.
4. Return your head to neutral position yet again and hold for a bit.
5. Repeat.""",
      };
  String get i18n => localize(this, t);
}
