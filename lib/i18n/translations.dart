// Copyright (C) 2021 Miroslav Mazel
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

import 'package:i18n_extension/i18n_extension.dart';
extension Localization on String {
static var t = Translations("en") + 
{
"tr": """Başardınız!""",
"nl": """Goed gedaan!""",
"ru": """Молодец!""",
"en": """You did it!""",
"it": """Ce l'hai fatta!""",
"eu": """Lortu duzu!""",
"cs": """Dobrá práce!""",
"es": """¡Lo ha conseguido!""",
"nb": """Du klarte det!""",
} +
{
"tr": """Sonraki:""",
"nl": """Hierna:""",
"ru": """Далее:""",
"en": """Next up:""",
"it": """Preparati per:""",
"eu": """Hurrengoa:""",
"cs": """Další cvik:""",
"es": """A continuación:""",
"nb": """Neste:""",
} +
{
"tr": """Haydi başlayalım. Birinci: %s""",
"nl": """Tijd om aan de slag te gaan! Allereerst: %s""",
"ru": """Поехали! Сначала: %s""",
"en": """Let's go! First up: %s""",
"it": """Si parte! Primo esercizio: %s""",
"eu": """Goazen! Lehena: %s""",
"cs": """Pojďme na to! První cvik: %s""",
"es": """¡Vamos! Primer paso: %s""",
"nb": """La oss begynne. Først: %s""",
} +
{
"tr": """%d saniye kaldı""",
"nl": """Nog %d seconden te gaan""",
"ru": """ Осталось: %d""",
"en": """%d seconds left""",
"it": """Mancano %d secondi""",
"eu": """%d segundo geratzen dira""",
"cs": """Zbývá %d vteřin""",
"es": """%d segundos restante""",
"nb": """%d sekunder igjen""",
} +
{
"tr": """Mola zamanı!""",
"nl": """Tijd voor een pauze!""",
"ru": """Пауза!""",
"en": """Break!""",
"it": """Pausa!""",
"eu": """Atsedenaldia!""",
"cs": """Pauza!""",
"es": """¡Descanso!""",
"nb": """Pause!""",
} +
{
"tr": """Denetimler için dokunun""",
"nl": """Druk om bediening te tonen""",
"ru": """Нажмите для паузы""",
"en": """Tap for controls""",
"it": """Tocca per i controlli""",
"eu": """Sakatu kontroletarako""",
"cs": """Ťukněte pro ovládání""",
"es": """Tocar para controles""",
"nb": """Trykk for kontroller""",
} +
{
"tr": """Resim eksik""",
"nl": """Afbeelding ontbreekt""",
"ru": """Изображение отсутствует""",
"en": """Image missing""",
"it": """Immagine mancante""",
"eu": """Irudia falta da""",
"cs": """Chybí fotka""",
"es": """Imagen faltante""",
"nb": """Bilde mangler""",
} +
{
"tr": """Antrenman başlığı""",
"nl": """Naam van workout""",
"ru": """Название тренировки""",
"en": """Workout title""",
"it": """Titolo dell'esercizio""",
"eu": """Entrenamenduaren izenburua""",
"cs": """Název tréninku""",
"es": """Título del entrenamiento""",
"nb": """Treningsøkt-tittel""",
} +
{
"tr": """Kendi koçunuz olun!""",
"nl": """Coach jezelf!""",
"ru": """Ты сам себе тренер!""",
"en": """Be your own coach!""",
"it": """Sii l'allenatore di te stesso!""",
"eu": """Izan zure entrenatzaile!""",
"cs": """Buď vlastním trenérem!""",
"es": """¡Se su propio entrenador!""",
"nb": """Vær din egen trener.""",
} +
{
"tr": """Kendinizi en iyi hissettiren egzersizi tasarlayın""",
"nl": """Ontwerp dé workout die voor jou prettig voelt""",
"ru": """Создай тренировку, удобную для вас.""",
"en": """Design the workout that makes you feel the best""",
"it": """Progetta l'allenamento che ti fa sentire il migliore""",
"eu": """Diseinatu hoberen datorkizun entrenamendua""",
"cs": """Navrhni si takový trénink, po kterém se budeš cítit nejlépe""",
"es": """Diseñe el entrenamiento que le sentirá mejor""",
"nb": """Design treningsøkten som får deg til å føle deg best mulig""",
} +
{
"tr": """Tüm vücut""",
"nl": """Hele lichaam""",
"ru": """Все тело""",
"en": """Full body""",
"it": """Tutto il corpo""",
"eu": """Gorputz osoa""",
"cs": """Celé tělo""",
"es": """De cuerpo entero""",
"nb": """Hele kroppen""",
} +
{
"tr": """Bacaklar""",
"nl": """Benen""",
"ru": """Ноги""",
"en": """Legs""",
"it": """Gambe""",
"eu": """Hankak""",
"cs": """Nohy""",
"es": """Piernas""",
"nb": """Bein""",
} +
{
"tr": """Parlıyorsunuz!""",
"nl": """Je straalt!""",
"ru": """Вы сияете!""",
"en": """You're glowing!""",
"it": """Stai splendendo!""",
"eu": """Primeran zabiltza!""",
"cs": """Dobrá práce!""",
"es": """¡Está brillando!""",
"nb": """Du gløder!""",
} +
{
"tr": """Katkıda bulunun""",
"nl": """Deel je oefeningen met ons""",
"ru": """Поделиться упражнением""",
"en": """Contribute""",
"it": """Contribuisci a un esercizio""",
"eu": """Partekatu ariketa bat""",
"cs": """Přispěj nový cvik""",
"es": """Contribuir un ejercicio""",
"nb": """Bidra""",
} +
{
"tr": """Feeel, sizin gibi gönüllülerin egzersizler ve egzersiz fotoğrafları göndermesine güvenir. Gönderdiğiniz tüm fotoğraflar önce özel olarak işlenecek, ardından onay için size gönderilecek ve ancak daha sonra uygulamada yayınlanacaktır. Katkıda bulunduğunuz için teşekkürler!""",
"nl": """Feeel is afhankelijk van vrijwilligers zoals jij voor het verkrijgen van oefeningen met bijbehorende foto's. Je foto's worden anoniem aangepast voor gebruik in de app, dan aan je opgestuurd voor goedkeuring en pas dáárna toegevoegd aan de app. Alvast bedankt!""",
"ru": """Feeel полагается на таких людей, как вы, что бы показать упражнения с фотографиями в приложении. Любые фотографии, которые вы отправляете, сначала будут обработаны нами, затем отправлены вам на утверждение и только после этого добавят в приложение. Спасибо за помощь!""",
"en": """Feeel relies on volunteers like you to submit exercises and exercise photos. Any photos you submit will first be privately processed, then sent to you for approval, and only then released in the app. Thanks for contributing!""",
"it": """Feeel si affida a volontari come te che ci mandano esercizi e foto di esercizi. Tutte le foto inviate verranno prima elaborate privatamente, quindi ti verranno rinviate per l'approvazione e solo successivamente rilasciate nell'app. Grazie per contribuire!""",
"eu": """Feeel aplikazioak zu bezalako boluntarioek bidalitako ariketa eta ariketen argazkiekin elikatzen da. Bidaltzen dituzun argazkian pribatuki prozesatuko dira, eta zuri bueltan bidaliko zaizkizu onarpenerako, eta soilik orduan argitaratuko dira aplikazioan. Eskerrik asko laguntzeagatik!""",
"cs": """Feeel relies on volunteers like you to submit exercises and exercise photos. Any photos you submit will first be privately processed, then sent to you for approval, and only then released in the app. Thanks for contributing!""",
"es": """Feeel depende de voluntarios como usted para enviar ejercicios y fotografías de ellos. Las fotos que envíe primero se procesarán de forma privada, luego se le solicitará para su aprobación y solo se publicarán en la aplicación. ¡Gracias por contribuir!""",
"nb": """Feeel avhenger av frivillige som deg for innsendelse av øvelser og tilhørende bilder. Alle bilder du sender inn blir behandlet for personvern, og så sendt til deg for godkjennelse, for så å bli brukt i programmet. Takk for at du bidrar.""",
} +
{
"tr": """Egzersiz adı""",
"nl": """Naam van oefening""",
"ru": """Упражнение""",
"en": """Exercise name""",
"it": """Nome dell'esercizio""",
"eu": """Ariketaren izena""",
"cs": """Název cviku""",
"es": """Nombre del ejercicio""",
"nb": """Øvelsesnavn""",
} +
{
"tr": """Egzersiz nasıl yapılır (isteğe bağlı)""",
"nl": """Hoe voer je de oefening te worden uit? (optioneel)""",
"ru": """Как выполнить упражнение (необязательно)""",
"en": """How to perform exercise (optional)""",
"it": """Come svolgere l'esercizio (opzionale)""",
"eu": """Nola burutu ariketa (aukerakoa)""",
"cs": """Jak provést cvik (nepovinné)""",
"es": """Cómo se realiza el ejercicio (opcional)""",
"nb": """Hvordan utføre øvelse (valgfritt)""",
} +
{
"tr": """E-posta gönderilemedi""",
"nl": """De e-mail kan niet worden verstuurd""",
"ru": """Письмо не отправлено""",
"en": """Email could not be sent""",
"it": """L'email potrebbe non essere stata inviata""",
"eu": """Ezin izan da e-maila bidali""",
"cs": """E-mail se nepovedlo odeslat""",
"es": """Correo no podría ser enviado""",
"nb": """Kunne ikke sende e-post""",
} +
{
"tr": """Egzersiz önerisi: %s""",
"nl": """Oefeningbijdrage:%s""",
"ru": """Предложить упражнение: %s""",
"en": """Exercise proposal: %s""",
"it": """Proposta di esercizio: %s""",
"eu": """Ariketa proposamena: %s""",
"cs": """Návrh cviku: %s""",
"es": """Ejercicio propuesto: %s""",
"nb": """Øvelsesforslag: %s""",
} +
{
"tr": """Merhaba,

Bir egzersiz önerisi gönderiyorum. İşbu belge ile bunların hepsinin sadece kendi çalışmam olduğunu beyan ederim. Bu mesajı göndererek, gönderilen adın ve açıklamanın CC BY-SA lisansı ve uygulama mağazası istisnası ile AGPLv3 altında yayınlanmasını geri alınamaz şekilde kabul ediyorum. Ekteki resimlerin düşük çözünürlüklü çeşitlere dönüştürülmesine de izin veriyorum. İşlendikten sonra, onları CC BY-SA lisansı altında lisanslamaya istekli olup olmadığımı değerlendireceğim.

Egzersiz adı: %1s
Egzersiz adımları:
%2s""",
"nl": """Hallo,

Hierbij dien ik een voorstel in voor een oefening. Ik begrijp dat ik alleen mijn *eigen* werk mag indienen. Als ik dit bericht verstuur, ga ik onherroepelijk akkoord met het feit dat de naam en omschrijving van de oefening worden vrijgegeven onder de CC BY-SA- en GPLv3-licentie, met uitzondering van de appwinkel. Ik geef tevens toestemming om de bijgevoegde afbeelding(en) anoniem te verwerken. Daarna worden ze door mij geëvalueerd om ze al dan niet vrij te geven onder de CC BY-SA-licentie.

Naam van de oefening: %1s
Uitleg:
%2s""",
"ru": """Здравствуйте,

Я представляю свой вариант упражнения. Настоящим я заявляю, что все это только моя собственная работа. Отправляя это сообщение, я соглашаюсь на то, что представленное имя и описание упражнения будут опубликованы под лицензией CC BY-SA и AGPLv3 без лицензии магазина приложений. Я также даю разрешение на обработку прикрепленных изображений в низкополигональные варианты. Я также разрешаю обработку прилагаемых изображений и рассмотрю и оценю возможность их публикации под лицензией CC BY-SA. 

Название упражнения: %1s
Шаги упражнений:
%2s""",
"en": """Hello,

I'm sending a proposal of an exercise. I hereby declare that all of it is my own work only. By sending this message, I irrevocably agree to have the submitted name and description released under a CC BY-SA license and an AGPLv3 with an app store exception license. I also give permission to process the attached image(s) into low-poly variants. After they are processed, I will evaluate whether I am willing to license them under the CC BY-SA license.

Exercise name: %1s
Exercise steps:
%2s""",
"it": """Ciao

Sto inviando una proposta di esercizio. Con la presente dichiaro che tutto è solo opera mia. Con l'invio di questo messaggio, acconsento irrevocabilmente a far rilasciare il nome e la descrizione forniti secondo una licenza CC BY-SA e una AGPLv3 con una licenza di eccezione dell'app store. Inoltre do il permesso di elaborare l'immagine o le immagini allegate in varianti low-poly. Dopo che saranno state elaborate, valuterò se sono disposto a concederle in licenza secondo la licenza CC BY-SA.

Nome dell'esercizio: %1s
Passaggi: %2s""",
"eu": """Kaixo,

Ariketa proposamen bat bidaltzen du. Honen bidez nik neuk egindako lana dela adierazten dut- Mezu hau bidaliz, izena eta azalpena CC BY-SA eta AGPLv3 lizentzizentziekin, app store salbuespena barne, argitaratzea onartzen dut, atzera botatzeko aukera gabe. Erantsitako irudiak prozesatzeko baimena ematen dut ere, eta CC BY-SA lizentziarekin argitaratzea onartzea aztertuko dut.

Ariketaren izena: %1s
Ariketaren urratsak:
%2s""",
"cs": """Hello,

I'm sending a proposal of an exercise. I hereby declare that all of it is my own work only. By sending this message, I irrevocably agree to have the submitted name and description released under a CC BY-SA license and an AGPLv3 with an app store exception license. I also give permission to process the attached image(s) into low-poly variants. After they are processed, I will evaluate whether I am willing to license them under the CC BY-SA license.

Exercise name: %1s
Exercise steps:
%2s""",
"es": """Hola,

Estoy enviando una propuesta de un ejercicio. Por lo presente declaro que lo hice por cuenta propia. Al enviar este mensaje, de forma irreversible acepto que el nombre y la descripción presentados se publiquen bajo una licencia CC BY-SA y la licencia AGPLv3 con excepción de la tienda de aplicaciones. También doy consentimiento para procesar la(s) imágen(es) adjunta(s) en variante(s) low-poly. Después de que se procesen, evaluaré si estoy dispuesto a licenciarlos bajo la licencia CC BY-SA.

Nombre del ejercicio: %1s
Pasos del ejercicio:
%2s""",
"nb": """Hei,

Jeg sender deg et forslag til en øvelse. Jeg gjør oppmerksom på at dette i sin helhet er mitt arbeide. Ved å sende denne meldinger, samtykker jeg til å ha innsendt navn og beskrivelse utgitt under en CC BY-SA-lisens, og en AGPLv3 med programbutikk-unntak. Jeg gir også tilgang til å behandle vedlagte bilde(r) i lavoppløsningsvarianter. Etter at de er behandlet, vil jeg vurdere hvorvidt jeg ønsker å gi dem ut under CC BY-SA-lisens.

Øvelsesnavn: %1s
Øvelsessteg:
%2s""",
} +
{
"tr": """Ayarlar""",
"nl": """Instellingen""",
"ru": """Настройки""",
"en": """Settings""",
"it": """Impostazioni""",
"eu": """Ezarpenak""",
"cs": """Nastavení""",
"es": """Ajustes""",
"nb": """Innstillinger""",
} +
{
"tr": """Lütfen bir antrenman başlığı belirtin""",
"nl": """Geef de workout een naam""",
"ru": """Укажите название тренировки""",
"en": """Please specify a workout title""",
"it": """Indica un titolo all'allenamento""",
"eu": """Zehaztu entrenamenduaren izenburua""",
"cs": """Prosím poskytněte název tréninku""",
"es": """Por favor especifica el título del entrenamiento""",
"nb": """Angi en treningsøkt-tittel""",
} +
{
"tr": """Lütfen en az 1 egzersiz ekleyin""",
"nl": """Voeg minimaal 1 oefening toe""",
"ru": """Добавьте хотя бы 1 упражнение""",
"en": """Please add at least 1 exercise""",
"it": """Aggiungi almeno un esercizio""",
"eu": """Gehitu ariketa 1 gutxienez""",
"cs": """Prosím přidejte alespoň 1 cvik""",
"es": """Por favor añade al menos 1 ejercicio""",
"nb": """Legg til minst én øvelse""",
} +
{
"tr": """Süre""",
"nl": """Duur""",
"ru": """Продолжительность""",
"en": """Duration""",
"it": """Durata""",
"eu": """Iraupena""",
"cs": """Délka""",
"es": """Duración""",
"nb": """Varighet""",
} +
{
"tr": """Egzersiz süresi""",
"nl": """Duur van oefening""",
"ru": """Продолжительность упражнения""",
"en": """Exercise duration""",
"it": """Durata esercizio""",
"eu": """Ariketaren iraupena""",
"cs": """Délka cviku""",
"es": """Duración del ejercicio""",
"nb": """Øvelsesvarighet""",
} +
{
"tr": """Mola süresi""",
"nl": """Duur van pauze""",
"ru": """Длительность перерыва""",
"en": """Break duration""",
"it": """Durata della pausa""",
"eu": """Atsedenaldiaren iraupena""",
"cs": """Délka přestávky""",
"es": """Duración del descanso""",
"nb": """Pauselengde""",
} +
{
"tr": """Özel""",
"nl": """Aangepast""",
"ru": """Изменить длительность""",
"en": """Custom""",
"it": """Personalizza""",
"eu": """Pertsonalizatua""",
"cs": """Vlastní""",
"es": """Personalizado""",
"nb": """Tilpasset""",
} +
{
"tr": """Sayısal olmayan""",
"nl": """Niet-numeriek""",
"ru": """Нечисловой""",
"en": """Non-numeric""",
"it": """Non-numerico""",
"eu": """Ez-zenbakizkoa""",
"cs": """Není číslo""",
"es": """No numérico""",
"nb": """Ikke tallbasert""",
} +
{
"tr": """Pozitif olmayan""",
"nl": """Niet-positief""",
"ru": """Отрицательный""",
"en": """Nonpositive""",
"it": """Non positivo""",
"eu": """Ez positiboa""",
"cs": """Není kladné""",
"es": """No positivo""",
"nb": """Ikke positiv""",
} +
{
"tr": """Günlük bildirim""",
"nl": """Dagelijkse herinnering""",
"ru": """Ежедневное уведомление""",
"en": """Daily notification""",
"it": """Notifica giornaliera""",
"eu": """Eguneroko jakinarazpena""",
"cs": """Denní upozornění""",
"es": """Notificaciones diarias""",
"nb": """Daglig merknad""",
} +
{
"tr": """Antrenman yapmak için günlük bir hatırlatma""",
"nl": """Wordt dagelijks herinnerd om een workout te doen""",
"ru": """Ежедневное напоминание о тренировках""",
"en": """A daily reminder to work out""",
"it": """Un promemoria quotidiano per allenarti""",
"eu": """Eguneroko ariketarako oroigarria""",
"cs": """Denní připomenutí jít cvičit""",
"es": """Un recordatorio para entrenar""",
"nb": """En daglig påminnelse om å trene""",
} +
{
"tr": """Antrenman kıyafetlerini giyme zamanı!""",
"nl": """Tijd om je sportkleding aan te trekken!""",
"ru": """Пора надеть спортивную одежду!""",
"en": """Time to put on workout clothes!""",
"it": """È ora di indossare abiti da allenamento!""",
"eu": """Ariketarako janzteko unea!""",
"cs": """Čas obléknout cvičební úbor!""",
"es": """¡Tiempo para llevar ropa de entrenamiento!""",
"nb": """På tide å få på seg treningstøyet!""",
} +
{
"tr": """Taze ve zinde hissetmek sadece birkaç dakikanızı alır""",
"nl": """Het kost slechts een paar minuten van je tijd om je weer fris en fruitig te voelen""",
"ru": """несколько минут, и вы почувствуете себя свежим и подтянутым""",
"en": """It takes just a few minutes to feel fresh and fit""",
"it": """Bastano pochi minuti per sentirsi freschi e in forma""",
"eu": """Minutu gutxi batzuk nahikoa dira berritua eta indartsu sentitzeko""",
"cs": """Stačí jen pár minut, abyste se cítil/a svěží a fit""",
"es": """Este toma solo unos minutos para refrescarse y estar en forma""",
"nb": """Det tar kun et par minutter å få godfølelsen""",
} +
{
"tr": """Bana her gün egzersiz yapmayı hatırlat""",
"nl": """Dagelijkse herinnering sturen""",
"ru": """Отправлять ежедневное напоминание""",
"en": """Remind me to exercise daily""",
"it": """Ricordami di allenarmi tutti i giorni""",
"eu": """Gogoratu nazazu eguneroko ariketa""",
"cs": """Připomínat, abych cvičil/a denně""",
"es": """Recuérdeme hacer ejercicio diario""",
"nb": """Minn meg på å trene hver dag""",
} +
{
"tr": """Kamera izni olmadan fotoğraf çekilemez""",
"nl": """Zonder cameramachtiging kunnen er geen foto's worden gemaakt""",
"ru": """Нужно разрешение на использование камеры""",
"en": """Can't take photos without camera permission""",
"it": """Non è possibile scattare foto senza il permesso della fotocamera""",
"eu": """Ezin dira argazkiak atera kamera baimenik gabe""",
"cs": """Nelze fotografovat bez povolení fotoaparátu""",
"es": """No se puede tomar fotos sin el permiso de cámara""",
"nb": """Kan ikke ta bilder uten kameratilgang""",
} +
{
"tr": """Bildirim zamanı""",
"nl": """Tijdstip""",
"ru": """Повтор уведомления""",
"en": """Notification time""",
"it": """Tempo di notifica""",
"eu": """Jakinarazpen ordua""",
"cs": """Čas upozornění""",
"es": """Hora de notificación""",
"nb": """Merknadstid""",
} +
{
"tr": """Önce bir egzersiz ekleyin""",
"nl": """Voeg eerst een oefening toe""",
"ru": """Сначала добавьте упражнение""",
"en": """Add an exercise first""",
"it": """Prima aggiungi un esercizio""",
"eu": """Gehitu ariketa lehenbizi""",
"cs": """Nejprve musíte přidat cvičení""",
"es": """Añadir un ejercicio primero""",
"nb": """Legg til en øvelse først""",
} +
{
"tr": """Feeel hakkında""",
"nl": """Over Feeel""",
"ru": """O Feeel""",
"en": """About Feeel""",
"it": """A proposito di Feeel""",
"eu": """Feeel-i buruz""",
"nb": """Om Feeel""",
"cs": """O Feeel""",
"es": """Sobre Feeel""",
} +
{
"tr": """Gizliliğinize saygı duyan açık kaynaklı bir evde antrenman uygulaması""",
"nl": """An open-source home workout app that respects your privacy""",
"de": """Eine open-source Workout-App für zuhause, die deine Privatsphäre respektiert.""",
"ru": """An open-source home workout app that respects your privacy""",
"en": """An open-source home workout app that respects your privacy""",
"it": """An open-source home workout app that respects your privacy""",
"fr": """Une application d’exercice à domicile à code source ouvert qui respecte votre vie privée""",
"eu": """An open-source home workout app that respects your privacy""",
"nb": """Et gemenhetslig fritt treningsprogram som tar hensyn til ditt personvern""",
"cs": """An open-source home workout app that respects your privacy""",
"es": """An open-source home workout app that respects your privacy""",
} +
{
"tr": """Antrenmanı başlat""",
"nl": """Workout starten""",
"ru": """Начать тренировку""",
"en": """Start workout""",
"it": """Inizia l'allenamento""",
"eu": """Hasi entrenamendua""",
"cs": """Spustit trénink""",
"es": """Iniciar entrenamiento""",
"nb": """Start treningsøkt""",
} +
{
"tr": """Antrenmanı devam ettir""",
"nl": """Workout hervatten""",
"ru": """Продолжить тренировку""",
"en": """Resume workout""",
"it": """Riprendi l'allenamento""",
"eu": """Berrekin entrenamendua""",
"cs": """Pokračovat v tréninku""",
"es": """Continuar entrenamiento""",
"nb": """Fortsett treningsøkt""",
} +
{
"tr": """Önceki egzersiz""",
"nl": """Vorige oefening""",
"ru": """Предыдущее упражнение""",
"en": """Previous exercise""",
"it": """Esercizio precedente""",
"eu": """Aurreko ariketa""",
"cs": """Předchozí cvik""",
"es": """Ejercicio anterior""",
"nb": """Forrige øvelse""",
} +
{
"tr": """Sonraki egzersiz""",
"nl": """Volgende oefening""",
"ru": """Следующее упражнение""",
"en": """Next exercise""",
"it": """Esercizio successivo""",
"eu": """Hurrengo ariketa""",
"cs": """Další cvik""",
"es": """Ejercicio siguiente""",
"nb": """Neste øvelse""",
} +
{
"tr": """Egzersiz ekle""",
"nl": """Oefeningen toevoegen""",
"ru": """Добавить упражнение""",
"en": """Add exercises""",
"it": """Aggiungi esercizi""",
"eu": """Gehitu ariketak""",
"cs": """Přidat cviky""",
"es": """Añadir ejercicios""",
"nb": """Legg til øvelser""",
} +
{
"tr": """Düzenle""",
"nl": """Aanpassen""",
"ru": """Правка""",
"en": """Edit""",
"it": """Modifica""",
"eu": """Editatu""",
"cs": """Upravit""",
"es": """Editar""",
"nb": """Rediger""",
} +
{
"tr": """Sil""",
"nl": """Verwijderen""",
"ru": """Удалить""",
"en": """Delete""",
"it": """Elimina""",
"eu": """Ezabatu""",
"cs": """Odstranit""",
"es": """Borrar""",
"nb": """Slett""",
} +
{
"tr": """Kopyasını yapmak""",
"nl": """Een afschrift maken""",
"ru": """Дублировать""",
"en": """Duplicate""",
"it": """Duplicare""",
"eu": """Bikoiztu""",
"nb": """Duplisere""",
"cs": """Duplikovat""",
"es": """Duplicar""",
} +
{
"tr": """Bitti""",
"nl": """Klaar""",
"ru": """Готово""",
"en": """Done""",
"it": """Fatto""",
"eu": """Egina""",
"cs": """Hotovo""",
"es": """Hecho""",
"nb": """Ferdig""",
} +
{
"tr": """Daha fazla bilgi""",
"nl": """Meer informatie""",
"ru": """Подробнее""",
"en": """More info""",
"it": """Maggiori info""",
"eu": """Informazio gehiago""",
"cs": """Více info""",
"es": """Más info""",
"nb": """Mer info""",
} +
{
"tr": """Özel antrenman oluştur""",
"nl": """Eigen workout samenstellen""",
"ru": """Создать свое упражнение""",
"en": """Create custom workout""",
"it": """Crea un allenamento personalizzato""",
"eu": """Sortu entrenamendu pertsonala""",
"cs": """Vytvořit vlastní trénink""",
"es": """Crear entrenamiento personalizado""",
"nb": """Opprett tilpasset treningsøkt""",
} +
{
"tr": """Özel egzersiz öner""",
"nl": """Deel je eigen workout met ons""",
"ru": """Предложить свое упражнение""",
"en": """Propose custom exercise""",
"it": """Proponi un esercizio personalizzato""",
"eu": """Proposatu ariketa pertsonalizatua""",
"cs": """Navrhnout vlastní cvik""",
"es": """Proponer ejercicio personalizado""",
"nb": """Foreslå tilpasset øvelse""",
} +
{
"tr": """E-posta ile gönder""",
"nl": """Versturen via e-mail""",
"ru": """Отправить письмо""",
"en": """Submit via email""",
"it": """Invia via email""",
"eu": """Bidali e-mail bidez""",
"cs": """Odeslat e-mailem""",
"es": """Enviar por correo""",
"nb": """Send inn via e-post""",
} +
{
"tr": """Galeriden fotoğraf ekle""",
"nl": """Foto toevoegen uit galerij""",
"ru": """Прикрепить фотографию""",
"en": """Add photo from gallery""",
"it": """Aggiungi foto dalla Galleria""",
"eu": """Gehitu argazkia galeriatik""",
"cs": """Přidat fotku z galerie""",
"es": """Añadir foto desde galería""",
"nb": """Legg til bilde fra galleri""",
} +
{
"tr": """Fotoğraf çek""",
"nl": """Foto maken""",
"ru": """Сфотографировать""",
"en": """Take a photo""",
"it": """Scatta una foto""",
"eu": """Atera argazkia""",
"cs": """Vyfotit cvik""",
"es": """Tomar una foto""",
"nb": """Ta et bilde""",
} +
{
"tr": """Fotoğraf(lar)ınıza bir bağlantı ekleyin""",
"nl": """Voeg een link toe naar je foto('s)""",
"ru": """Добавить ссылку на фотографии""",
"en": """Add a link to your photo(s)""",
"it": """Aggiungi un link alla tua(e) foto""",
"eu": """Gehitu esteka zure argazkietara""",
"cs": """Přidat odkaz k fotce/fotkám""",
"es": """Añadir un enlace a su(s) foto(s)""",
"nb": """Legg til en lenke for alle bilder""",
} +
{
"tr": """Konuşma yerine sesleri kullan""",
"nl": """Geluiden afspelen in plaats van oefening voor te lezen""",
"ru": """Использовать сигналы вместо TTS""",
"en": """Use sounds instead of speech""",
"it": """Usa suoni invece del parlato""",
"eu": """Erabili soinuak hizketaren ordez""",
"cs": """Používat zvuky namísto mluveného slova""",
"es": """Usar sonidos en lugar del habla""",
"nb": """Bruk lyder istedenfor tale""",
} +
{
"tr": """Zamanlamayı ayarla""",
"nl": """Timing aanpassen""",
"ru": """Отрегулировать время""",
"en": """Adjust timing""",
"it": """Regola i tempi""",
"eu": """Doitu denbora""",
"cs": """Upravit časování""",
"es": """Ajustar ritmo""",
"nb": """Juster rytme""",
} +
{
"tr": """Bilimsel 7 dakikalık antrenman""",
"nl": """Wetenschappelijk bewezen 7-minutenworkout""",
"ru": """7 минут тренировки""",
"en": """Scientific 7 minute workout""",
"it": """Allenamento scientifico di 7 minuti""",
"eu": """7 minututako entrenamendu zientifikoa""",
"cs": """Vědecký sedmiminutový trénink""",
"es": """Entrenamiento científico de 7 minutos""",
"nb": """Vitenskapelig 7-minutters treningsøkt""",
} +
{
"tr": """Bacak antrenmanı""",
"nl": """Beenworkout""",
"ru": """Тренировка ног""",
"en": """Leg workout""",
"it": """Allenamento delle gambe""",
"eu": """Hanketarako entrenamendua""",
"cs": """Trénink nohou""",
"es": """Entrenamiento de piernas""",
"nb": """Treningsøkt for bein""",
} +
{
"tr": """Jack zıplama""",
"nl": """Klapsprongen""",
"ru": """Прыжки""",
"en": """Jumping jacks""",
"it": """Jumping jacks""",
"eu": """Jumping jacks""",
"cs": """Skákací panák""",
"es": """Polichilenas""",
"nb": """Hoppende snøengel""",
} +
{
"tr": """1. Ayaklar bir arada ve kollar yanlarda olacak şekilde ayakta durun
2. Bacaklar geniş açılacak ve eller baş üzerinde birbirine değecek şekilde zıplayın
3. Tekrarlayın""",
"nl": """1. Zet je voeten tegen elkaar en houdt je armen gestrekt naast je lichaam
2. Spring dusdanig zodat je je benen spreidt en je handen boven je hoofd aantikt
3. Herhaal""",
"ru": """1.  Встаньте прямо, поставить ноги на ширине плеч, а руки опустить.
2. Во время прыжка ноги разводятся в сторону, а руки поднимаются над головой до хлопка ладонями.
3. Вернуться в исходное положение.
4. Повторить.""",
"en": """1. Stand with feet together and arms at the sides
2. Jump to a position with the legs spread wide and the hands touching overhead
3. Repeat""",
"it": """1. Stai in piedi, a piedi uniti e con le braccia lunghi i fianchi, ginocchia e gomiti leggermente piegati
2. Fai un piccolo salto, nel mentre divarica le gambe alla larghezza delle spalle e porta le braccia sopra la testa fino a toccarsi
3. Con un altro salto torna in posizione 1
4. Ripeti""",
"eu": """1. Jarri tente, oinak elkarrekin eta besoak alboetan
2. Saltatu hankan zabalduz eta eskuak buruaren gainetik elkartuz
3. Errepikatu""",
"cs": """1. Stůj vzpřímeně, nohy těsně vedle sebe a ruce podél těla
2. Skoč na místě a roztáhni přitom nohy bez prohnutí kolen a rukama tleskni nad hlavou
3. Skoč zpět a neustále opakuj""",
"es": """1. Párese con los pies juntos y los brazos a los lados
2. Salte a una posición con las piernas abiertas y las manos tocandose por encima de la cabeza
3. Repita""",
"nb": """1. Stå med føttene sammen og armene på sidene.
2. Hopp utover med føttene, og la hendene røre ved hverandre over hodet.
3. Gjenta""",
} +
{
"tr": """Duvara yaslanarak oturma""",
"nl": """Muurzitten""",
"ru": """Стенка""",
"en": """Wall sit""",
"it": """Seduta a muro""",
"eu": """Horman eseri""",
"cs": """Sed u stěny""",
"es": """Asiento en pared""",
"nb": """Sitt mot vegg""",
} +
{
"tr": """1. Öne bakacak şekilde duvara yaslanın, ayaklar yere sıkıca oturtulmuş, omuz genişliğinde açılmış ve duvardan yaklaşık 60 cm uzakta olsun
2. Bacaklar dik açı yapana kadar sırtınızı bastırarak duvardan aşağı kaydırın. Dizler doğrudan ayak bileklerinin üzerinde olmalıdır
Kuadriseps ağrısı normaldir, dizde veya diz kapağında ağrı hissederseniz durun""",
"nl": """1. Leun tegen de muur en zet je voeten stevig op de grond; houd je schouders los en 60 cm van de muur verwijderd.
2. Zak naar beneden en zorg dat je rug tegen de muur blijft totdat je knieën zich direct boven de enkels bevinden.
Pijn in je dijbeenspieren is normaal. Stop als je pijn in je knie of knieholte voelt.""",
"ru": """1. Станьте спиной к стене, прислонитесь. Ноги подайте чуть вперед, расставив их на ширине плеч. Носки разверните в разные стороны.
2. Плавно скользите вниз по стене, держа спину прижатой к ней, пока ноги не окажутся под прямым углом.
Боль в четырехглавой мышце нормальная, прекратите, если чувствуете боль в колене или коленной чашечке""",
"en": """1. Lean against the wall, facing forward and with feet planted firmly on the ground, shoulders width apart and about 2 feet away from the wall
2. Slide down the wall, keeping the back pressed to it, until legs are at a right angle. The knees should be directly above the ankles
Quadricep pain is normal, stop if feeling pain in the knee or kneecap""",
"it": """1. Appoggiati al muro, rivolto in avanti e con i piedi ben piantati sul terreno, le spalle divaricate e a circa 2 piedi di distanza dal muro
2. Scivola giù lungo il muro, tenendo la schiena premuta contro di esso, fino a quando le gambe sono ad angolo retto. Le ginocchia dovrebbero essere direttamente sopra le caviglie
Il dolore al quadricipite è normale, interrompi se avverti dolore al ginocchio o alla rotula""",
"eu": """1. Jarri hormaren kontra, kanpora begira, oinen platak lurrean tinko, besaburuen altuerara zabalduta eta hormatik gutxi gora behera 60 zentimetrotara

2. Irristatu hormatik behera, bizkarra hormaren kontra mantenduz, hankak angelu zuzenean dauden arte. Belaunak zuzenean orkatilen gainean egon beharko lukete.
Koadrizepsean mina arrunta da, baina gelditu mina belaunean edo errotulan nabarituz gero.""",
"cs": """1. Opři svá záda o stěnu s nohama pevně na zemi, od sebe vzdálenými asi o šířku ramen a přibližně ??????????? cm od stěny.
2. Sesuňte záda podél zdi tak, abyste skončili s koleny pokrčenými v pravém úhlu. Kolena by měly být přímo nad kotníky.
Bolest v ??????????????? je běžná. Přestaňte, pokud cítíte bolest v koleni.""",
"es": """1. Apóyese en la pared, mirando hacia adelante y con los pies plantados firmemente en el suelo, sus hombros deben separarse y estar a 50 centímetros de la pared
2. Deslízate por la pared, manteniendo la espalda presionada a ella, hasta que las piernas estén en ángulo recto. Las rodillas deben estar directamente sobre los tobillos
El dolor en el cuádriceps es normal, deténgase si siente dolor en la rodilla o en la rótula""",
"nb": """1. Len deg mot en vegg, med hodet fra veggen og med godt feste for føttene i skulderbred avstand fra hverandre, og et stykke ut fra veggen
2. Gli ned veggen, mens du har ryggen mot den, til føttene er i rett vinkel. Knærne skal være rett over anklene.
At det gjør vondt i kvadriseps er normalt, stopp hvis du får vondt i kneet eller kneskåla""",
} +
{
"tr": """Şınav""",
"nl": """Opdrukken""",
"ru": """Отжимания""",
"en": """Push-ups""",
"it": """Flessioni""",
"eu": """Flexioak""",
"cs": """Kliky""",
"es": """Lagartijas""",
"nb": """Armhevinger""",
} +
{
"tr": """1. Karnınız üzerine uzanın
2. Ellerinizi kulaklarınızın yakınına yerleştirin
3. Sırtı düz tutarak kollar düz olana kadar karnınızı yukarı kaldırmak için kollarınızı kullanın
4. Göğüs neredeyse yere değene kadar kolları bükün, sırtın düz olduğundan emin olun
5. 3. adımdan itibaren tekrarlayın""",
"nl": """1. Ga op je buik liggen.
2. Plaats je handen in de buurt van je oren.
3. Gebruik je armen om je buik omhoog te duwen totdat je armen gestrekt zijn - houd je rug recht.
4. Buig je armen totdat je borstkas bijna de grond raakt - houd je rug recht.
5. Herhaal stap 3 en 4.""",
"ru": """1. Лечь на горизонтальную ровную поверхность.
2. Руки при этом должны быть на ширине плеч.
3. Разогните руки, пока руки и спина не выпрямятся.
4. Согните руки, пока грудь почти не коснется земли, убедившись, что спина выпрямлена. 
5. Повторите с шага 3""",
"en": """1. Lie down on your stomach
2. Place your hands near your ears
3. Use your arms to lift your stomach up until the arms are straight, keeping the back straight
4. Bend arms until chest almost touches the ground, making sure the back is straight
5. Repeat from step 3""",
"it": """1. Sdraiati a pancia in giù
2. Metti le mani vicino alle orecchie
3. Usa le braccia per sollevare il torace fino a quando le braccia sono dritte, mantenendo la schiena dritta
4. Piega le braccia fino a quando il torace tocca quasi il suolo, assicurandoti che la schiena sia dritta
5. Ripeti dal passaggio 3""",
"eu": """1. Etzan buruz behera
2. Jarri eskuak lurrean belarrietatik hurbil
3. erabili besoak zure sabela lurretik altxatzeko besoak zuzen jarri arte, bizkarra beti zuzen mantenduz
4. Tolestu besoak paparrak ia lurra ukitu arte, ziurtatu bizkarra zuzen mantentzen duzula
5. Errepikatu 3. puntutik""",
"cs": """1. Lehni si na břicho, s dlaněmi vedle hlavy.
2. Opři se o ruce a zvedni svůj trup dokud nebudeš mít ruce napřímo. Ujisti se, že máš rovná záda.
3. Ohni se v loktech, dokud se hrudí skoro nedotkneš země. Záda by měla být stále rovná.
4. Opakuj od kroku 2""",
"es": """1. Acuéstese boca abajo.
2. Ponga sus manos cerca de sus orejas.
3. Usa los brazos para levantar el estómago hasta que los brazos estén rectos, manteniendo la espalda recta
4. Doble los brazos hasta que el pecho casi toque el suelo, asegurándose de que la espalda esté recta.
5. Repita desde el paso 3.""",
"nb": """1. Ligg på magen
2. Plasser hendene nært ørene
3. Bruk armene til å lefte magen opp til armene er rette, mens du holder ryggen rett
4. Bøy armene til brystet nesten rører bakken, og forsikre deg om at ryggen fremdeles er ret
5. Gjenta fra steg 3""",
} +
{
"tr": """Yarım mekik""",
"nl": """Spiercrunches""",
"ru": """Пресс""",
"en": """Crunches""",
"it": """Addominali""",
"eu": """Abdominal karraskak""",
"cs": """Sedolehy""",
"es": """Abdominales""",
"nb": """Bukbøy""",
} +
{
"tr": """1. Dizlerinizi bükerek yere sırtüstü yatın.
2. Omuzları leğen kemiğine doğru bükün. Eller boynun arkasında veya yanında olabilir ya da göğsün üzerinden geçebilir.
3. Tekrarlayın""",
"nl": """1. Ga op je rug liggen en buig je knieën.
2. Draai je schouders richting je bekken. Houd je handen achter of naast je nek of kruislings over je borstkas.
3. Herhaal.""",
"ru": """1. Лягте лицом вверх на пол, согнув колени.
2. Поднимите корпус в направлении согнутых колен. Уберите руки под затылок или скрестите на груди;
3. Повторить.""",
"en": """1. Lie down face up on the floor with knees bent.
2. Curl the shoulders towards the pelvis. The hands can be behind or beside the neck or crossed over the chest.
3. Repeat""",
"it": """1. Sdraiati a pancia in su sul pavimento con le ginocchia piegate.
2. Solleva il busto verso il bacino, a 30° / 40° dal suolo. Le mani possono essere dietro o accanto al collo o incrociate sul petto.
3. Ripeti""",
"eu": """1. Etzan buruz gora lurrean belaunak tolestuta.
2. Kizkurtu besaburuak pelbiserantz. Eskuak lepoaren atzean edo ondoan egon daitezke, edo bularrean gurutzatuta.
3. Errepikatu""",
"cs": """1. Lehni si na zem hlavou nahoru s pokrčenými koleny.
Zvedni záda tak, aby se tvá ramena co nejblíže přiblížily ke kolenům. Plosky nohou včetně prstů by měly zůstat na zemi. Ruce mohou být za hlavou nebo přeložené v kříž na hrudi.
3. Opakuj""",
"es": """1. Acuéstese boca arriba en el suelo con las rodillas dobladas
2. Flexione los hombros hacia la pelvis. Las manos pueden estar detrás o al costado del cuello o cruzadas sobre el pecho
3. Repita
""",
"nb": """1. Legg deg med ansiktet ned mot gulvet og med knærne bøyd
2. Bøy skuldrene mot bekkenet. Hendene kan være bak eller ved siden av nakken, eller i kryss over brystet
3. Gjenta""",
} +
{
"tr": """Adım atma""",
"nl": """Opstappen""",
"ru": """Степ-ап""",
"en": """Step-ups""",
"it": """Step""",
"eu": """Eskailerak""",
"cs": """Výšlapy""",
"es": """Subida a peldaño""",
"nb": """Steg""",
} +
{
"tr": """1. Sandalyeye dönük şekilde durun
2. Sandalyeye çıkın
3. Sandalyeden inin
4. Tekrarlayın""",
"nl": """1. Ga voor een stoel staan.
2. Ga op de stoel staan.
3. Ga van de stoel af.
4. Herhaal.""",
"ru": """1. Встаньте перед стулом
2. Встаньте на стул
3. Слезьте со стула
4. Повторите
 """,
"en": """1. Stand facing a chair
2. Step up onto the chair
3. Step off the chair
4. Repeat""",
"it": """1. Stai di fronte a un gradino
2. Sali sulla sedia
3. Scendi dalla sedia
4. Ripeti
5. A metà esercizio cambia gamba""",
"eu": """1. Jarri tente aulki baten aurrean
2. Igo aulkira
3. Jaitsi aulkitik
4. Errepikatu""",
"cs": """1. Stůj čelem k židli.
2. Stoupni si na židli
3. Sestup dolu ze židle
4. Opakuj""",
"es": """1. Párese frente a una silla
2. Súbase a la silla
3. Bájese de la silla
4. Repita""",
"nb": """1. Stå med ansiktet mot en stol
2. Tre opp på stolen
3. Tre ned fra stolen
4. Gjenta""",
} +
{
"tr": """Çömelme""",
"nl": """Hurkzitten""",
"ru": """Приседания""",
"en": """Squats""",
"it": """Squats (Stacchi)""",
"eu": """Makurtzeak""",
"cs": """Dřepy""",
"es": """Sentadillas""",
"nb": """Knebøy""",
} +
{
"tr": """1. Ayaklar omuz genişliğinde açık durun
2. Kalçayı geriye doğru itin ve gövdeyi aşağı indirmek için dizleri ve kalçayı bükün
3. Tekrarlayın""",
"nl": """1. Ga staan en zet je voeten zó dat ze in verhouding staan met je schouders.
2. Draai je heupen naar achteren en buig je knieën en heupen om je bovenlichaam naar beneden te duwen.
3. Herhaal.""",
"ru": """1. Встаньте так, чтобы ноги были на ширине плеч
2. Отведите бедра назад и согните колени, чтобы опустить туловище
3. Повторить""",
"en": """1. Stand with feet shoulder-width apart
2. Move the hips back and bend the knees and hips to lower the torso
3. Repeat""",
"it": """1. Stai con i piedi alla larghezza delle spalle
2. Sposta i fianchi indietro e piega le ginocchia e i fianchi per abbassare il busto
3. Ripeti""",
"eu": """1. Jarri tente oinak besaburuen altueran
2. Bota aldaka atzera eta tolestu belaunak eta aldaka enborra jaisteko
3. Errepikatu""",
"cs": """1. Stůj s nohama vzdálenými o šířku ramen.
2. Posuň kyčel dozadu a pokrč kolena, dokud nebudeš mít stehna paralelně se zemí.
3. Opakuj""",
"es": """1. Levántese con los pies separados al ancho de hombros
2. Mueva las caderas hacia atrás y doble las rodillas y caderas para bajar el torso
3. Repita
""",
"nb": """1. Stå med føttene i skulderbreddes avstand
2. Flytt hoftene frem og bøy knærne og hoftene for å senke overkroppen
3. Gjenta""",
} +
{
"tr": """Sandalye ile dalma""",
"nl": """Stoelzakken""",
"ru": """Обратное отжимание от скамьи""",
"en": """Chair dips""",
"it": """Piegamenti sulla sedia""",
"eu": """Aulki sartu-irtenak""",
"cs": """Dipy na židli""",
"es": """Bajadas en silla""",
"nb": """Stolpress""",
} +
{
"tr": """1. Sırt düz, eller ön kısmını tutacak şekilde bir sandalyenin ön tarafına oturun
2. Sandalyenin kenarını tutmaya devam ederek kollarınızı uzatın, kalçanızı kaldırın ve sandalyeden birkaç cm uzakta olacak şekilde hafifçe öne doğru yürüyün.
3. Sırtınızı düz tutarak, kollar dik açıda olana kadar vücudunuzu yavaşça indirin.
4. Kollarınızı uzatarak vücudunuzu tekrar önceki pozisyonuna kaldırın
5. 3. ve 4. adımları tekrarlayın""",
"nl": """1. Ga op het puntje van een stoel zitten, houd je rug recht en houd de punt vast met je handen.
2. Blijf vasthouden, strek je armen, duw je kont
omhoog en loop een stukje naar voren.
3. Duw je lichaam langzaam omlaag, houd je rug recht en zorg dat je armen in een rechte hoek staan.
4. Duw je lichaam weer omhoog, naar de vorige positie, en strek je armen.
5. Herhaal stap 3 en 4.""",
"ru": """1. Сядьте на передний край стула, спина прямая, руки держатся за передний край
2. Все еще держась за край стула, вытянув руки, поднимите ягодицы и слегка подвиньтесь вперед, чтобы они оказались в нескольких сантиметрах от стула.
3. Медленно опустите тело, держа спину прямо, пока руки не окажутся под прямым углом
4. Снова поднимите тело в прежнее положение, вытянув руки
5. Повторите шаги 3 и 4""",
"en": """1. Sit down on the front edge of a chair, back straight, hands holding the front edge
2. Still holding the edge of the chair, arms extended, lift your butt and walk forward slightly so that it is a few inches from the chair.
3. Slowly lower your body, keeping the back straight, until arms are at a right angle
4. Raise your body again to the previous position, arms extended
5. Repeat steps 3 and 4""",
"it": """1. Siediti sul bordo anteriore di una sedia, con la schiena dritta, le mani che tengono il bordo anteriore
2. Tenendo ancora il bordo della sedia, le braccia tese, solleva il sedere e cammina leggermente in avanti in modo che si trovi a pochi centimetri dalla sedia.
3. Abbassa lentamente il corpo, mantenendo la schiena dritta, fino a quando le braccia sono ad angolo retto
4. Solleva nuovamente il corpo nella posizione precedente, le braccia estese
5. Ripetere i passaggi 3 e 4""",
"eu": """1. Eseri aulki baten aurreko ertzean, bizkarra zuzen, eskuak aurreko ertzari eusten.
2. Aulkira eusten, besoak zuzen, altxa ipurdia eta aurreratu oinak apur bat, aulkitik zentimetro batzuetara.
3. Astiro jaitsi zure gorputza, bizkarra zuzen mantenduz, besoak angelu zuzenean egon arte.
4. Altxa zure gorputza berriro aurreko posiziora, besoak zuzen
5. Errepikatu 3. eta 4. urratsak""",
"cs": """1. Sit down on the front edge of a chair, back straight, hands holding the front edge
        2. Still holding the edge of the chair, arms extended, lift your butt and walk forward slightly so that it is a few inches from the chair.
        3. Slowly lower your body, keeping the back straight, until arms are at a right angle
        4. Raise your body again to the previous position, arms extended
        5. Repeat steps 3 and 4""",
"es": """1. Siéntese en el borde delantero de una silla, con la espalda recta y las manos sosteniendo el borde delantero
2. Sujetando el borde de la silla, con los brazos extendidos, levante los glúteos y camine un poco hacia adelante para que esté a unos centímetros de la silla
3. Baje lentamente su cuerpo, manteniendo la espalda recta, hasta que los brazos estén en ángulo recto
4. Levante el cuerpo de nuevo a la posición anterior con los brazos extendidos.
5. Repita los pasos 3 y 4
""",
"nb": """1. Sitt ned på, og forparten av en stol med hendene, mens du har ryggen rett
2. Mens du fremdeles holder forparten, med armene utstrakt, løft rumpen og gå 10 cm forover slik at den er litt løftet fra stolen.
3. Senk kroppen sakte, mens du holder ryggen rett, til armene er i rett vinkel
4. Løft kroppen igjen til forrige posisjon, med armene utstrakt
5. Gjenta steg 3 og 4""",
} +
{
"tr": """Plank hareketi""",
"nl": """Planken""",
"ru": """Планка""",
"en": """Plank""",
"it": """Plank""",
"eu": """Ohola""",
"cs": """Prkno""",
"es": """Plancha""",
"nb": """Planke""",
} +
{
"tr": """1. Kollar düz ve dizler bükülü olarak dört ayak üzerine eğilin
2. Bacaklarınız düz olana kadar ayaklarınızı geriye doğru yürütün
3. Bu pozisyonda kalın""",
"nl": """1. Ga op z'n hondjes zitten, strek je armen en buig je benen.
2. Loop met je voeten naar achteren totdat je benen gestrekt zijn.
3. Houd deze positie vast.""",
"ru": """1. Примите упор лежа так, словно собираетесь начать отжиматься.
2. Расположите руки на ширине плеч и выровняйте их так, чтобы локти находились ровно под плечами.
3. Выпрямите ноги, упритесь носками в пол. Поднимите торс и поясницу на один уровень. 
4. Оставайтесь в этой позиции""",
"en": """1. Get down on all fours, with arms straight and knees bent
2. Walk your feet back until they are extended
3. Hold this position""",
"it": """1. Mettiti a quattro zampe, con gli avambracci appoggiati e le ginocchia piegate
2. Cammina indietro indietro fino a quando le gambe non sono estese
3. Mantieni questa posizione""",
"eu": """1. Jarri lau hankatan, besoak zuzen eta belaunak tolestuta
2. Bota oinak atzera hankak zuzen jarri arte
3. Eutsi posizio honetan""",
"cs": """1. Get down on all fours, with arms straight and knees bent
        2. Walk your feet back until they are extended
        3. Hold this position""",
"es": """1. Póngase en cuatro patas, con los brazos rectos y las rodillas flexionadas
2. Camine con los pies hacia atrás hasta que estén extendidos
3. Mantenga esta posición""",
"nb": """1. Gå ned på alle fire, med armene rett, og knærne bøyd
2. Strekk føttene bakover til de er rette
3. Holde denne posisjonen""",
} +
{
"tr": """Yüksek dizler""",
"nl": """Stilstaand joggen""",
"ru": """Бег на месте.""",
"en": """High knees""",
"it": """Corsa sul posto con ginocchia alte""",
"eu": """Belaun garaiak""",
"cs": """Vysoká kolena""",
"es": """Rodillas elevadas""",
"nb": """Høy knebøy""",
} +
{
"tr": """1. Dizleri kaldırabildiğiniz kadar yukarı kaldırarak ve bacakları hızlı bir şekilde değiştirerek olduğunuz yerde koşun""",
"nl": """1. Sta stil, maar maak een rennende beweging - duw je knieën zover mogelijk omhoog en wissel je benen af""",
"ru": """1. Бегать на месте, поднимая колени настолько высоко, насколько это удобно, и быстро переключая ноги""",
"en": """1. Run in place, putting knees as high up as is comfortable and switching legs at a quick pace""",
"it": """1. Fai una corsa veloce sul posto, porta in alto le ginocchia ma senza sforzare""",
"eu": """1. Egin korrika tokian, belaunak eroso den bezain beste altxatuz hanka batetik bestera erritmo bizian""",
"cs": """1. Run in place, putting knees as high up as is comfortable and switching legs at a quick pace""",
"es": """1. Trote en el lugar, con las rodillas tan altas como pueda y cambie de pierna a un ritmo rápido""",
"nb": """1. Jogg der du er, ved å sende knærne så høyt opp som det er komfortabelt, der du veksler mellom dem raskt""",
} +
{
"tr": """Lunge hareketi""",
"nl": """Uitvalspassen""",
"ru": """Выпады""",
"en": """Lunges""",
"it": """Affondi""",
"eu": """Lunges""",
"cs": """Výpady""",
"es": """Estocadas""",
"nb": """Utfall""",
} +
{
"tr": """1. Sırtınız düz bir şekilde durun
2. Sol bacağınızla ileriye doğru büyük bir adım atın
3. Sağ dizinizle neredeyse yere değene kadar leğen kemiğinizi aşağı indirin
4. Leğen kemiğinizi geri yukarı kaldırın
5. Geri adım atarak ayakta pozisyona dönün
6. Her seferinde bacakları değiştirerek tekrarlayın""",
"nl": """1. Ga staan met een rechte rug.
2. Doe een grote stap vooruit met je linkerbeen.
3. Duw je bekken omlaag, zo ver tot je bijna de grond raakt met je rechterknie.
4. Duw je bekken omhoog.
5. Ga weer recht staan.
6. Herhaal, en wissel beide benen af.""",
"ru": """1. Встаньте с прямо спиной
2. Сделайте большой шаг вперед левой ногой
3. Опускайте таз, пока вы почти не коснетесь пола правым коленом
4. Вернитесь в исходное положение, сделав шаг назад.
5. Повторите, переключая ноги каждый раз""",
"en": """1. Stand with back straight
2. Take a large step forward with your left leg
3. Bring your pelvis down until you almost touch the floor with your right knee
4. Bring your pelvis back up
5. Return to standing position by stepping back
6. Repeat, switching legs each time""",
"it": """1. Stai in piedi a schiena dritta
2. Fai un grande passo avanti con la gamba sinistra
3. Abbassa il bacino fino a toccare quasi il pavimento con il ginocchio destro
4. Tendi il bacino in avanti
5. Ritorna in posizione eretta facendo un passo indietro
6. Ripeti, alternando le gambe ogni volta""",
"eu": """1. Jarri tente bizkarra zuzen
2. Eman urrats luze bat aurrera ezkerreko hankarekin
3. Eraman pelbisa behera eskuineko belaunarekin ia lurra ukitu arte
4. Igo berriro zure pelbisa
5. Itzuli tente posiziora urratsa atzera itzuliz
6. Errepikatu aldi bakoitzean hanka aldatuz""",
"cs": """1. Stand with back straight
        2. Take a large step forward with your left leg
        3. Bring your pelvis down until you almost touch the floor with your right knee
        4. Bring your pelvis back up
        5. Return to standing position by stepping back
        6. Repeat, switching legs each time""",
"es": """1. Párese con la espalda recta
2. Dé un gran paso adelante con su pierna izquierda
3. Baje la pelvis hasta que casi toque el suelo con la rodilla derecha
4. Vuelva a subir la pelvis
5. Vuelva a la posición con el pie hacia atrás
6. Repita, cambiando de pierna cada vez""",
"nb": """1. Stå med ryggen rett
2. Ta et stort steg forover med venstrefoten
3. Press ned bekkenet til du nesten rører bakken med høyre kne
4. Hev bekkenet igjen
5. Gå tilbake til stående posisjon ved å ta et steg tilbake
6. Gjenta, og bytt bein for hver gang""",
} +
{
"tr": """Tek bacaklı çömelme (sol)""",
"nl": """Gespleten hurkzit (links)""",
"ru": """Выпад левой ногой""",
"en": """Split squats left""",
"it": """Split squats left""",
"eu": """Split squats left""",
"cs": """Dřep ve výpadu nalevo""",
"es": """Media sentadillas izquierda""",
"nb": """Ettbeinsknebøy, venstre""",
} +
{
"tr": """Tek bacaklı çömelme (sağ)""",
"nl": """Gespleten hurkzit (rechts)""",
"ru": """Выпад правой ногой""",
"en": """Split squats right""",
"it": """Split squats right""",
"eu": """Split squats right""",
"cs": """Dřep ve výpadu napravo""",
"es": """Media sentadillas derecha""",
"nb": """Ettbeinsknebøy, høyre""",
} +
{
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
"ru": """1. Встаньте с прямой спиной
2. Сделайте большой шаг вперед левой ногой
3. Опустите таз так, чтобы правое колено почти касалось пола
4. Поднимите свой таз обратно
5. Повторите с шага 3.""",
"en": """1. Stand with back straight
2. Take a large step forward with your left leg
3. Bring your pelvis down until you almost touch the floor with your right knee
4. Bring your pelvis back up
5. Repeat from step 3.""",
"it": """1. Stand with back straight
2. Take a large step forward with your left leg
3. Bring your pelvis down until you almost touch the floor with your right knee
4. Bring your pelvis back up
5. Repeat from step 3.""",
"eu": """1. Jarri tente bizkarra zuzen
2. Eman urrats luze bat aurrera ezkerreko hankarekin
3. Eraman pelbisa behera eskuineko belaunarekin ia lurra ukitu arte
4. Igo berriro zure pelbisa
5. Errepikatu 3. urratsetik""",
"cs": """1. Stand with back straight
2. Take a large step forward with your left leg
3. Bring your pelvis down until you almost touch the floor with your right knee
4. Bring your pelvis back up
5. Repeat from step 3.""",
"es": """1. Párese con la espalda recta
2. De un largo paso adelante con su pierna izquierda
3. Baje la pelvis hasta que casi toque el suelo con la rodilla derecha
4. Suba la pelvis
5. Repita desde el paso 3""",
"nb": """1. Stå med ryggen rett
2. Ta et stort skritt forover med venstre bein
3. Senk bekkenet ned til du nesten rører gulvet med høyre kne
4. Hev bekkenet igjen
5. Gjenta fra steg 3""",
} +
{
"tr": """Dönerek şınav""",
"nl": """Draaiend opdrukken""",
"ru": """Отжимание с переворотом""",
"en": """Push-up rotations""",
"it": """Flessioni con rotazione""",
"eu": """Push-up rotations""",
"cs": """Kliky s rotací""",
"es": """Flexiones a rotación""",
"nb": """Armhevingsrotasjoner""",
} +
{
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
3. Herhaal, en wissel bij stap 2 telkens van zij.""",
"ru": """1. Встаньте в стойку для обычного отжимания.
2.  Отожмитесь, затем разверните корпус, вытянув правую руку вверх так, чтобы тело образовало подобие буквы Т.
3. Возвращайтесь в исходную позицию и повторяйте упражнение для другой стороны.""",
"en": """1. Do a standard push-up:
1.a Lie down on your stomach
1.b Place your hands near your ears
1.c Use your arms to lift your stomach up until the arms are straight, keeping the back straight
1.d Bend arms until chest almost touches the ground, making sure the back is straight
1.e Lift your stomach up again, returning to step 3
2. Rotate your body to the side so that the back is straight, the bottom hand supporting the body is fully extended, and only the bottom hand and foot touch the floor
3. Repeat, changing sides at step 2 each time""",
"it": """1. Esegui una flessione standard:
1.a Sdraiati a pancia in giù
1.b Metti le mani vicino alle orecchie
1.c Usa le braccia per sollevare il torace fino a quando le braccia sono dritte, mantenendo la schiena dritta
1.d Piega le braccia fino a quando il torace tocca quasi il suolo, assicurandoti che la schiena sia dritta
1.e Solleva di nuovo il torace (vedi 1.c)
2. Ruota il corpo di lato in modo che la schiena sia dritta: la mano inferiore che sostiene il corpo è completamente estesa e solo la mano inferiore e i piedi toccano il pavimento
3. Ripeti, cambiando lato ogni volta al passaggio 2""",
"eu": """1. Egin flexio arrunt bat:
1.a Etzan buruz behera
1.b Jarri eskuak lurrean belarrietatik hurbil
1.c Erabili besoak zure sabela lurretik altxatzeko besoak zuzen jarri arte, bizkarra beti zuzen mantenduz
1.d Tolestu besoak paparrak ia lurra ukitu arte, ziurtatu bizkarra zuzen mantentzen duzula
1.e Altxa berriro sabela 1.c puntura itzuliz
2. Biratu gorputza albora, bizkarra zuzen eta pisua eusten duen beheko besoa guztiz zuzen, eta soilik beheko eskuak eta oinak ukitzen dute lurra
3. Errepikatu, aldez aldatuz 2. puntuan""",
"cs": """1. Do a standard push-up:
        1.a Lie down on your stomach
        1.b Place your hands near your ears
        1.c Use your arms to lift your stomach up until the arms are straight, keeping the back straight
        1.d Bend arms until chest almost touches the ground, making sure the back is straight
        1.e Lift your stomach up again, returning to step 3
        2. Rotate your body to the side so that the back is straight, the bottom hand supporting the body is fully extended, and only the bottom hand and foot touch the floor
        3. Repeat, changing sides at step 2 each time""",
"es": """1. Haga una flexión de brazos estándar
1.a Acuéstese boca abajo
1.b Coloque las manos cerca de las orejas
1.c Levante el estómago con los brazos hasta que los brazos estén rectos, manteniendo la espalda recta
1.d Flexione los brazos hasta que el pecho casi toque el suelo, asegurándose de que la espalda esté recta
1.e Levante el estómago de nuevo, volviendo al paso 3
2. Gire el cuerpo hacia un lado para que la espalda quede recta, la mano inferior que sostiene el cuerpo esté completamente extendida y sólo las extremidades inferiores toquen el suelo
3. Repita, cambiando de lado en el paso 2 otra vez""",
"nb": """1. Utfør vanlig armheving
1.a Legg deg ned på magen
1.b Plasser hendene nært ørene
1.c Bruk armene til å løfte magen opp, til armene er rette, mens du holder ryggen rett
1.d Bøy armene til brystet nesten rører bakken, mens du holder ryggen rett
1.e Løfte magen opp igjen, og gå tilbake til steg 3
2. Roter kroppen til siden, slik at ryggen er rett, nederste hånd som støtter kroppen er helt utstrakt, og kun nederste hånd og fot rører gulvet
3. Gjenta, og bytt side i steg 2 hver gang""",
} +
{
"tr": """Yan plank hareketi (sol)""",
"nl": """Links planken""",
"ru": """Левая боковая планка""",
"en": """Side plank left""",
"it": """Plank su lato sinistro""",
"eu": """Side plank left""",
"cs": """Prkno na levém boku""",
"es": """Plancha de lado izquierdo""",
"nb": """Sideplanke, venstre""",
} +
{
"tr": """Yan plank hareketi (sağ)""",
"nl": """Rechts planken""",
"ru": """Правая боковая планка""",
"en": """Side plank right""",
"it": """Plank sul lato destro""",
"eu": """Side plank right""",
"cs": """Prkno na pravém boku""",
"es": """Plancha de lado derecho""",
"nb": """Sideplanke, høyre""",
} +
{
"tr": """1. Alt dirseğiniz dik açıyla, kolunuz dışarı çıkacak şekilde yan tarafınıza uzanın
2. Ön kolunuzu yerde tutup alt omzunuzu yukarı kaldırarak leğen kemiğinizi yerden kaldırın; başınız, leğen kemiğiniz ve ayaklarınız düz bir çizgide olmalıdır
3. Bu pozisyonda kalın""",
"nl": """1. Ga op je linkerzij liggen, houd je rechterelleboog recht en steek je arm uit.
2. Duw je bekken omhoog door je rechterschouder op te tillen, maar houd je bovenarm op de grond - je hoofd, bekken en voeten moeten in een rechte lijn liggen.
3. Houd deze positie vast.""",
"ru": """1. Лягте на бок, поставив нижний локоть под прямым углом, вытянув вперед руку
2. Поднимите таз от пола, подняв нижнюю часть плеча вверх, удерживая предплечье на полу; ваша голова, таз и ноги должны быть на одной прямой линии
3. Оставайтесь в этой позиции""",
"en": """1. Lie down on your side, with your bottom elbow at a right angle, arm sticking out
2. Lift your pelvis off the floor by lifting your bottom shoulder up, keeping the forearm on the floor; your head, pelvis, and feet should be in a straight line
3. Hold this position""",
"it": """1. Sdraiati su un fianco, con il gomito inferiore ad angolo retto, con il braccio sporgente
2. Solleva il bacino dal pavimento sollevando la parte inferiore della spalla verso l'alto, mantenendo l'avambraccio sul pavimento; la testa, il bacino e i piedi dovrebbero essere in linea retta
3. Mantieni questa posizione""",
"eu": """1. Etzan alboz, azpiko ukondoa angelu zuzenean, besoa kanporantz
2. Altza pelbisa lurretik azpialdeko besaburua altxatuz, besaurrea lurrean mantenduz; burua, pelbisa eta oinak lerro zuzena osatu behar dute
3. Eutsi posizio honi""",
"cs": """1. Lie down on your left side, with your bottom elbow at a right angle, arm sticking out
        2. Lift your pelvis off the floor by lifting your bottom shoulder up, keeping the forearm on the floor; your head, pelvis, and feet should be in a straight line
        3. Hold this position""",
"es": """1. Acuéstese sobre su lado correspondiente, con el codo en ángulo recto y el brazo hacia afuera
2. Levante la pelvis del suelo levantando el hombro hacia arriba, manteniendo el antebrazo en el suelo; la cabeza, la pelvis y los pies deben estar en línea recta
3. Mantenga esta posición""",
"nb": """1. Legg deg på siden, med nederste albue i rett vinkel, med armen utover
2. Løft bekkenet fra bakken, ved å løfte din nederste skulder oppover, mens du har underarmen i bakken; hode; bekken; og føtter skal være i rett linje
3. Hold denne posisjonen""",
} +
{
"tr": """Yana tek bacaklı çömelme (sol)""",
"nl": """Gespleten zijhurkzit (links)""",
"ru": """Боковой выпад слева""",
"en": """Side split squats left""",
"it": """Side split squats left""",
"eu": """Side split squats left""",
"cs": """Boční výpady nalevo""",
"es": """Sentadilla de lado izquierdo""",
"nb": """Ettbeinssideknebøy, venstre""",
} +
{
"tr": """Yana tek bacaklı çömelme (sağ)""",
"nl": """Gespleten zijhurkzit (rechts)""",
"ru": """Боковой выпад справа""",
"en": """Side split squats right""",
"it": """Side split squats right""",
"eu": """Side split squats right""",
"cs": """Boční výpady napravo""",
"es": """Sentadilla de lado derecho""",
"nb": """Ettbeinssideknebøy, høyre""",
} +
{
"tr": """1. Dik durun ve omuz genişliğinden biraz daha geniş bir yan adım atın.
2. Uyluğunuz yere paralel olana kadar bir dizinizi bükün. Bükülmüş diz ayakla aynı hizada olmalıdır.
3. Başlangıç pozisyonuna geri itin ve tekrarlayın.""",
"nl": """1. Ga recht staan en doe een brede, zijwaartse pas, net iets voorbij schouderbreedte.
2. Buig één knie totdat je heup gelijkstaat aan de grond. De gebogen knie moet gelijkstaan aan de voet.
3. Duw jezelf omhoog en herhaal.""",
"ru": """1. Встаньте прямо и сделайте широкий боковой шаг, чуть больше ширины плеч.
2. Согните одно колено, пока бедро не будет параллельно полу. Согнутое колено должно находиться на одной линии с стопой.
3. Вернитесь в исходное положение и повторите.""",
"en": """1. Stand tall and take a wide lateral stride, just greater than shoulder width.
2. Bend one knee until your thigh is parallel to the floor. The bent knee must be in line with the foot.
3. Push back to the starting position and repeat.""",
"it": """1. Stand tall and take a wide lateral stride, just greater than shoulder width.
2. Bend one knee until your thigh is parallel to the floor. The bent knee must be in line with the foot.
3. Push back to the starting position and repeat.""",
"eu": """1. Jarri tente eta eman urrats zabal bat albora, zure sorbaldaren zabaleratik zertxobait harago.
2. Tolestu belaun bat izterra lurrarekiko paralelo dagoen arte. Tolestutako belauna oinarekin lerrokatuta egon behar du.
3. Itzuli hasierako posiziora eta errepikatu.""",
"cs": """1. Stand tall and take a wide lateral stride, just greater than shoulder width. 

        2. Bend one knee until your thigh is parallel to the floor. The bent knee must be in line with the foot.

        3. Press up and repeat, switching feet.""",
"es": """1. Póngase de pie y dé un amplio paso lateral, un poco más grande que el ancho de los hombros
2. Doble una rodilla hasta que su muslo esté paralelo al suelo. La rodilla doblada debe estar en línea con el pie
3. Vuelva a la posición inicial y repita""",
"nb": """1. Stå rett og ta et stor skritt ut til siden, litt større enn skulderbredde
2. Bøy ett kne til låret er parallelt med gulvet. Kneet må være på linje med foten.
3. Dytt deg tilbake til startposisjon og gjenta.""",
} +
{
"tr": """Bulgar tek bacaklı çömelmesi (sol)""",
"nl": """Bulgaarse gespleten hurkzit (links)""",
"ru": """Болгарские выпады (левая нога)""",
"en": """Bulgarian split squats left""",
"it": """Bulgarian split squats left""",
"eu": """Bulgarian split squats left""",
"cs": """Bulharské dřepy na levé noze""",
"es": """Sentadilla búlgara izquierda""",
"nb": """Bulgarske ettbeinsknebøy, venstre""",
} +
{
"tr": """Bulgar tek bacaklı çömelmesi (sağ)""",
"nl": """Bulgaarse gespleten hurkzit (rechts)""",
"ru": """Болгарские выпады (правая нога)""",
"en": """Bulgarian split squats right""",
"it": """Bulgarian split squats right""",
"eu": """Bulgarian split squats right""",
"cs": """Bulharské dřepy na pravé noze""",
"es": """Sentadilla búlgara derecha""",
"nb": """Bulgarske ettbeinsknebøy, høyre""",
} +
{
"tr": """1. Bir sandalyenin önünde dik durun ve büyük bir adım atın. Ayaklarınızdan birinin üst kısmını sandalyenin üzerine koyun.
2. Arka diz neredeyse yere değene kadar kollarla dengeleyerek ön dizinizi bükün
3. Başlangıç pozisyonuna geri itin ve tekrarlayın.""",
"nl": """1. Pak een stoel en ga er recht voor staan. Plaats het voorste deel van je voet op de stoel.
2. Buig de voorste knie en balanceer je armen totdat de achterste knie bijna de grond raakt.
3. Duw jezelf terug, ga terug naar stap 1 en herhaal, telkens met een andere knie.""",
"ru": """1. Встаньте во весь рост перед стулом и сделайте большой шаг. Положите верхнюю часть одной из ваших ног на стул.
2. Согните переднее колено, балансируя руками, пока заднее колено почти не коснется земли
3. Вернитесь в исходное положение и повторите упражнение.""",
"en": """1. Stand tall in front of a chair and take a large step. Put the upper part of one of your feet on the chair.
2. Bend the front knee, balancing with arms until the back knee almost touches the ground
3. Push back to the starting position and repeat.""",
"it": """1. Stand tall in front of a chair and take a large step. Put the upper part of one of your feet on the chair.
2. Bend the front knee, balancing with arms until the back knee almost touches the ground
3. Push back to the starting position and repeat.""",
"eu": """1. Jarri tente aulki baten aurrean eta eman urrats luze bat. Jarri zure oin baten goialdea aulki gainean.
2. Tolestu aurreko belauna, besoekin orekatuz atzeko belaunak ia lurra ukitu arte.
3. Itzuli hasierako posiziora eta errepikatu.""",
"cs": """1. Stand tall in front of a chair and take a large step. Put the upper part of one of your feet on the chair.
2. Bend the front knee, balancing with arms until the back knee almost touches the ground
3. Push back to the starting position and repeat.""",
"es": """1. Póngase de pie delante de una silla y dé un largo paso. Ponga la parte superior de uno de sus pies en la silla
2. Doble la rodilla delantera, balanceando los brazos hasta que la rodilla trasera casi toque el suelo.
3. Empuje hacia atrás a la posición inicial y repita""",
"nb": """1. Stå rett foran en stol og ta et stort steg. Putt øvre del av en av beina dine på stolen.
2. Bøy det fremste kneet, der du balanserer med armene til bakre kne nesten rører bakken
3. Dytt deg tilbake til startposisjon og gjenta""",
} +
{
"tr": """Tabanca pozisyonunda çömelme (sol)""",
"nl": """Pistoolzit (links)""",
"ru": """Пистолетик (левая нога) """,
"en": """Pistol squats left""",
"it": """Pistol squats left""",
"eu": """Pistol squats left""",
"cs": """Dřep na levé noze""",
"es": """Sentadillas en pistol izquierda""",
"nb": """Pistolknebøy, venstre""",
} +
{
"tr": """Tabanca pozisyonunda çömelme (sağ)""",
"nl": """Pistoolzit (rechts)""",
"ru": """Пистолетик (правая нога)""",
"en": """Pistol squats right""",
"it": """Pistol squats right""",
"eu": """Pistol squats right""",
"cs": """Dřep na pravé noze""",
"es": """Sentadillas en pistol derecha""",
"nb": """Pistolknebøy, høyre""",
} +
{
"tr": """1. Diğer bacağınız düz ve hafifçe öne gelecek şekilde tek ayak üzerinde durun.
2. Bir dizinizi yavaşça bükün, sırtınızı ve diğer bacağınızı düz tutarak çömelme pozisyonuna inin.
3. Eğik dizinizi düzelterek ve diğer bacağınızı düz tutarak çömelme pozisyonundan yavaşça kendinizi kaldırın.
4. Tekrarlayın""",
"nl": """1. Zet één been voor je.
2. Buig je knie totdat je hurkt - houd je rug en andere been recht.
3. Buig je knie terug en maak hem weer recht.
4. Herhaal.""",
"ru": """1. Встаньте на одну ногу, а другую поставьте прямо и слегка вперед.
2. Медленно опуститесь на корточки на одной ноге, держа спину и другую ногу прямо.
3. Медленно поднимайтесь от приседа, выпрямляя ногу, удерживая другую ногу прямо.
4. Повторите.""",
"en": """1. Stand on one leg, with your other leg straight and slightly forward.
2. Bend one knee slowly, descending into a squat and keeping your back and your other leg straight.
3. Slowly raise yourself from the squat, straightening the bent knee and keeping the other leg straight.
4. Repeat""",
"it": """1. Stand on one leg, with your other leg straight and slightly forward.
2. Bend one knee slowly, descending into a squat and keeping your back and your other leg straight.
3. Slowly raise yourself from the squat, straightening the bent knee and keeping the other leg straight.
4. Repeat""",
"eu": """1. Stand on one leg, with your other leg straight and slightly forward.
2. Bend one knee slowly, descending into a squat and keeping your back and your other leg straight.
3. Slowly raise yourself from the squat, straightening the bent knee and keeping the other leg straight.
4. Repeat""",
"cs": """1. Stand on one leg, with your other leg straight and slightly forward.
2. Bend one knee slowly, descending into a squat and keeping your back and your other leg straight.
3. Slowly raise yourself from the squat, straightening the bent knee and keeping the other leg straight.
4. Repeat""",
"es": """1. Párese en una pierna, con la otra pierna estirada y ligeramente hacia adelante.
2. Doble una rodilla lentamente, bajando en sentadilla y manteniendo la espalda y la otra pierna estirada.
3. Levántese lentamente de la sentadilla, enderezando la rodilla doblada y manteniendo la otra pierna recta.
4. Repita""",
"nb": """1. Stå på ett ben, med det andre benet rett, og litt forover
2. Bøy ett kne sakte, og gå ned i en knebøy, mens du holder ryggen og det andre benet rett
3. Reis deg sakte fra knebøyen, der du retter det bøyde kneet og holder det andre benet rett
4. Gjenta""",
} +
{
"tr": """Diz çöküp geri tepme""",
"nl": """Geknielde terugtrap""",
"ru": """Кикбэк согнутой ногой """,
"en": """Kneeling kickbacks""",
"it": """Kneeling kickbacks""",
"eu": """Kneeling kickbacks""",
"cs": """Kickbacky v kleku""",
"es": """Patada de rodilla""",
"nb": """Knelende bakspark""",
} +
{
"tr": """1. Dört ayak üzerine eğilin.
2. Kalça kaslarına odaklanarak bir ayağınızı tamamen uzayıncaya kadar geriye doğru itin.
3. Bir saniye kalın, ardından başlangıç pozisyonuna geri dönün.
4. Ayakları değiştirerek tekrarlayın""",
"nl": """1. Ga op zijn hondjes zitten en plaats één voet tegen iets met weerstand, zoals een kabel.
2. Duw je voet naar achteren, zo ver totdat je been volledig gestrekt is.
3. Houd één seconde vol en keer terug naar de startpositie.
4. Herhaal, en wissel steeds van voet.""",
"ru": """1. Встань на четвереньки.
2. Отталкивайтесь одной ногой назад до полного вытягивания, концентрируясь на ягодичных мышцах.
3. Задержитесь на одну секунду, затем вернитесь в исходное положение..
4. Повторите, чередуя ноги.""",
"en": """1. Get down on all fours.
2. Push one foot back until fully extended, concentrating on the gluteus muscles.
3. Stay for one second, then return to the initial position.
4. Repeat, alternating feet""",
"it": """1. Get down on all fours.
2. Push one foot back until fully extended, concentrating on the gluteus muscles.
3. Stay for one second, then return to the initial position.
4. Repeat, alternating feet""",
"eu": """1. Get down on all fours.
2. Push one foot back until fully extended, concentrating on the gluteus muscles.
3. Stay for one second, then return to the initial position.
4. Repeat, alternating feet""",
"cs": """1. Get down on all fours.
2. Push one foot back until fully extended, concentrating on the gluteus muscles.
3. Stay for one second, then return to the initial position.
4. Repeat, alternating feet""",
"es": """1. Ponga a cuatro patas
2. Empuje un pie hacia atrás hasta que se extienda completamente, concentrándose en los músculos de los glúteos
3. Quédese un segundo, y luego vuelva a la posición inicial
4. Repita, alternando los pies""",
"nb": """1. Legg deg på alle fire
2. Dytt en fot bakover til den er rett, og konsentrer deg om setemusklene
3. Hold i ett sekund, og gå så tilbake til opprinnelig posisjon
4. Gjenta, og veksle bein for hver gang""",
} +
{
"tr": """Sol bacak baldır kaldırma""",
"nl": """Kuitoptrekken (links)""",
"ru": """Упражнения для икроножных мыщц (левая)""",
"en": """Left leg calf raises""",
"it": """Left leg calf raises""",
"eu": """Left leg calf raises""",
"cs": """Výpony na levé noze""",
"es": """Elevación de pantorrilla izquierda""",
"nb": """Legghevinger, venstre""",
} +
{
"tr": """Sağ bacak baldır kaldırma""",
"nl": """Kuitoptrekken (rechts)""",
"ru": """Упражнения для икроножных мыщц (правая)""",
"en": """Right leg calf raises""",
"it": """Right leg calf raises""",
"eu": """Right leg calf raises""",
"cs": """Výpony na pravé noze""",
"es": """Elevación de pantorrilla derecha""",
"nb": """Legghevinger, høyre""",
} +
{
"tr": """1. Hareket aralığını artırmak için yerde veya bir basamağın kenarında durun. Üst kısmı baldırınızın üzerine koyarak bir ayağınızı kaldırın.
2. Ayak parmaklarınız üzerinde durana kadar topuklarınızı kaldırın.
3. Bu pozisyonda üç saniye kalın, ardından topuğunuz yere değmeden ayağınızı indirin.""",
"nl": """1. Ga op de grond staan of op de rand van een opstapje. Til één voet op en houd hem tegen op je kuit.
2. Til je hielen op, zo ver totdat je op je tenen staat.
3. Houd dit drie seconden vol. Duw je voet weer naar omlaag zonder de grond te raken met je hiel.""",
"ru": """1. Встаньте на пол или на край ступеньки, чтобы увеличить диапазон движения. Поднимите одну ногу, поставив ее на верхнюю часть икры.
2. Поднимите пятку, пока не встанете на цыпочки.
3. Оставайтесь в этом положении в течение трех секунд, затем опустите ногу, не касаясь пяткой земли.""",
"en": """1. Stand on the floor or on the edge of a step to increase the range of movement. Raise one foot, placing the upper part on your calf.
2. Lift your heels until you're standing on toes.
3. Stay in this position for three seconds, then lower your foot without touching the ground with your heel.""",
"it": """1. Stand on the floor or on the edge of a step to increase the range of movement. Raise one foot, placing the upper part on your calf.
2. Lift your heels until you're standing on toes.
3. Stay in this position for three seconds, then lower your foot without touching the ground with your heel.""",
"eu": """1. Stand on the floor or on the edge of a step to increase the range of movement. Raise one foot, placing the upper part on your calf.
2. Lift your heels until you're standing on toes.
3. Stay in this position for three seconds, then lower your foot without touching the ground with your heel.""",
"cs": """1. Stand on the floor or on the edge of a step to increase the range of movement. Raise one foot, placing the upper part on your calf.
2. Lift your heels until you're standing on toes.
3. Stay in this position for three seconds, then lower your foot without touching the ground with your heel.""",
"es": """1. Párese en el suelo o en el borde de un escalón para aumentar el rango de movimiento. Levante un pie, colocando la parte superior de su pantorrilla
2. Levante los talones hasta que esté de pie
3. Manténgase en esta posición durante tres segundos, luego baje el pie sin tocar el suelo con el talón.""",
"nb": """1. Stå på gulvet eller på kanten av et steg for å øke bevegelsesfriheten. Hev ett bein, og plasser øvre del på leggen
2. Løfte hælene til du står på tærne
3. Hold denne posisjonen i tre sekunder, og senk så foten uten å røre bakken med hælen""",
};
String get i18n => localize(this, t);
}
