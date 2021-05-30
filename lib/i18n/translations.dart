// Copyright (C) 2019-2021 Miroslav Mazel
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
"tr": """Başardınız!""",
"nl": """Goed gedaan!""",
"de": """Geschafft!""",
"ru": """Молодец!""",
"pt": """Você conseguiu!""",
"en": """You did it!""",
"it": """Ce l'hai fatta!""",
"fr": """Vous avez réussi !""",
"eu": """Lortu duzu!""",
"cs": """Dobrá práce!""",
"id": """Kamu berhasil!""",
"es": """¡Lo ha conseguido!""",
} +
{
"tr": """Sonraki:""",
"nl": """Hierna:""",
"de": """Als nächstes:""",
"ru": """Далее:""",
"pt": """Próximo:""",
"en": """Next up:""",
"it": """Preparati per:""",
"fr": """Ensuite :""",
"eu": """Hurrengoa:""",
"cs": """Další cvik:""",
"id": """Berikutnya:""",
"es": """A continuación:""",
} +
{
"tr": """Haydi başlayalım. Birinci: %s""",
"nl": """Tijd om aan de slag te gaan! Allereerst: %s""",
"de": """Auf gehts zur ersten Übung: %s""",
"ru": """Поехали! Сначала: %s""",
"pt": """Vamos lá! Começando com: %s""",
"en": """Let's go! First up: %s""",
"it": """Si parte! Primo esercizio: %s""",
"fr": """Allons-y ! Première étape : %s""",
"eu": """Goazen! Lehena: %s""",
"cs": """Pojďme na to! První cvik: %s""",
"id": """Ayo! Pertama: %s""",
"es": """¡Vamos! Primer paso: %s""",
} +
{
"tr": """%d saniye kaldı""",
"nl": """Nog %d seconden te gaan""",
"de": """%d Sekunden übrig""",
"ru": """Осталось: %d секунд""",
"pt": """%d segundos restantes""",
"en": """%d seconds left""",
"it": """Mancano %d secondi""",
"fr": """Encore %d secondes""",
"eu": """%d segundo geratzen dira""",
"cs": """Zbývá %d vteřin""",
"id": """%d detik tersisa""",
"es": """%d segundos restante""",
} +
{
"tr": """Mola zamanı!""",
"nl": """Tijd voor een pauze!""",
"de": """Pause!""",
"ru": """Пауза!""",
"pt": """Pausa!""",
"en": """Break!""",
"it": """Pausa!""",
"fr": """Pause !""",
"eu": """Atsedenaldia!""",
"cs": """Pauza!""",
"id": """Istirahat!""",
"es": """¡Descanso!""",
} +
{
"tr": """Denetimler için dokunun""",
"nl": """Druk om bediening te tonen""",
"de": """Berühren für die Steuerung""",
"ru": """Нажмите для паузы""",
"pt": """Toque para os controles""",
"en": """Tap for controls""",
"it": """Tocca per i controlli""",
"fr": """Appuyez pour les commandes""",
"eu": """Sakatu kontroletarako""",
"cs": """Ťukněte pro ovládání""",
"id": """Ketuk untuk kontrol""",
"es": """Tocar para controles""",
} +
{
"tr": """Resim eksik""",
"nl": """Afbeelding ontbreekt""",
"de": """Bild fehlt""",
"ru": """Изображение отсутствует""",
"pt": """Falta imagem""",
"en": """Image missing""",
"it": """Immagine mancante""",
"fr": """Images manquantes""",
"eu": """Irudia falta da""",
"cs": """Chybí fotka""",
"id": """Gambar hilang""",
"es": """Imagen faltante""",
} +
{
"tr": """Antrenman başlığı""",
"nl": """Naam van workout""",
"de": """Name des Trainings""",
"ru": """Название тренировки""",
"pt": """Nome do treino""",
"en": """Workout title""",
"it": """Titolo dell'esercizio""",
"fr": """Titre de l’exercice""",
"eu": """Entrenamenduaren izenburua""",
"cs": """Název tréninku""",
"id": """Judul latihan""",
"es": """Título del entrenamiento""",
} +
{
"tr": """Kendi koçunuz olun!""",
"nl": """Coach jezelf!""",
"de": """Sei dein eigener Coach!""",
"ru": """Ты сам себе тренер!""",
"pt": """Seja seu próprio treinador!""",
"en": """Be your own coach!""",
"it": """Sii l'allenatore di te stesso!""",
"fr": """Soyez votre propre entraîneur !""",
"eu": """Izan zure entrenatzaile!""",
"cs": """Buď vlastním trenérem!""",
"id": """Jadilah pelatihmu sendiri!""",
"es": """¡Se su propio entrenador!""",
} +
{
"tr": """Kendinizi en iyi hissettiren egzersizi tasarlayın""",
"nl": """Ontwerp dé workout die voor jou prettig voelt""",
"de": """Erstelle das Training, mit dem du dich am besten fühlst""",
"ru": """Создай тренировку, удобную для вас""",
"pt": """Monte o treino que te faça sentir o melhor""",
"en": """Design the workout that makes you feel the best""",
"it": """Progetta l'allenamento che ti fa sentire il migliore""",
"fr": """Concevez l’entraînement qui vous fait vous sentir le mieux""",
"eu": """Diseinatu hoberen datorkizun entrenamendua""",
"cs": """Navrhni si takový trénink, po kterém se budeš cítit nejlépe""",
"id": """Rancang latihan yang membuatmu merasa yang terbaik""",
"es": """Diseñe el entrenamiento que le sentirá mejor""",
} +
{
"tr": """Tüm vücut""",
"nl": """Hele lichaam""",
"de": """Ganzkörper""",
"ru": """Все тело""",
"pt": """Todo o corpo""",
"en": """Full body""",
"it": """Tutto il corpo""",
"fr": """Tout le corps""",
"eu": """Gorputz osoa""",
"cs": """Celé tělo""",
"id": """Seluruh tubuh""",
"es": """De cuerpo entero""",
} +
{
"tr": """Bacaklar""",
"nl": """Benen""",
"de": """Beine""",
"ru": """Ноги""",
"pt": """Pernas""",
"en": """Legs""",
"it": """Gambe""",
"fr": """Jambes""",
"eu": """Hankak""",
"cs": """Nohy""",
"id": """Kaki""",
"es": """Piernas""",
} +
{
"tr": """Parlıyorsunuz!""",
"nl": """Je straalt!""",
"de": """Du strahlst!""",
"ru": """Вы сияете!""",
"pt": """Você está brilhando!""",
"en": """You're glowing!""",
"it": """Stai splendendo!""",
"fr": """Vous êtes rayonnant·e !""",
"eu": """Primeran zabiltza!""",
"cs": """Dobrá práce!""",
"id": """Kamu bersinar!""",
"es": """¡Estás brillando!""",
} +
{
"tr": """Katkıda bulunun""",
"nl": """Deel je oefeningen met ons""",
"de": """Eine Übung beitragen""",
"ru": """Поделиться упражнением""",
"pt": """Contribua""",
"en": """Contribute""",
"it": """Contribuisci a un esercizio""",
"fr": """Contribuez""",
"eu": """Partekatu ariketa bat""",
"cs": """Přispěj nový cvik""",
"id": """Berkontribusi""",
"es": """Contribuir un ejercicio""",
} +
{
"tr": """Feeel, sizin gibi gönüllülerin egzersizler ve egzersiz fotoğrafları göndermesine güvenir. Fotoğraflar önce özel olarak üçlü sürümler halinde işlenecek, ardından onay için size gönderilecek ve ancak daha sonra uygulamada yayınlanacaktır. Gönderilen tüm fotoğraflar ve metinler yalnızca sizin çalışmanız olmalıdır. Katkıda bulunduğunuz için teşekkürler!""",
"nl": """Feeel is afhankelijk van vrijwilligers zoals jij voor het verkrijgen van oefeningen met bijbehorende foto's. Je foto's worden anoniem aangepast voor gebruik in de app, dan aan je opgestuurd voor goedkeuring en pas dáárna toegevoegd aan de app. Alle foto's en tekst dienen door jou te zijn gemaakt. Alvast bedankt!""",
"de": """Feeel ist auf die Mitarbeit von Freiwilligen wie dich angewiesen, die Übungen und Fotos von Übungen beisteuern. Alle Fotos die du hochlädst werden zunächst privat zu triangulierten Versionen verarbeitet und dir dann zur Freigabe zurückgesandt. Erst danach werden sie in der App hinterlegt. Alle eingereichten Fotos und Texte müssen ausschließlich deineArbeit sein. Danke für deine Unterstützung!""",
"ru": """Feeel полагается на таких волонтеров, как вы, для предоставления упражнений и фотографий упражнений. Фотографии сначала будут приватно обработаны в триангулированных версиях, затем отправлены вам на утверждение, и только затем выпущены в приложении. Все представленные фотографии и текст должны быть исключительно вашей работой. Спасибо за вклад!""",
"pt": """Feeel depende de voluntários como você para submeter exercícios e fotos de exercícios. As fotografias serão primeiro tratadas em privado em versões trianguladas, depois enviadas para aprovação, e só depois libertadas na aplicação. Todas as fotografias e textos submetidos devem ser exclusivamente o seu trabalho. Obrigado pela sua contribuição!""",
"en": """Feeel relies on volunteers like you to submit exercises and exercise photos. Photos will first be privately processed into triangulated versions, then sent to you for approval, and only then released in the app. All submitted photos and text must be solely your work. Thanks for contributing!""",
"it": """Feeel si affida a volontari come te per inviare esercizi e foto di esercizi. Le foto saranno prima elaborate privatamente in versioni triangolate, poi inviate a te per l'approvazione, e solo allora rilasciate nell'applicazione. Tutte le foto e i testi inviati devono essere esclusivamente opera tua. Grazie per aver contribuito!""",
"fr": """Feeel compte sur des volontaires comme vous pour soumettre des exercices et des photos d’exercices. Les photos seront d’abord traitées de manière privée pour obtenir des versions triangulées, puis elles vous seront envoyées pour approbation, et seulement ensuite elles seront publiées dans l’application. Toutes les photos et le texte soumis doivent être de vous. Merci de votre contribution !""",
"eu": """Feeel oinarritzen boluntario bezala aurkeztu behar duzu, ariketa eta ariketa argazkiak. Argazkiak izango da lehen izan pribatuan sartu prozesatu triangulated bertsioak, eta gero bidali behar duzu onespena, eta orduan bakarrik kaleratu aplikazioa. Guztiak aurkeztu argazkiak eta testua behar da soilik zure lana. Eskerrik asko laguntzen!""",
"cs": """Feeel spoléhá na dobrovolníky, jako jste vy, aby předložili cvičení a cvičili fotografie. Jakékoli fotografie, které odešlete, budou nejprve soukromě zpracovány, poté Vám zaslány ke schválení a teprve poté uvolněny v aplikaci. Díky za přispění!""",
"id": """Feeel mengandalkan para sukarelawan sepertimu untuk mengirimkan latihan-latihan dan foto-foto latihan. Setiap foto yang kamu kirimkan akan diproses secara pribadi, lalu dikirimkan kepadamu untuk disetujui, lalu kemudian diluncurkan di aplikasi. Semua foto dan teks yang diserahkan harus menjadi hasil pekerjaan kamu sendiri. Terima kasih telah berkontribusi!""",
"es": """Feeel depende de voluntarios como usted para enviar ejercicios y fotografías de ellos. Las fotos que envíe primero se procesarán de forma privada, luego se le solicitará su aprobación y solo se publicarán en la aplicación. ¡Gracias por contribuir!""",
} +
{
"tr": """Egzersiz adı""",
"nl": """Naam van oefening""",
"de": """Name der Übung""",
"ru": """Упражнение""",
"pt": """Nome do exercício""",
"en": """Exercise name""",
"it": """Nome dell'esercizio""",
"fr": """Nom de l’exercice""",
"eu": """Ariketaren izena""",
"cs": """Název cviku""",
"id": """Nama latihan""",
"es": """Nombre del ejercicio""",
} +
{
"tr": """Egzersiz nasıl yapılır (isteğe bağlı)""",
"nl": """Hoe voer je de oefening te worden uit? (optioneel)""",
"de": """Beschreibung der Übung (optional)""",
"ru": """Как выполнить упражнение (необязательно)""",
"pt": """Como realizar o exercício (opcional)""",
"en": """How to perform exercise (optional)""",
"it": """Come svolgere l'esercizio (opzionale)""",
"fr": """Comment faire l’exercice (facultatif)""",
"eu": """Nola burutu ariketa (aukerakoa)""",
"cs": """Jak provést cvik (nepovinné)""",
"id": """Cara melakukan olahraga (opsional)""",
"es": """Cómo se realiza el ejercicio (opcional)""",
} +
{
"tr": """E-posta gönderilemedi""",
"nl": """De e-mail kan niet worden verstuurd""",
"de": """E-Mail konnte nicht versendet werden""",
"ru": """Письмо не отправлено""",
"pt": """O e-mail não pôde ser enviado""",
"en": """Email could not be sent""",
"it": """Non è stato possibile inviare l'e-mail""",
"fr": """Le courriel n’a pas pu être envoyé""",
"eu": """Ezin izan da e-maila bidali""",
"cs": """E-mail se nepovedlo odeslat""",
"id": """Email tidak dapat dikirim""",
"es": """Correo no podría ser enviado""",
} +
{
"tr": """Egzersiz önerisi: %s""",
"nl": """Oefeningbijdrage:%s""",
"de": """Übungsvorschlag %s""",
"ru": """Предложить упражнение: %s""",
"pt": """Proposta de exercício: %s""",
"en": """Exercise proposal: %s""",
"it": """Proposta di esercizio: %s""",
"fr": """Proposition d’exercice : %s""",
"eu": """Ariketa proposamena: %s""",
"cs": """Návrh cviku: %s""",
"id": """Usulan latihan:% s""",
"es": """Ejercicio propuesto: %s""",
} +
{
"tr": """Merhaba,

Bir egzersiz önerisi gönderiyorum. Hem ekli resimlerin hem de açıklamanın tamamen kendi çalışmam olduğunu beyan ederim. Bu mesajı göndererek, gönderilen adın ve açıklamanın CC BY-SA 4.0 lisansı ve uygulama mağazası istisnası ile AGPLv3 altında yayınlanmasını geri alınamaz şekilde kabul ediyorum. Ekteki resimlerin düşük çözünürlüklü çeşitlere dönüştürülmesine de izin veriyorum. İşlendikten sonra, onları CC BY-SA 4.0 lisansı altında lisanslamaya istekli olup olmadığımı değerlendireceğim.

Egzersiz adı: %1s
Egzersiz adımları:
%2s""",
"nl": """Hallo,

Hierbij dien ik een voorstel in voor een oefening. Ik begrijp dat ik alleen mijn *eigen* werk mag indienen. Als ik dit bericht verstuur, ga ik onherroepelijk akkoord met het feit dat de naam en omschrijving van de oefening worden vrijgegeven onder de CC BY-SA 4.0- en GPLv3-licentie, met uitzondering van de appwinkel. Ik geef tevens toestemming om de bijgevoegde afbeelding(en) anoniem te verwerken. Daarna worden ze door mij geëvalueerd om ze al dan niet vrij te geven onder de CC BY-SA 4.0-licentie.

Naam van de oefening: %1s
Uitleg:
%2s""",
"de": """Hallo,

ich sende einen Übungsvorschlag. Hiermit erkläre ich, dass ich die vorliegende Arbeit ausschließlich eigenständig angefertigt habe. Mit dem Absenden dieser Nachricht erkläre ich mich unwiderruflich damit einverstanden, dass der eingereichte Name und die Beschreibung unter einer CC BY-SA-4.0-Lizenz und einer AGPLv3-Lizenz mit Ausnahmegenehmigung für den App-Store veröffentlicht werden. Ich gebe außerdem die Erlaubnis, sämtliche angehängte Bilder in Low-Poly-Grafiken zu konvertieren. Nachdem sie verarbeitet wurden, werde ich prüfen, ob ich bereit bin, sie unter der CC BY-SA-4.0-Lizenz zu lizenzieren.

Name der Übung: %1s
Übungsschritte:
%2s""",
"ru": """Здравствуйте,

Я посылаю предложение об упражнении. Настоящим я заявляю, что и прилагаемые изображения, и описание являются полностью моей собственной работой. Отправляя это сообщение, я безоговорочно соглашаюсь с тем, чтобы предоставленные имя и описание были выпущены на условиях лицензии CC BY-SA 4.0 и AGPLv3 с лицензией на исключение для магазина приложений. Я также даю разрешение на обработку прикрепленных изображений в низкополигональных вариантах. После того, как они будут обработаны, я оценю, готов ли я лицензировать их под лицензией CC BY-SA 4.0.

Имя упражнения: %1s
Упражнительные шаги:
%2s""",
"pt": """Olá,

Estou a enviar uma proposta de um exercício. Declaro por este meio que tanto as imagens anexas como a descrição são completamente minhas próprias obras. Ao enviar esta mensagem, concordo irrevogavelmente que o nome e a descrição submetidos sejam divulgados sob uma licença CC BY-SA 4.0 e uma licença AGPLv3 com uma licença de excepção da app store. Também dou permissão para processar a(s) imagem(s) anexada(s) em variantes de baixo teor de poliuretano. Depois de serem processadas, avaliarei se estou disposto a licenciá-las sob a licença CC BY-SA 4.0.

Nome do exercício: %1s
Passos para o exercício:
%2s""",
"en": """Hello,

I'm sending a proposal of an exercise. I hereby declare that both the attached images and the description are completely my own work. By sending this message, I irrevocably agree to have the submitted name and description released under a CC BY-SA 4.0 license and an AGPLv3 with an app store exception license. I also give permission to process the attached image(s) into low-poly variants. After they are processed, I will evaluate whether I am willing to license them under the CC BY-SA 4.0 license.

Exercise name: %1s
Exercise steps:
%2s""",
"it": """Buongiorno,

Sto inviando una proposta di un esercizio. Dichiaro che sia le immagini allegate che la descrizione sono completamente opera mia. Inviando questo messaggio, accetto irrevocabilmente che il nome e la descrizione inviati siano rilasciati sotto una licenza CC BY-SA 4.0 e una AGPLv3 con una licenza di eccezione per l'app store. Do anche il permesso di elaborare l'immagine o le immagini allegate in varianti low-poly. Dopo che saranno elaborate, valuterò se sono disposto a rilasciarle sotto la licenza CC BY-SA 4.0.

Nome dell'esercizio: %1s
Passi dell'esercizio:
%2s""",
"fr": """Bonjour,

Je vous envoie une proposition d’exercice. Je déclare par la présente que les images jointes et la description sont entièrement de mon travail personnel. En envoyant ce message, j’accepte irrévocablement que le nom et la description soumis soient publiés sous une licence CC BY-SA 4.0 et une licence AGPLv3 avec exception magasin d’applications. Je donne également l’autorisation de traiter la ou les images ci-jointes pour en faire des variantes à faible polysémie. Après leur traitement, j’évaluerai si je suis prêt·e à les diffuser sous la licence CC BY-SA 4.0.

Nom de l’exercice : %1s
Étapes de l’exercice :
%2s""",
"eu": """Kaixo,

I bidaliz naiz proposamena ariketa bat. Jakinarazten dut deklaratzeko, bai erantsitako irudiak eta deskribapen dira erabat nire lan propioa. Bidali mezu hau, I azkenik onartzen dute aurkeztu izena eta deskribapena license bat CC BY-SA 4.0 lizentzia eta AGPLv3 bat app store salbuespen lizentzia. Nik ere eman baimena prozesu erantsitako irudia(k) sartu behe-poli aldaera. Ondoren dira prozesatu, egingo dut ote den ebaluatzeko prest nago lizentzia horiek azpian CC BY-SA 4.0 lizentzia.

Ariketa izena: %1s
Ariketa urratsak:
%2s""",
"cs": """Zdraví,

Posílám návrh na cvičení. Tímto prohlašuji, že to všechno je jen moje vlastní práce. Odesláním této zprávy neodvolatelně souhlasím s tím, aby předložené jméno a popis byly uvolněny pod licencí CC BY-SA a AGPLv3 s licencí App store exception. Také dávám svolení zpracovat připojený obrázek(y)do variant s nízkým poly. Po jejich zpracování vyhodnotím, zda jsem ochoten je licencovat na základě licence CC BY-SA.

Název cvičení: %1s
Cvičení kroky:
%2s""",
"id": """Halo,

Aku mengirim proposal latihan. Saya dengan ini menyatakan bahwa kedua gambar terpasang dan Deskripsi Benar-benar pekerjaan saya sendiri. Dengan mengirim pesan ini, Aku Tak dapat ditarik kembali setuju untuk memiliki nama yang dikirimkan dan deskripsi dirilis di bawah lisensi CC BY-SA 4.0 dan AGPLv3 dengan lisensi app store. Saya juga memberikan izin untuk memproses image yang terpasang ke varian sederhana. Setelah diproses, saya akan mengevaluasi apakah saya bersedia untuk lisensi mereka di bawah izin CC BY-SA 4.0.

Nama latihan: %1s
Langkah latihan:
%2s""",
"es": """Hola,

Estoy enviando una propuesta de un ejercicio. Por lo presente declaro que tanto las imágenes adjuntas como la descripcióm fueron realizadas por cuenta propia. Al enviar este mensaje, de forma irreversible acepto que el nombre y la descripción presentados se publiquen bajo una licencia CC BY-SA y la licencia AGPLv3 con excepción de la tienda de aplicaciones. También doy consentimiento para procesar la(s) imágen(es) adjunta(s) en variante(s) low-poly. Después de que se procesen, evaluaré si estoy dispuesto a licenciarlos bajo la licencia CC BY-SA.

Nombre del ejercicio: %1s
Pasos del ejercicio:
%2s""",
} +
{
"tr": """Ayarlar""",
"nl": """Instellingen""",
"de": """Einstellungen""",
"ru": """Настройки""",
"pt": """Configurações""",
"en": """Settings""",
"it": """Impostazioni""",
"fr": """Paramètres""",
"eu": """Ezarpenak""",
"cs": """Nastavení""",
"id": """Pengaturan""",
"es": """Ajustes""",
} +
{
"tr": """Lütfen bir antrenman başlığı belirtin""",
"nl": """Geef de workout een naam""",
"de": """Bitte einen Namen für das Training eingeben""",
"ru": """Укажите название тренировки""",
"pt": """Por favor especifique o nome do treino""",
"en": """Please specify a workout title""",
"it": """Indica un titolo all'allenamento""",
"fr": """Veuillez préciser un titre pour l’entraînement""",
"eu": """Zehaztu entrenamenduaren izenburua""",
"cs": """Prosím poskytněte název tréninku""",
"id": """Tentukan judul latihan""",
"es": """Por favor especifica el título del entrenamiento""",
} +
{
"tr": """Lütfen en az 1 egzersiz ekleyin""",
"nl": """Voeg minimaal 1 oefening toe""",
"de": """Bitte mindestens 1 Übung hinzufügen""",
"ru": """Добавьте хотя бы 1 упражнение""",
"pt": """Por favor adicione ao menos um exercício""",
"en": """Please add at least 1 exercise""",
"it": """Aggiungi almeno un esercizio""",
"fr": """Veuillez ajouter au moins 1 exercice""",
"eu": """Gehitu ariketa 1 gutxienez""",
"cs": """Prosím přidejte alespoň 1 cvik""",
"id": """Harap tambahkan setidaknya 1 latihan""",
"es": """Por favor añade al menos 1 ejercicio""",
} +
{
"tr": """Süre""",
"nl": """Duur""",
"de": """Dauer""",
"ru": """Продолжительность""",
"pt": """Duração""",
"en": """Duration""",
"it": """Durata""",
"fr": """Durée""",
"eu": """Iraupena""",
"cs": """Délka""",
"id": """Durasi""",
"es": """Duración""",
} +
{
"tr": """Egzersiz süresi""",
"nl": """Duur van oefening""",
"de": """Übungsdauer""",
"ru": """Продолжительность упражнения""",
"pt": """Duração do exercício""",
"en": """Exercise duration""",
"it": """Durata esercizio""",
"fr": """Durée de l’exercice""",
"eu": """Ariketaren iraupena""",
"cs": """Délka cviku""",
"id": """Durasi latihan""",
"es": """Duración del ejercicio""",
} +
{
"tr": """Mola süresi""",
"nl": """Duur van pauze""",
"de": """Länge der Pause""",
"ru": """Длительность перерыва""",
"pt": """Duração da pausa""",
"en": """Break duration""",
"it": """Durata della pausa""",
"fr": """Durée de la pause""",
"eu": """Atsedenaldiaren iraupena""",
"cs": """Délka přestávky""",
"id": """Durasi istirahat""",
"es": """Duración del descanso""",
} +
{
"tr": """Özel""",
"nl": """Aangepast""",
"de": """Benutzerdefiniert""",
"ru": """Изменить длительность""",
"pt": """Customizado""",
"en": """Custom""",
"it": """Personalizza""",
"fr": """Personnaliser""",
"eu": """Pertsonalizatua""",
"cs": """Vlastní""",
"id": """Kustom""",
"es": """Personalizado""",
} +
{
"tr": """Sayısal olmayan""",
"nl": """Niet-numeriek""",
"de": """Nicht-numerisch""",
"ru": """Нечисловой""",
"pt": """Não numérico""",
"en": """Non-numeric""",
"it": """Non-numerico""",
"fr": """Non numérique""",
"eu": """Ez-zenbakizkoa""",
"cs": """Není číslo""",
"id": """Non-numerik""",
"es": """No numérico""",
} +
{
"tr": """Pozitif olmayan""",
"nl": """Niet-positief""",
"de": """Nicht-positive""",
"ru": """Отрицательный""",
"pt": """Não positivo""",
"en": """Nonpositive""",
"it": """Non positivo""",
"fr": """Non positif""",
"eu": """Ez positiboa""",
"cs": """Není kladné""",
"id": """Nonpositif""",
"es": """No positivo""",
} +
{
"tr": """Günlük bildirim""",
"nl": """Dagelijkse herinnering""",
"de": """Tägliche Benachrichtigung""",
"ru": """Ежедневное уведомление""",
"pt": """Notificação diária""",
"en": """Daily notification""",
"it": """Notifica giornaliera""",
"fr": """Notification journalière""",
"eu": """Eguneroko jakinarazpena""",
"cs": """Denní upozornění""",
"id": """Pemberitahuan harian""",
"es": """Notificaciones diarias""",
} +
{
"tr": """Antrenman yapmak için günlük bir hatırlatma""",
"nl": """Wordt dagelijks herinnerd om een workout te doen""",
"de": """Tägliche Trainingserinnerung""",
"ru": """Ежедневное напоминание о тренировках""",
"pt": """Um lembrete diário para fazer exercícios""",
"en": """A daily reminder to work out""",
"it": """Un promemoria quotidiano per allenarti""",
"fr": """Un rappel quotidien pour s’entraîner""",
"eu": """Eguneroko ariketarako oroigarria""",
"cs": """Denní připomenutí jít cvičit""",
"id": """Pengingat harian untuk berolahraga""",
"es": """Un recordatorio para entrenar""",
} +
{
"tr": """Antrenman kıyafetlerini giyme zamanı!""",
"nl": """Tijd om je sportkleding aan te trekken!""",
"de": """Es ist Zeit die Trainingsklamottten anzuziehen!""",
"ru": """Пора надеть спортивную одежду!""",
"pt": """Hora de colocar roupas de treino!""",
"en": """Time to put on workout clothes!""",
"it": """È ora di indossare abiti da allenamento!""",
"fr": """Il est temps de mettre des vêtements de sport !""",
"eu": """Ariketarako janzteko unea!""",
"cs": """Čas obléknout cvičební úbor!""",
"id": """Waktunya memakai pakaian olahraga!""",
"es": """¡Tiempo para llevar ropa de entrenamiento!""",
} +
{
"tr": """Taze ve zinde hissetmek sadece birkaç dakikanızı alır""",
"nl": """Het kost slechts een paar minuten van je tijd om je weer fris en fruitig te voelen""",
"de": """Es dauert nur ein paar Minuten, um sich frisch und gesund zu fühlen""",
"ru": """несколько минут, и вы почувствуете себя свежим и подтянутым""",
"pt": """Leva apenas alguns minutos para se sentir fresco e em forma""",
"en": """It takes just a few minutes to feel fresh and fit""",
"it": """Bastano pochi minuti per sentirsi freschi e in forma""",
"fr": """Il ne faut que quelques minutes pour se sentir frais et en forme""",
"eu": """Minutu gutxi batzuk nahikoa dira berritua eta indartsu sentitzeko""",
"cs": """Stačí jen pár minut, abyste se cítil/a svěží a fit""",
"id": """Hanya perlu beberapa menit untuk merasa segar dan bugar""",
"es": """Este toma solo unos minutos para refrescarse y estar en forma""",
} +
{
"tr": """Günlük hatırlatma""",
"nl": """Dagelijkse herinnering""",
"de": """Tägliche Erinnerung""",
"ru": """Ежедневное напоминание""",
"pt": """Lembre-me de exercitar diariamente""",
"en": """Daily reminder""",
"it": """Promemoria giornaliero""",
"fr": """Rappel quotidien""",
"eu": """Eguneroko oroigarri""",
"cs": """Připomínat, abych cvičil/a denně""",
"id": """Ingatkan saya untuk berolahraga setiap hari""",
"es": """Recordatorio diario""",
} +
{
"tr": """Kamera izni olmadan fotoğraf çekilemez""",
"nl": """Zonder camerarechten kunnen er geen foto's worden gemaakt""",
"de": """Um Fotos aufnehmen zu können, werden Berechtigungen für die Kamera benötigt""",
"ru": """Нужно разрешение на использование камеры""",
"pt": """Não posso tirar fotos sem a permissão de câmera""",
"en": """Can't take photos without camera permission""",
"it": """Non è possibile scattare foto senza il permesso della fotocamera""",
"fr": """Impossible de prendre des photos sans l’autorisation de l’appareil photo""",
"eu": """Ezin dira argazkiak atera kamera baimenik gabe""",
"cs": """Nelze fotografovat bez povolení fotoaparátu""",
"id": """Tidak dapat mengambil foto tanpa izin kamera""",
"es": """No se puede tomar fotos sin el permiso de cámara""",
} +
{
"tr": """Bildirim zamanı""",
"nl": """Tijdstip""",
"de": """Benachrichtigungszeitpunkt""",
"ru": """Повтор уведомления""",
"pt": """Tempo de notificação""",
"en": """Notification time""",
"it": """Tempo di notifica""",
"fr": """Heure de la notification""",
"eu": """Jakinarazpen ordua""",
"cs": """Čas upozornění""",
"id": """Waktu pemberitahuan""",
"es": """Hora de notificación""",
} +
{
"tr": """Önce bir egzersiz ekleyin""",
"nl": """Voeg eerst een oefening toe""",
"de": """Zuerst eine Übung hinzufügen""",
"ru": """Сначала добавьте упражнение""",
"pt": """Adicione um exercício primeiro""",
"en": """Add an exercise first""",
"it": """Prima aggiungi un esercizio""",
"fr": """Ajoutez d’abord un exercice""",
"eu": """Gehitu ariketa lehenbizi""",
"cs": """Nejprve musíte přidat cvičení""",
"id": """Tambahkan latihan terlebih dahulu""",
"es": """Añadir un ejercicio primero""",
} +
{
"tr": """Feeel hakkında""",
"nl": """Over Feeel""",
"de": """Über Feeel""",
"ru": """О Фииил""",
"pt": """Sobre Feeel""",
"en": """About Feeel""",
"it": """Informazioni su Feeel""",
"fr": """À propos de Feeel""",
"eu": """Buruz Feeel""",
"cs": """O Feeel""",
"id": """Tentang Feeel""",
"es": """Acerca de Feeel""",
} +
{
"tr": """Gizliliğinize saygı duyan açık kaynaklı bir evde antrenman uygulaması""",
"nl": """Een open source workout-app die je privacy respecteert""",
"de": """Eine quelloffene Workout-Anwendung für zu Hause, die deine Privatsphäre respektiert""",
"ru": """Приложение для домашних тренировок с открытым исходным кодом, которое уважает вашу частную жизнь""",
"pt": """Um aplicativo de código aberto para treinar em casa que respeita a sua privacidade""",
"en": """An open-source home workout app that respects your privacy""",
"it": """Un'applicazione di allenamento a casa con codice aperto che rispetta la tua riservatezza""",
"fr": """Une application d’exercice à domicile à code source ouvert qui respecte votre vie privée""",
"eu": """Irekia-iturri etxeko entrenamendu aplikazio hori zure pribatutasuna errespetatzen""",
"cs": """Open-source fitness aplikace, která respektuje vaše soukromí""",
"id": """Aplikasi olahraga dari rumah open-source yang menghormati privasi Anda""",
"es": """Una app de rutinas de ejercicio de código abierto que respeta tu privacidad tu privacidad""",
} +
{
"tr": """Özel süre (sn.)""",
"nl": """Aangepaste duur (in sec.)""",
"de": """Benutzerdefinierte Dauer (Sek.)""",
"ru": """Индивидуальная продолжительность (ы)""",
"pt": """Duração personalizada (s.)""",
"en": """Custom duration (s.)""",
"it": """Durata personalizzata (s.)""",
"fr": """Durée personnalisée (s.)""",
"eu": """Ohiko iraupena (s.)""",
"cs": """Vlastní délka (s.)""",
"id": """Durasi kustom (s.)""",
"es": """Duración personalizada (s.)""",
} +
{
"tr": """Değişikliklerden vazgeçilsin mi?""",
"nl": """Wijzigingen verwerpen?""",
"de": """Änderungen verwerfen?""",
"ru": """Отбрасывать изменения?""",
"pt": """Descarte alterações?""",
"en": """Discard changes?""",
"it": """Abbandonare le modifiche?""",
"fr": """Abandonner les modifications ?""",
"eu": """Baztertu aldaketak?""",
"cs": """Zahodit změny?""",
"id": """Batalkan perubahan?""",
"es": """¿Descartar cambios?""",
} +
{
"tr": """Tema""",
"nl": """Thema""",
"de": """Design""",
"ru": """Тема""",
"pt": """Tema""",
"en": """Theme""",
"it": """Tema""",
"fr": """Thème""",
"eu": """Gaia""",
"cs": """Vzhled""",
"id": """Tema""",
"es": """Tema""",
} +
{
"tr": """Sistem öntanımlı değeri""",
"nl": """Systeemthema""",
"de": """Systemstandard""",
"ru": """Стандартная система""",
"pt": """Padrão do sistema""",
"en": """System default""",
"it": """Predefinito del sistema""",
"fr": """Par défaut du système""",
"eu": """Sistema lehenetsia""",
"cs": """Dle systému""",
"id": """Default sistem""",
"es": """Por defecto""",
} +
{
"tr": """Açık""",
"nl": """Licht""",
"de": """Hell""",
"ru": """Свет""",
"pt": """Luz""",
"en": """Light""",
"it": """Chiaro""",
"fr": """Clair""",
"eu": """Argi""",
"cs": """Světlý""",
"id": """Cerah""",
"es": """Claro""",
} +
{
"tr": """Koyu""",
"nl": """Donker""",
"de": """Dunkel""",
"ru": """Темный""",
"pt": """Escuro""",
"en": """Dark""",
"it": """Scuro""",
"fr": """Sombre""",
"eu": """Ilun""",
"cs": """Tmavý""",
"id": """Gelap""",
"es": """Oscuro""",
} +
{
"tr": """Bazı aygıtlarda, bunun güvenilir bir şekilde çalışması için pil iyileştirmesini Feeel için devre dışı bırakmanız gerekebilir.""",
"nl": """Op sommige apparaten is het verstandig accu-optimalisatie uit te schakelen zodat Feeel betrouwbaar kan werken.""",
"de": """Auf einigen Geräten muss möglicherweise die Batterieoptimierung für Feeel deaktiviert werden, damit dies zuverlässig funktioniert.""",
"ru": """На некоторых устройствах для надежной работы Feeel может потребоваться отключить оптимизацию батареи.""",
"pt": """Em alguns dispositivos, pode ser necessário desactivar a optimização da bateria para que o Feeel funcione de forma fiável.""",
"en": """On some devices, you may need to disable battery optimization for Feeel for this to work reliably.""",
"it": """Su alcuni dispositivi, potrebbe essere necessario disabilitare l'ottimizzazione della batteria per Feeel affinché questo funzioni in modo affidabile.""",
"fr": """Sur certains appareils, il se peut que vous deviez désactiver l'optimisation de la batterie pour Feeel pour que ceci fonctionne de manière fiable.""",
"eu": """Gailu batzuk, behar ahal izango duzu desgaitu bateria optimizazioa Feeel hau fidagarrian lan egiteko.""",
"cs": """Na některých zařízeních může být nutné vypnout optimalizaci baterie pro Feeel, aby tato funkce spolehlivě fungovala.""",
"id": """Pada beberapa perangkat, Anda mungkin perlu menonaktifkan optimisasi baterai untuk Feel Bagi ini untuk bekerja dapat dipercaya.""",
"es": """En algunos dispositivos, es posible que necesites desactivar la optimización de batería para Feeel para que funcione correctamente.""",
} +
{
"tr": """Katılın""",
"nl": """Bijdragen""",
"de": """Mitmachen""",
"ru": """Участвуйте""",
"pt": """Participe""",
"en": """Participate""",
"it": """Partecipa""",
"fr": """Rejoignez""",
"eu": """Parte hartzeko""",
"cs": """Účastněte se""",
"id": """Berpartisipasi""",
"es": """Participar""",
} +
{
"tr": """Kaynak kodları""",
"nl": """Broncode""",
"de": """Quellcode""",
"ru": """Код источника""",
"pt": """Código fonte""",
"en": """Source code""",
"it": """Codice sorgente""",
"fr": """Code source""",
"eu": """Iturburu kodea""",
"cs": """Zdrojový kód""",
"id": """Kode sumber""",
"es": """Código fuente""",
} +
{
"tr": """Bağış yapın""",
"nl": """Doneren""",
"de": """Spenden""",
"ru": """Пожертвовать""",
"pt": """Doação""",
"en": """Donate""",
"it": """Dona""",
"fr": """Faire un don""",
"eu": """Eman""",
"cs": """Darovat""",
"id": """Donasi""",
"es": """Donar""",
} +
{
"tr": """URL açılamadı.""",
"nl": """URL kan niet worden geopend.""",
"de": """Kann URL nicht öffnen.""",
"ru": """Не смог открыть URL.""",
"pt": """Não foi possível abrir URL.""",
"en": """Could not open URL.""",
"it": """Impossibile aprire URL.""",
"fr": """Impossible d'ouvrir URL.""",
"eu": """Ezin ireki URL.""",
"cs": """Nelze otevřít $url.""",
"id": """Tidak dapat membuka URL.""",
"es": """No es posible abrir URL.""",
} +
{
"tr": """Antrenmanı başlat""",
"nl": """Workout starten""",
"de": """Starte Training""",
"ru": """Начать тренировку""",
"pt": """Começar treino""",
"en": """Start workout""",
"it": """Inizia l'allenamento""",
"fr": """Démarrer l’entraînement""",
"eu": """Hasi entrenamendua""",
"cs": """Spustit trénink""",
"id": """Mulai berolahraga""",
"es": """Iniciar entrenamiento""",
} +
{
"tr": """Antrenmanı devam ettir""",
"nl": """Workout hervatten""",
"de": """Training fortsetzen""",
"ru": """Продолжить тренировку""",
"pt": """Resumir treino""",
"en": """Resume workout""",
"it": """Riprendi l'allenamento""",
"fr": """Reprendre l’entraînement""",
"eu": """Berrekin entrenamendua""",
"cs": """Pokračovat v tréninku""",
"id": """Lanjutkan latihan""",
"es": """Continuar entrenamiento""",
} +
{
"tr": """Önceki egzersiz""",
"nl": """Vorige oefening""",
"de": """vorherige Übung""",
"ru": """Предыдущее упражнение""",
"pt": """Exercício anterior""",
"en": """Previous exercise""",
"it": """Esercizio precedente""",
"fr": """Exercice précédent""",
"eu": """Aurreko ariketa""",
"cs": """Předchozí cvik""",
"id": """Latihan sebelumnya""",
"es": """Ejercicio anterior""",
} +
{
"tr": """Sonraki egzersiz""",
"nl": """Volgende oefening""",
"de": """nächste Übung""",
"ru": """Следующее упражнение""",
"pt": """Próximo exercício""",
"en": """Next exercise""",
"it": """Esercizio successivo""",
"fr": """Exercice suivant""",
"eu": """Hurrengo ariketa""",
"cs": """Další cvik""",
"id": """Latihan berikutnya""",
"es": """Ejercicio siguiente""",
} +
{
"tr": """Egzersiz ekle""",
"nl": """Oefeningen toevoegen""",
"de": """Übung hinzufügen""",
"ru": """Добавить упражнение""",
"pt": """Adicionar exercício""",
"en": """Add exercises""",
"it": """Aggiungi esercizi""",
"fr": """Ajouter des exercices""",
"eu": """Gehitu ariketak""",
"cs": """Přidat cviky""",
"id": """Tambahkan latihan""",
"es": """Añadir ejercicios""",
} +
{
"tr": """Düzenle""",
"nl": """Aanpassen""",
"de": """Bearbeiten""",
"ru": """Правка""",
"pt": """Editar""",
"en": """Edit""",
"it": """Modifica""",
"fr": """Modifier""",
"eu": """Editatu""",
"cs": """Upravit""",
"id": """Sunting""",
"es": """Editar""",
} +
{
"tr": """Sil""",
"nl": """Verwijderen""",
"de": """Löschen""",
"ru": """Удалить""",
"pt": """Apagar""",
"en": """Delete""",
"it": """Elimina""",
"fr": """Supprimer""",
"eu": """Ezabatu""",
"cs": """Odstranit""",
"id": """Hapus""",
"es": """Borrar""",
} +
{
"tr": """Çoğalt""",
"nl": """Een afschrift maken""",
"de": """verdoppeln""",
"ru": """Дублировать""",
"pt": """Duplicar""",
"en": """Duplicate""",
"it": """Duplicare""",
"fr": """Dupliquer""",
"eu": """Bikoiztu""",
"cs": """Duplikovat""",
"id": """Duplikat""",
"es": """Duplicar""",
} +
{
"tr": """Bitti""",
"nl": """Klaar""",
"de": """Fertig""",
"ru": """Готово""",
"pt": """Pronto""",
"en": """Done""",
"it": """Fatto""",
"fr": """Terminé""",
"eu": """Egina""",
"cs": """Hotovo""",
"id": """Selesai""",
"es": """Hecho""",
} +
{
"tr": """İptal""",
"nl": """Annuleren""",
"de": """Abbrechen""",
"ru": """Отменить""",
"pt": """Cancelar""",
"en": """Cancel""",
"it": """Annulla""",
"fr": """Annuler""",
"eu": """Utzi""",
"cs": """Zrušit""",
"id": """Batal""",
"es": """Cancelar""",
} +
{
"tr": """Vazgeç""",
"nl": """Verwerpen""",
"de": """Verwerfen""",
"ru": """Бросить""",
"pt": """Descartar""",
"en": """Discard""",
"it": """Abbandona""",
"fr": """Abandonner""",
"eu": """Baztertu""",
"cs": """Zahodit""",
"id": """Buang""",
"es": """Descartar""",
} +
{
"tr": """Tamam""",
"nl": """Oké""",
"de": """OK""",
"ru": """ладно""",
"pt": """OK""",
"en": """OK""",
"it": """OK""",
"fr": """OK""",
"eu": """OK""",
"cs": """OK""",
"id": """Ok""",
"es": """Listo""",
} +
{
"tr": """Daha fazla bilgi""",
"nl": """Meer informatie""",
"de": """Mehr Infos""",
"ru": """Подробнее""",
"pt": """Mais informação""",
"en": """More info""",
"it": """Maggiori info""",
"fr": """Plus d’infos""",
"eu": """Informazio gehiago""",
"cs": """Více info""",
"id": """Info lebih lanjut""",
"es": """Más información""",
} +
{
"tr": """Özel antrenman oluştur""",
"nl": """Eigen workout samenstellen""",
"de": """Eigenes Training erstellen""",
"ru": """Создать свое упражнение""",
"pt": """Criar treino customizado""",
"en": """Create custom workout""",
"it": """Crea un allenamento personalizzato""",
"fr": """Créer un entraînement personnalisé""",
"eu": """Sortu entrenamendu pertsonala""",
"cs": """Vytvořit vlastní trénink""",
"id": """Buat latihan khusus""",
"es": """Crear entrenamiento personalizado""",
} +
{
"tr": """Özel egzersiz öner""",
"nl": """Deel je eigen workout met ons""",
"de": """Eigene Übung vorschlagen""",
"ru": """Предложить свое упражнение""",
"pt": """Propor exercício customizado""",
"en": """Propose custom exercise""",
"it": """Proponi un esercizio personalizzato""",
"fr": """Proposer un exercice personnalisé""",
"eu": """Proposatu ariketa pertsonalizatua""",
"cs": """Navrhnout vlastní cvik""",
"id": """Usulkan latihan khusus""",
"es": """Proponer ejercicio personalizado""",
} +
{
"tr": """E-posta ile gönder""",
"nl": """Versturen via e-mail""",
"de": """Per E-Mail einreichen""",
"ru": """Отправить письмо""",
"pt": """Enviar via e-mail""",
"en": """Submit via email""",
"it": """Invia via e-mail""",
"fr": """Soumettre par courriel""",
"eu": """Bidali e-mail bidez""",
"cs": """Odeslat e-mailem""",
"id": """Kirim melalui email""",
"es": """Enviar por correo""",
} +
{
"tr": """Galeriden fotoğraf ekle""",
"nl": """Foto toevoegen uit galerij""",
"de": """Foto aus der Gallerie hinzufügen""",
"ru": """Прикрепить фотографию""",
"pt": """Adicionar foto da galeria""",
"en": """Add photo from gallery""",
"it": """Aggiungi foto dalla Galleria""",
"fr": """Ajouter une photo de la galerie""",
"eu": """Gehitu argazkia galeriatik""",
"cs": """Přidat fotku z galerie""",
"id": """Tambahkan foto dari galeri""",
"es": """Añadir foto desde galería""",
} +
{
"tr": """Fotoğraf çek""",
"nl": """Foto maken""",
"de": """Foto aufnehmen""",
"ru": """Сфотографировать""",
"pt": """Tirar foto""",
"en": """Take a photo""",
"it": """Scatta una foto""",
"fr": """Prendre une photo""",
"eu": """Atera argazkia""",
"cs": """Vyfotit cvik""",
"id": """Ambil foto""",
"es": """Tomar una foto""",
} +
{
"tr": """Fotoğraf(lar)ınıza bir bağlantı ekleyin""",
"nl": """Voeg een link toe naar je foto('s)""",
"de": """Link zu deinem/n Foto(s) hinzufügen""",
"ru": """Добавить ссылку на фотографии""",
"pt": """Adicionar um link para sua(s) foto(s)""",
"en": """Add a link to your photo(s)""",
"it": """Aggiungi un link alla tua(e) foto""",
"fr": """Ajouter un lien vers vos photos""",
"eu": """Gehitu esteka zure argazkietara""",
"cs": """Přidat odkaz k fotce/fotkám""",
"id": """Tambahkan tautan ke foto Anda""",
"es": """Añadir un enlace a su(s) foto(s)""",
} +
{
"tr": """Sesli komutları kullan""",
"nl": """Stembediening gebruiken""",
"de": """Sprachbefehle verwenden""",
"ru": """Используйте голосовые команды""",
"pt": """Usar comandos de voz""",
"en": """Use voice commands""",
"it": """Usa comandi vocali""",
"fr": """Utiliser les commandes vocales""",
"eu": """Erabili ahots-komandoak""",
"cs": """Použít hlasové příkazy""",
"id": """Gunakan perintah suara""",
"es": """Usar comandos de voz""",
} +
{
"tr": """Zamanlamayı ayarla""",
"nl": """Timing aanpassen""",
"de": """Zeiten anpassen""",
"ru": """Отрегулировать время""",
"pt": """Ajustar tempo""",
"en": """Adjust timing""",
"it": """Regola i tempi""",
"fr": """Ajuster le minutage""",
"eu": """Doitu denbora""",
"cs": """Upravit časování""",
"id": """Sesuaikan waktu""",
"es": """Ajustar ritmo""",
} +
{
"tr": """Zamanlamayı düzenleme tamamlandı""",
"nl": """Aanpassen afronden""",
"de": """Fertig mit der Bearbeitung""",
"ru": """Время редактирования""",
"pt": """Cronograma de edição""",
"en": """Done editing timing""",
"it": """Modifica dei tempi finita""",
"fr": """Modification de la durée terminée""",
"eu": """Egin editatzeko denbora""",
"cs": """Časování upraveno""",
"id": """Waktu pengeditan selesai""",
"es": """Edición de tiempo terminada""",
} +
{
"tr": """Bilimsel 7 dakikalık antrenman""",
"nl": """Wetenschappelijk bewezen 7-minutenworkout""",
"de": """Klassisches 7-Minuten-Training""",
"ru": """7 минут тренировки""",
"pt": """Treino científico de 7 minutos""",
"en": """Scientific 7 minute workout""",
"it": """Allenamento scientifico di 7 minuti""",
"fr": """Entraînement scientifique de 7 min""",
"eu": """7 minututako entrenamendu zientifikoa""",
"cs": """Vědecký sedmiminutový trénink""",
"id": """Latihan ilmiah 7 menit""",
"es": """Entrenamiento científico de 7 minutos""",
} +
{
"tr": """Bacak antrenmanı""",
"nl": """Beenworkout""",
"de": """Bein-Training""",
"ru": """Тренировка ног""",
"pt": """Treino de perna""",
"en": """Leg workout""",
"it": """Allenamento delle gambe""",
"fr": """Entraînement des jambes""",
"eu": """Hanketarako entrenamendua""",
"cs": """Trénink nohou""",
"id": """Latihan kaki""",
"es": """Entrenamiento de piernas""",
} +
{
"tr": """Jack zıplama""",
"nl": """Klapsprongen""",
"de": """Hampelmänner""",
"ru": """Прыжки""",
"pt": """Polichinelos""",
"en": """Jumping jacks""",
"it": """Jumping jack""",
"fr": """Sauts en étoile""",
"eu": """Saltoka katu""",
"cs": """Skákací panák""",
"id": """Jumping jack""",
"es": """Polichilenas""",
} +
{
"tr": """1. Ayaklar bir arada ve kollar yanlarda olacak şekilde ayakta durun
2. Bacaklar geniş açılacak ve eller baş üzerinde birbirine değecek şekilde zıplayın
3. Tekrarlayın""",
"nl": """1. Staan met voeten samen en armen aan de zijkanten
2. Spring naar een positie met de benen wijd uitgespreid en de handen raken overhead
3. Herhalen""",
"de": """1. Stehe mit den Füßen zusammen und den Armen an den Seiten.
2. Springe in eine Position, in der die Beine weit gespreizt sind und die Hände sich über Kopf berühren.
3. Wiederhole""",
"ru": """1. Встаньте, ноги вместе, руки по бокам.
2. Прыгните в положение с широко расставленными ногами и руками, соприкасающимися над головой.
3. Повторите""",
"pt": """1. Fique com seus pés juntos e os braços em repouso de cada lado
2. Pule para uma posição em que suas pernas fiquem abertas e as mãos toquem sob sua cabeça
3. Repita""",
"en": """1. Stand with feet together and arms at the sides
2. Jump to a position with the legs spread wide and the hands touching overhead
3. Repeat""",
"it": """1. Stai in piedi, a piedi uniti e con le braccia lunghi i fianchi, ginocchia e gomiti leggermente piegati
2. Fai un piccolo salto, nel mentre divarica le gambe alla larghezza delle spalle e porta le braccia sopra la testa fino a toccarsi
3. Ripeti""",
"fr": """1. Debout, pieds joints et bras le long du corps
2. Sauter jusqu'à une position où les jambes sont écartées et les mains se touchent au-dessus de la tête.
3. Répétez""",
"eu": """1. Jarri tente, oinak elkarrekin eta besoak alboetan
2. Saltatu hankan zabalduz eta eskuak buruaren gainetik elkartuz
3. Errepikatu""",
"cs": """1. Stůj vzpřímeně, nohy těsně vedle sebe a ruce podél těla
2. Skoč na místě a roztáhni přitom nohy bez prohnutí kolen a rukama tleskni nad hlavou
3. Skoč zpět a neustále opakuj""",
"id": """1. Berdiri dengan kaki bersama-sama dan lengan di sisi
2. Melompat ke posisi dengan kaki melebar dan tangan menyentuh di atas kepala
3. Ulangi""",
"es": """1. Párese con los pies juntos y los brazos a los lados
2. Salte a una posición con las piernas abiertas y las manos tocandose por encima de la cabeza
3. Repita""",
} +
{
"tr": """Duvara yaslanarak oturma""",
"nl": """Muurzitten""",
"de": """Wand sitzen""",
"ru": """Стенка""",
"pt": """Agachamento parede""",
"en": """Wall sit""",
"it": """Seduta a muro""",
"fr": """Assis dos au mur""",
"eu": """Horman eseri""",
"cs": """Sed u stěny""",
"id": """Duduk di dinding""",
"es": """Asiento en pared""",
} +
{
"tr": """1. Öne bakacak şekilde duvara yaslanın, ayaklar yere sıkıca oturtulmuş, omuz genişliğinde açılmış ve duvardan yaklaşık 60 cm uzakta olsun
2. Bacaklar dik açı yapana kadar sırtınızı bastırarak duvardan aşağı kaydırın. Dizler doğrudan ayak bileklerinin üzerinde olmalıdır
Kuadriseps ağrısı normaldir, dizde veya diz kapağında ağrı hissederseniz durun""",
"nl": """1. Leun tegen de muur en zet je voeten stevig op de grond; houd je schouders los en 60 cm van de muur verwijderd.
2. Zak naar beneden en zorg dat je rug tegen de muur blijft totdat je knieën zich direct boven de enkels bevinden.
Pijn in je dijbeenspieren is normaal. Stop als je pijn in je knie of knieholte voelt""",
"de": """1. Lehne Dich an die Wand, mit Blick nach vorne und mit den Füßen fest auf dem Boden, schulterbreit auseinander und etwa einen Meter von der Wand entfernt
2. Rutsche mit dem Rücken an der Wand entlang, bis die Beine einen rechten Winkel bilden. Die Knie sollten direkt über den Knöcheln sein
Schmerzen im Quadrizeps sind normal, höre auf, wenn Du Schmerzen im Knie oder in der Kniescheibe spürst""",
"ru": """1. Станьте спиной к стене, прислонитесь. Ноги подайте чуть вперед, расставив их на ширине плеч. Носки разверните в разные стороны.
2. Плавно скользите вниз по стене, держа спину прижатой к ней, пока ноги не окажутся под прямым углом.
Боль в четырехглавой мышце нормальная, прекратите, если чувствуете боль в колене или коленной чашечке""",
"pt": """1. Encoste na parede, de frente com os pés firmes no chão, alinhados na largura dos ombros e afastados da parede cerca de 60 centímetros
2. Deslize pela parede, mantendo as costas pressionada, até que as pernas fiquem em ângulo reto, paralelas ao chão. Os joelhos devem estar diretamente acima dos tornozelos.
Dor no quadríceps é normal. Pare se sentir dor nos joelhos ou na rótula do joelho""",
"en": """1. Lean against the wall, facing forward and with feet planted firmly on the ground, shoulders width apart and about 2 feet away from the wall
2. Slide down the wall, keeping the back pressed to it, until legs are at a right angle. The knees should be directly above the ankles
Quadricep pain is normal, stop if feeling pain in the knee or kneecap""",
"it": """1. Appoggiati al muro, rivolto in avanti e con i piedi ben piantati sul terreno, le spalle divaricate e a circa 2 piedi di distanza dal muro
2. Scivola giù lungo il muro, tenendo la schiena premuta contro di esso, fino a quando le gambe sono ad angolo retto. Le ginocchia dovrebbero essere direttamente sopra le caviglie
Il dolore al quadricipite è normale, interrompi se avverti dolore al ginocchio o alla rotula""",
"fr": """1. Appuyez-vous contre le mur, en regardant vers l'avant, les pieds fermement plantés au sol, écartés de la largeur des épaules et à une distance d'environ 60 cm du mur.
2. Glissez le long du mur, en gardant le dos appuyé contre lui, jusqu'à ce que les jambes forment un angle droit. Les genoux doivent être directement au-dessus des chevilles.
La douleur au quadriceps est normale, arrêtez si vous ressentez une douleur au genou ou à la rotule""",
"eu": """1. Jarri hormaren kontra, kanpora begira, oinen platak lurrean tinko, besaburuen altuerara zabalduta eta hormatik gutxi gora behera 60 zentimetrotara
2. Irristatu hormatik behera, bizkarra hormaren kontra mantenduz, hankak angelu zuzenean dauden arte. Belaunak zuzenean orkatilen gainean egon beharko lukete.
Koadrizepsean mina arrunta da, baina gelditu mina belaunean edo errotulan nabarituz gero""",
"cs": """1. Opřete se o zeď, směřující dopředu a s nohama pevně zasazenými na zemi, šířka ramen od sebe a asi 2 nohy od zdi
2. Posuňte dolů po stěně a držte záda přitlačenou k ní, dokud nohy nejsou v pravém úhlu. Kolena by měla být přímo nad kotníky
Quadricep bolest je normální, zastavte se, pokud máte pocit bolesti v koleni nebo kolenním kloubu""",
"id": """1. Bersandar ke dinding, menghadap ke depan dan dengan kaki tertanam kuat di tanah, selebar bahu dan sekitar 2 kaki dari dinding
2. Geser ke bawah dinding, dengan menahan punggung ditekan, sampai kaki berada pada sudut kanan. Lutut harus tepat di atas pergelangan kaki
Nyeri paha depan normal, hentikan jika merasakan nyeri pada lutut atau tempurung lutut""",
"es": """1. Apóyese en la pared, mirando hacia adelante y con los pies plantados firmemente en el suelo, sus hombros deben separarse y estar a 50 centímetros de la pared
2. Deslízate por la pared, manteniendo la espalda presionada a ella, hasta que las piernas estén en ángulo recto. Las rodillas deben estar directamente sobre los tobillos
El dolor en el cuádriceps es normal, deténgase si siente dolor en la rodilla o en la rótula""",
} +
{
"tr": """Şınav""",
"nl": """Opdrukken""",
"de": """Liegestütze""",
"ru": """Отжимания""",
"pt": """Flexão de braços""",
"en": """Push-ups""",
"it": """Flessioni""",
"fr": """Pompes""",
"eu": """Flexioak""",
"cs": """Kliky""",
"id": """Push-up""",
"es": """Lagartijas""",
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
5. Herhaal vanaf stap 3""",
"de": """1. Lege Dich auf den Bauch
2. Lege Deine Hände in die Nähe der Ohren
3. Hebe mit den Armen den Bauch an, bis die Arme gerade sind, und halte den Rücken gerade
4. Beuge die Arme bis die Brust fast den Boden berührt und stelle sicher, dass der Rücken gerade ist
5. Wiederhole ab Schritt 3""",
"ru": """1. Лечь на горизонтальную ровную поверхность.
2. Руки при этом должны быть на ширине плеч.
3. Разогните руки, пока руки и спина не выпрямятся.
4. Согните руки, пока грудь почти не коснется земли, убедившись, что спина выпрямлена. 
5. Повторите с шага 3""",
"pt": """1. Deite-se de barriga para baixo
2. Coloque suas mãos perto dos ouvidos
3. Use suas mão para levantar a barriga até que os braços estejam retos, mantendo as costas retas
4. Dobre os braços até que o peito quase toque o chão, certificando-se de que as costas estejam retas
5. Repita a partir do passo 3""",
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
"fr": """1. Allongez-vous sur le ventre
2. Placez vos mains près de vos oreilles
3. Utilisez vos bras pour soulever votre ventre jusqu'à ce que les bras soient droits, en gardant le dos droit.
4. Pliez les bras jusqu'à ce que la poitrine touche presque le sol, en vous assurant que le dos est droit.
5. Répétez à partir de l'étape 3""",
"eu": """1. Etzan buruz behera
2. Jarri eskuak lurrean belarrietatik hurbil
3. erabili besoak zure sabela lurretik altxatzeko besoak zuzen jarri arte, bizkarra beti zuzen mantenduz
4. Tolestu besoak paparrak ia lurra ukitu arte, ziurtatu bizkarra zuzen mantentzen duzula
5. Errepikatu 3. puntutik""",
"cs": """1. Lehněte si na břicho
2. Položte ruce blízko uší
3. Použijte ruce, abyste zvedli žaludek, dokud nejsou paže rovné, držte záda rovně
4. Ohněte paže, dokud se hrudník téměř nedotkne země, ujistěte se, že záda je rovná
5. Opakujte od kroku 3""",
"id": """1. Berbaringlah di perut Anda
2. Letakkan tangan Anda di dekat telinga Anda
3. Gunakan lengan Anda untuk mengangkat perut Anda sampai lengan lurus, menjaga punggung lurus
4. Tekuk lengan sampai dada hampir menyentuh tanah, memastikan punggung lurus
5. Ulangi dari Langkah 3""",
"es": """1. Acuéstese boca abajo.
2. Ponga sus manos cerca de sus orejas.
3. Usa los brazos para levantar el estómago hasta que los brazos estén rectos, manteniendo la espalda recta
4. Doble los brazos hasta que el pecho casi toque el suelo, asegurándose de que la espalda esté recta.
5. Repita desde el paso 3""",
} +
{
"tr": """Yarım mekik""",
"nl": """Crunch""",
"de": """Bauchpressen""",
"ru": """Хрустит""",
"pt": """Abdominal""",
"en": """Crunches""",
"it": """Addominali""",
"fr": """Abdominaux""",
"eu": """Abdominal karraskak""",
"cs": """Sedolehy""",
"id": """Crunch""",
"es": """Abdominales""",
} +
{
"tr": """1. Dizlerinizi bükerek yere sırtüstü yatın.
2. Omuzları leğen kemiğine doğru bükün. Eller boynun arkasında veya yanında olabilir ya da göğsün üzerinden geçebilir.
3. Tekrarlayın""",
"nl": """1. Ga op je rug liggen en buig je knieën.
2. Draai je schouders richting je bekken. Houd je handen achter of naast je nek of kruislings over je borstkas.
3. Herhaal""",
"de": """1. Lege Dich mit dem Gesicht nach oben mit gebeugten Knien auf den Boden.
2. Beuge die Schultern zum Becken. Die Hände können hinter oder neben dem Nacken oder gekreuzt über der Brust liegen.
3. Wiederhole""",
"ru": """1. Лягте лицом вверх на пол, согнув колени.
2. Поднимите корпус в направлении согнутых колен. Уберите руки под затылок или скрестите на груди;
3. Повторить""",
"pt": """1. Deite-se de barriga para cima no chão com os joelhos dobrados.
2. Curve os ombros em direção a pélvis. As mãos podem ficar atrás ou do lado do pescoço ou cruzadas sobre o peito.
3. Repita""",
"en": """1. Lie down face up on the floor with knees bent.
2. Curl the shoulders towards the pelvis. The hands can be behind or beside the neck or crossed over the chest.
3. Repeat""",
"it": """1. Sdraiati a pancia in su sul pavimento con le ginocchia piegate.
2. Solleva il busto verso il bacino, a 30° / 40° dal suolo. Le mani possono essere dietro o accanto al collo o incrociate sul petto.
3. Ripeti""",
"fr": """1. Allongez-vous sur le sol, face contre terre, genoux pliés.
2. Courbez les épaules vers le bassin. Les mains peuvent être derrière ou à côté du cou ou croisées sur la poitrine.
3. Répétez""",
"eu": """1. Etzan buruz gora lurrean belaunak tolestuta.
2. Kizkurtu besaburuak pelbiserantz. Eskuak lepoaren atzean edo ondoan egon daitezke, edo bularrean gurutzatuta.
3. Errepikatu""",
"cs": """1. Lehni si na zem hlavou nahoru s pokrčenými koleny.
Zvedni záda tak, aby se tvá ramena co nejblíže přiblížily ke kolenům. Plosky nohou včetně prstů by měly zůstat na zemi. Ruce mohou být za hlavou nebo přeložené v kříž na hrudi.
3. Opakuj""",
"id": """1. Tiarap di lantai dengan lutut bengkok.
2. Ikatkan bahumu ke pinggulnya. Tangan bisa berada di belakang atau di samping leher atau menyeberang di atas dada.
3. Ulangi""",
"es": """1. Acuéstese boca arriba en el suelo con las rodillas dobladas.
2. Flexione los hombros hacia la pelvis. Las manos pueden estar detrás o al costado del cuello o cruzadas sobre el pecho.
3. Repita""",
} +
{
"tr": """Adım atma""",
"nl": """Opstappen""",
"de": """Steigungen""",
"ru": """Степ-ап""",
"pt": """Progressos""",
"en": """Step-ups""",
"it": """Step""",
"fr": """Marches""",
"eu": """Eskailerak""",
"cs": """Výšlapy""",
"id": """Step-up""",
"es": """Subida a peldaño""",
} +
{
"tr": """1. Sandalyeye dönük şekilde durun
2. Sandalyeye çıkın
3. Sandalyeden inin
4. Tekrarlayın""",
"nl": """1. Ga voor een stoel staan.
2. Ga op de stoel staan.
3. Ga van de stoel af.
4. Herhaal""",
"de": """1. Stelle Dich vor einen Stuhl
2. Steige auf den Stuhl
3. Steige vom Stuhl
4. Wiederhole""",
"ru": """1. Встаньте перед стулом
2. Встаньте на стул
3. Слезьте со стула
4. Повторите""",
"pt": """1. Fique de pé de frente para uma cadeira
2. Suba na cadeira
3. Desça da cadeira
4. Repita""",
"en": """1. Stand facing a chair
2. Step up onto the chair
3. Step off the chair
4. Repeat""",
"it": """1. Stare in piedi di fronte a una sedia
2. Salire sulla sedia
3. Scendere dalla sedia
4. Ripeti""",
"fr": """1. Tenez-vous debout face à une chaise
2. Montez sur la chaise
3. Descendez de la chaise
4. Répétez""",
"eu": """1. Jarri tente aulki baten aurrean
2. Igo aulkira
3. Jaitsi aulkitik
4. Errepikatu""",
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
} +
{
"tr": """Çömelme""",
"nl": """Hurkzitten""",
"de": """Kniebeugen""",
"ru": """Приседания""",
"pt": """Agachamentos""",
"en": """Squats""",
"it": """Squat (Stacchi)""",
"fr": """Accroupi""",
"eu": """Makurtzeak""",
"cs": """Dřepy""",
"id": """Jongkok""",
"es": """Sentadillas""",
} +
{
"tr": """1. Ayaklar omuz genişliğinde açık durun
2. Kalçayı geriye doğru itin ve gövdeyi aşağı indirmek için dizleri ve kalçayı bükün
3. Tekrarlayın""",
"nl": """1. Ga staan en zet je voeten zó dat ze in verhouding staan met je schouders.
2. Draai je heupen naar achteren en buig je knieën en heupen om je bovenlichaam naar beneden te duwen.
3. Herhaal""",
"de": """1. Stelle Dich mit schulterbreit auseinander stehenden Füßen auf
2. Bewege die Hüften nach hinten und beuge die Knie und Hüften, um den Oberkörper zu senken
3. Wiederhole""",
"ru": """1. Встаньте так, чтобы ноги были на ширине плеч
2. Отведите бедра назад и согните колени, чтобы опустить туловище
3. Повторить""",
"pt": """1. Fique com os pés alinhados com os ombros
2. Mova o quadril para trás e dobre os joelhos e o quadril para abaixar o troco
3. Repita""",
"en": """1. Stand with feet shoulder-width apart
2. Move the hips back and bend the knees and hips to lower the torso
3. Repeat""",
"it": """1. Stai con i piedi alla larghezza delle spalle
2. Sposta i fianchi indietro e piega le ginocchia e i fianchi per abbassare il busto
3. Ripeti""",
"fr": """1. Debout, les pieds écartés à la largeur des épaules
2. Déplacez les hanches vers l'arrière et pliez les genoux et les hanches pour abaisser le torse.
3. Répétez""",
"eu": """1. Jarri tente oinak besaburuen altueran
2. Bota aldaka atzera eta tolestu belaunak eta aldaka enborra jaisteko
3. Errepikatu""",
"cs": """1. Stůj s nohama vzdálenými o šířku ramen.
2. Posuň kyčel dozadu a pokrč kolena, dokud nebudeš mít stehna paralelně se zemí.
3. Opakuj""",
"id": """1. Berdiri dengan kaki selebar bahu
2. Pindahkan pinggul ke belakang dan tekuk lutut dan pinggul ke bawah batang tubuh
3. Ulangi""",
"es": """1. Levántese con los pies separados al ancho de hombros
2. Mueva las caderas hacia atrás y doble las rodillas y caderas para bajar el torso
3. Repita""",
} +
{
"tr": """Sandalye ile dalma""",
"nl": """Stoelzakken""",
"de": """Stuhl Stütze""",
"ru": """Обратное отжимание от скамьи""",
"pt": """Tríceps no banco""",
"en": """Chair dips""",
"it": """Piegamenti sulla sedia""",
"fr": """Dips sur chaise""",
"eu": """Aulki sartu-irtenak""",
"cs": """Dipy na židli""",
"id": """Kursi dips""",
"es": """Bajadas en silla""",
} +
{
"tr": """1. Sırt düz, eller ön kısmını tutacak şekilde bir sandalyenin ön tarafına oturun
2. Sandalyenin kenarını tutmaya devam ederek kollarınızı uzatın, kalçanızı kaldırın ve sandalyeden birkaç cm uzakta olacak şekilde hafifçe öne doğru yürüyün.
3. Sırtınızı düz tutarak, kollar dik açıda olana kadar vücudunuzu yavaşça indirin.
4. Kollarınızı uzatarak vücudunuzu tekrar önceki durumuna kaldırın
5. 3. ve 4. adımları tekrarlayın""",
"nl": """1. Ga zitten op de voorkant van een stoel, rug recht, handen die de voorkant houden
2. Nog steeds met de rand van de stoel, armen uitgebreid, til je kont en loop iets naar voren, zodat het een paar centimeter van de stoel.
3. Laat uw lichaam langzaam zakken, houd de rug recht, totdat de armen in een rechte hoek staan
4. Til je lichaam weer op naar de vorige positie, armen uitgestrekt
5. Herhaal stap 3 en 4""",
"de": """1.Setze Dich auf die Vorderkante eines Stuhls, Rücken gerade, Hände halten die Vorderkante
2. Halten Dich mit ausgestreckten Armen an der Stuhlkante fest, hebe Dein Gesäß an und gehe leicht nach vorne, so dass es einige Zentimeter vom Stuhl entfernt ist.
3. Senke Deinen Körper langsam ab, halte dabei den Rücken gerade, bis die Arme einen rechten Winkel bilden
4. Hebe Deinen Körper wieder in die vorherige Position, Strecke die Arme
5. Wiederhole die Schritte 3 und 4""",
"ru": """1. Сядьте на передний край стула, спина прямая, руки держатся за передний край
2. Все еще держась за край стула, вытянув руки, поднимите ягодицы и слегка подвиньтесь вперед, чтобы они оказались в нескольких сантиметрах от стула.
3. Медленно опустите тело, держа спину прямо, пока руки не окажутся под прямым углом
4. Снова поднимите тело в прежнее положение, вытянув руки
5. Повторите шаги 3 и 4""",
"pt": """1. Sente-se na borda de uma cadeira, costas retas, mãos segurando a borda dianteira
2. Ainda segurando a borda da cadeira, braços estendidos, levante o traseiro e caminhe um pouco para frente de modo que fique a pouco centímetros da cadeira
3. Abaixe lentamente seu corpo, mantendo as costas retas, até que os braços fiquem em ângulo reto
4. Levante seu corpo novamente para a posição anterior, braços estendidos
5. Repita os passos 3 e 4""",
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
"fr": """1. Asseyez-vous sur le bord avant d'une chaise, le dos droit, les mains tenant le bord avant.
2. Toujours en tenant le bord de la chaise, bras tendus, soulevez vos fesses et avancez légèrement de façon à ce qu'elles soient à quelques centimètres de la chaise.
3. Abaissez lentement votre corps, en gardant le dos droit, jusqu'à ce que les bras forment un angle droit.
4. Relevez votre corps jusqu'à la position précédente, bras tendus.
5. Répétez les étapes 3 et 4""",
"eu": """1. Eseri aulki baten aurreko ertzean, bizkarra zuzen, eskuak aurreko ertzari eusten.
2. Aulkira eusten, besoak zuzen, altxa ipurdia eta aurreratu oinak apur bat, aulkitik zentimetro batzuetara.
3. Astiro jaitsi zure gorputza, bizkarra zuzen mantenduz, besoak angelu zuzenean egon arte.
4. Altxa zure gorputza berriro aurreko posiziora, besoak zuzen
5. Errepikatu 3. eta 4. urratsak""",
"cs": """1. Posaďte se na přední okraj židle, záda rovně, ruce držící přední okraj
2. Stále drží okraj židle, paže natažené, zvedněte zadek a lehce jděte dopředu, takže je to pár centimetrů od židle.
3. Pomalu snižte své tělo a držte záda rovně, dokud nejsou ramena v pravém úhlu
4. Zvedněte své tělo znovu do předchozí polohy, ramena prodloužena
5. Opakujte kroky 3 a 4""",
"id": """1. Duduk di tepi depan kursi, punggung lurus, tangan memegang tepi depan
2. Masih memegang tepi kursi, lengan diperpanjang, mengangkat pantat Anda dan berjalan maju sedikit sehingga beberapa inci dari kursi.
3. Perlahan-lahan turunkan tubuh Anda, menjaga punggung lurus, sampai lengan berada di sudut yang tepat
4. Angkat tubuh Anda lagi ke posisi sebelumnya, lengan diperpanjang
5. Ulangi Langkah 3 dan 4""",
"es": """1. Siéntese en el borde delantero de una silla, con la espalda recta y las manos sosteniendo el borde delantero
2. Sujetando el borde de la silla, con los brazos extendidos, levante los glúteos y camine un poco hacia adelante para que esté a unos centímetros de la silla
3. Baje lentamente su cuerpo, manteniendo la espalda recta, hasta que los brazos estén en ángulo recto
4. Levante el cuerpo de nuevo a la posición anterior con los brazos extendidos.
5. Repita los pasos 3 y 4""",
} +
{
"tr": """Plank hareketi""",
"nl": """Planken""",
"de": """Unterarmstütz""",
"ru": """Планка""",
"pt": """Prancha horizontal""",
"en": """Forearm plank""",
"it": """Tavola""",
"fr": """Planche""",
"eu": """Ohola""",
"cs": """Prkno""",
"id": """Papan""",
"es": """Plancha""",
} +
{
"tr": """1. Kollar düz ve dizler bükülü olarak dört ayak üzerine eğilin
2. Bacaklarınız düz olana kadar ayaklarınızı geriye doğru yürütün
3. Bu durumda kalın""",
"nl": """1. Ga op z'n hondjes zitten, strek je armen en buig je benen.
2. Loop met je voeten naar achteren totdat je benen gestrekt zijn.
3. Houd deze positie vast""",
"de": """1. Gehe auf alle Viere, mit gestreckten Armen und gebeugten Knien.
2. Gehe mit den Füßen nach hinten, bis sie gestreckt sind.
3. Halte diese Position""",
"ru": """1. Встаньте на четвереньки, руки прямые, колени согнуты
2. Отведите ноги назад, пока они не вытянутся
3. Удерживайте это положение""",
"pt": """1. Desça de quatro, com os braços retos e os joelhos flexionados
2. Mova seus pés para trás até que eles sejam estendidos
3. Mantenha esta posição""",
"en": """Starting position:
1. Start down on all fours.
Arms should bent at a right angle, with shoulders right over elbows.
Back should be straight, the whole body in a straight line.

Steps: 1. Hold this position.""",
"it": """1. Mettiti a quattro zampe, con gli avambracci appoggiati e le ginocchia piegate
2. Cammina indietro fino a quando le gambe non sono estese
3. Mantieni questa posizione""",
"fr": """1. Mettez-vous à quatre pattes, les bras tendus et les genoux pliés.
2. Reculez vos pieds jusqu'à ce qu'ils soient en extension
3. Maintenez cette position""",
"eu": """1. Jarri lau hankatan, besoak zuzen eta belaunak tolestuta
2. Bota oinak atzera hankak zuzen jarri arte
3. Eutsi posizio honetan""",
"cs": """1. Dostat dolů na všech čtyřech, s rukama rovně a kolena ohnuté
2. Projděte nohy zpět, dokud nejsou prodlouženy
3. Držte tuto pozici""",
"id": """1. Mendapatkan ke bawah merangkak, dengan lengan lurus dan lutut membungkuk
2. Berjalanlah kaki Anda kembali sampai mereka diperpanjang
3. Tahan posisi ini""",
"es": """1. Póngase en cuatro patas, con los brazos rectos y las rodillas flexionadas
2. Camine con los pies hacia atrás hasta que estén extendidos
3. Mantenga esta posición""",
} +
{
"tr": """Yüksek dizler""",
"nl": """Stilstaand joggen""",
"de": """Knie hoch""",
"ru": """Бег на месте""",
"pt": """Joelhos para cima""",
"en": """High knees""",
"it": """Corsa sul posto con ginocchia alte""",
"fr": """Genoux hauts""",
"eu": """Belaun garaiak""",
"cs": """Vysoká kolena""",
"id": """Lutut tinggi""",
"es": """Rodillas elevadas""",
} +
{
"tr": """1. Dizleri kaldırabildiğiniz kadar yukarı kaldırarak ve bacakları hızlı bir şekilde değiştirerek olduğunuz yerde koşun""",
"nl": """1. Sta stil, maar maak een rennende beweging - duw je knieën zover mogelijk omhoog en wissel je benen af""",
"de": """1. Laufen Sie auf der Stelle, halte die Knie so hoch wie möglich und wechseln Sie die Beine in einem schnellen Tempo""",
"ru": """1. Бегать на месте, поднимая колени настолько высоко, насколько это удобно, и быстро переключая ноги""",
"pt": """1. Corra no lugar, colocando os joelhos o mais alto o confortável e trocando de pernas a um ritmo rápido""",
"en": """1. Run in place, putting knees as high up as is comfortable and switching legs at a quick pace""",
"it": """1. Fai una corsa veloce sul posto, porta in alto le ginocchia ma senza sforzare""",
"fr": """1. Courez sur place, en plaçant les genoux aussi haut que possible et en changeant de jambe à un rythme rapide""",
"eu": """1. Egin korrika tokian, belaunak eroso den bezain beste altxatuz hanka batetik bestera erritmo bizian""",
"cs": """1. Běh na místě, uvedení kolena tak vysoko, jak je pohodlné a přepínání nohy rychlým tempem""",
"id": """1. Run in place, put knees as high as is comfortable and switching legs at a quick pace""",
"es": """1. Trote en el lugar, con las rodillas tan altas como pueda y cambie de pierna a un ritmo rápido""",
} +
{
"tr": """Lunge hareketi""",
"nl": """Uitvalspassen""",
"de": """Ausfallschritte""",
"ru": """Выпады""",
"pt": """Investidas""",
"en": """Lunges""",
"it": """Affondi""",
"fr": """Fentes""",
"eu": """Mugitu""",
"cs": """Výpady""",
"id": """Paru-paru""",
"es": """Estocadas""",
} +
{
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
"de": """1.Stehe mit geradem Rücken
2. Mache mit dem linken Bein einen großen Schritt nach vorne
3. Bringe Dein Becken nach unten, bis Du mit dem rechten Knie fast den Boden berührst
4. Bringen Dein Becken wieder nach oben
5. Kehre in den Stand zurück, indem Du einen Schritt zurücktrittst 
6. Wiederhole die Übung und wechsel dabei jedes Mal die Beine""",
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
"fr": """1. Tenez-vous debout, le dos droit
2. Faites un grand pas en avant avec votre jambe gauche
3. Descendez votre bassin jusqu'à ce que votre genou droit touche presque le sol.
4. Remontez votre bassin
5. Revenez à la position debout en faisant un pas en arrière
6. Répétez l'opération en changeant de jambe à chaque fois""",
"eu": """1. Jarri tente bizkarra zuzen
2. Eman urrats luze bat aurrera ezkerreko hankarekin
3. Eraman pelbisa behera eskuineko belaunarekin ia lurra ukitu arte
4. Igo berriro zure pelbisa
5. Itzuli tente posiziora urratsa atzera itzuliz
6. Errepikatu aldi bakoitzean hanka aldatuz""",
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
} +
{
"tr": """Tek bacaklı çömelme (sol)""",
"nl": """Gespleten hurkzit (links)""",
"de": """geteilte Kniebeugen links""",
"ru": """Выпад левой ногой""",
"pt": """Split squats esquerda""",
"en": """Split squats left""",
"it": """Split squat a sinistra""",
"fr": """Fentes avant gauches""",
"eu": """Zatitu squats utzi""",
"cs": """Dřep ve výpadu nalevo""",
"id": """Split squats kiri""",
"es": """Media sentadillas izquierda""",
} +
{
"tr": """Tek bacaklı çömelme (sağ)""",
"nl": """Gespleten hurkzit (rechts)""",
"de": """geteilte Kniebeugen rechts""",
"ru": """Выпад правой ногой""",
"pt": """Split squats direita""",
"en": """Split squats right""",
"it": """Squat laterali a sinistra""",
"fr": """Fentes avant droites""",
"eu": """Zatitu squats eskubidea""",
"cs": """Dřep ve výpadu napravo""",
"id": """Split squats kanan""",
"es": """Media sentadillas derecha""",
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
"de": """1. Stehe mit aufrechtem Rücken
2. Machen mit dem linken Bein einen großen Schritt nach vorne
3. Senken Dein Becken ab, bis Du mit dem rechten Knie fast den Boden berühren
4. Bringe Dein Becken wieder nach oben
5. Wiederhole ab Schritt 3.""",
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
"en": """1. Stand with back straight
2. Take a large step forward with your left leg
3. Bring your pelvis down until you almost touch the floor with your right knee
4. Bring your pelvis back up
5. Repeat from step 3.""",
"it": """1. Stai con la schiena dritta
2. Fai un grande passo in avanti con la gamba sinistra
3. Abbassa il bacino fino a toccare quasi il pavimento con il ginocchio destro
4. Riporta il bacino verso l'alto
5. Ripetere dal passaggio 3.""",
"fr": """1. Tenez-vous debout avec le dos droit
2. Faites un grand pas en avant avec votre jambe gauche
3. Abaissez votre bassin jusqu'à ce que vous touchiez presque le sol avec votre genou droit
4. Ramenez votre bassin vers le haut
5. Répétez à partir de l'étape 3.""",
"eu": """1. Stand atzera zuzen
2. Hartu handi bat urrats aurrera zure ezkerreko hanka
3. Ekarri zure pelbisa behera arte ia lurrean ukitu zure eskuineko belauna
4. Ekarri zure pelbisa back up
5. Errepikatu 3. urratsa.""",
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
} +
{
"tr": """Dönerek şınav""",
"nl": """Draaiend opdrukken""",
"de": """Liegestütz-Drehungen""",
"ru": """Отжимание с переворотом""",
"pt": """Flexão em T""",
"en": """Push-up rotations""",
"it": """Flessioni con rotazione""",
"fr": """Pompes avec rotation""",
"eu": """Push-up errotazioak""",
"cs": """Kliky s rotací""",
"id": """Rotasi Push-up""",
"es": """Flexiones a rotación""",
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
3. Herhaal, en wissel bij stap 2 telkens van zij""",
"de": """1. Mache einen Standard-Liegestütz:
1.a Lege Dich auf den Bauch
1.b Lege Deine Hände in die Nähe Ihrer Ohren
1.c Hebe Deinen Bauch mit den Armen an, bis die Arme gerade sind und halte den Rücken gerade
1.d Biege die Arme, bis die Brust fast den Boden berührt, und achte darauf, dass der Rücken gerade ist
1.e Hebe den Bauch wieder an und kehre zu Schritt 3 zurück
2. Drehe Deinen Körper zur Seite, so dass der Rücken gerade ist, die untere Hand, die den Körper stützt, vollständig gestreckt ist und nur die untere Hand und der untere Fuß den Boden berühren
3. Wiederhole und wechsel jedes Mal die Seiten in Schritt 2""",
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
"fr": """1. Faites une pompe standard :
1.a Allongez-vous sur le ventre
1.b Placez vos mains près de vos oreilles
1.c Utilisez vos bras pour soulever votre ventre jusqu'à ce que les bras soient droits, en gardant le dos droit
1.d Pliez les bras jusqu'à ce que la poitrine touche presque le sol, en vous assurant que le dos est droit
1.e Soulevez à nouveau votre ventre et revenez à l'étape 1.c
2. Faites pivoter votre corps sur le côté pour que le dos soit droit, que la main inférieure soutenant le corps soit complètement étendue et que seuls la main et le pied inférieurs touchent le sol
3. Répétez, en changeant de côté à chaque fois""",
"eu": """1. Egin flexio arrunt bat:
1.a Etzan buruz behera
1.b Jarri eskuak lurrean belarrietatik hurbil
1.c Erabili besoak zure sabela lurretik altxatzeko besoak zuzen jarri arte, bizkarra beti zuzen mantenduz
1.d Tolestu besoak paparrak ia lurra ukitu arte, ziurtatu bizkarra zuzen mantentzen duzula
1.e Altxa berriro sabela 1.c puntura itzuliz
2. Biratu gorputza albora, bizkarra zuzen eta pisua eusten duen beheko besoa guztiz zuzen, eta soilik beheko eskuak eta oinak ukitzen dute lurra
3. Errepikatu, aldez aldatuz 2. puntuan""",
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
} +
{
"tr": """Yan plank hareketi (sol)""",
"nl": """Links planken""",
"de": """Seitenplanke links""",
"ru": """Левая боковая планка""",
"pt": """Prancha lateral esquerda""",
"en": """Side plank left""",
"it": """Plank su lato sinistro""",
"fr": """Planche latérale gauche""",
"eu": """Alboko plank utzi""",
"cs": """Prkno na levém boku""",
"id": """Plank samping kiri""",
"es": """Plancha de lado izquierdo""",
} +
{
"tr": """Yan plank hareketi (sağ)""",
"nl": """Rechts planken""",
"de": """Seitenplanke rechts""",
"ru": """Правая боковая планка""",
"pt": """Prancha lateral direita""",
"en": """Side plank right""",
"it": """Plank sul lato destro""",
"fr": """Planche latérale droite""",
"eu": """Alboko plank eskubidea""",
"cs": """Prkno na pravém boku""",
"id": """Plank samping kanan""",
"es": """Plancha de lado derecho""",
} +
{
"tr": """1. Alt dirseğiniz dik açıyla, kolunuz dışarı çıkacak şekilde yan tarafınıza uzanın
2. Ön kolunuzu yerde tutup alt omzunuzu yukarı kaldırarak leğen kemiğinizi yerden kaldırın; başınız, leğen kemiğiniz ve ayaklarınız düz bir çizgide olmalıdır
3. Bu durumda kalın""",
"nl": """1. Ga op je linkerzij liggen, houd je rechterelleboog recht en steek je arm uit.
2. Duw je bekken omhoog door je rechterschouder op te tillen, maar houd je bovenarm op de grond - je hoofd, bekken en voeten moeten in een rechte lijn liggen.
3. Houd deze positie vas""",
"de": """1. Lege Dich auf die Seite, der untere Ellbogen ist rechtwinklig, der Arm ragt heraus.
2. Hebe das Becken vom Boden ab, indem Du die untere Schulter anhebst und den Unterarm auf dem Boden lässt; Dein Kopf, Dein Becken und Deine Füße sollten sich in einer geraden Linie befinden.
3. Halte diese Position""",
"ru": """1. Лягте на бок, поставив нижний локоть под прямым углом, вытянув вперед руку
2. Поднимите таз от пола, подняв нижнюю часть плеча вверх, удерживая предплечье на полу; ваша голова, таз и ноги должны быть на одной прямой линии
3. Оставайтесь в этой позиции""",
"pt": """1. Deite-se de lado, com o cotovelo inferior em ângulo reto, com o braço para fora
2. Levante sua pélvis do chão levantando o ombro inferior para cima, mantendo o antebraço no chão; sua cabeça, pélvis e pés devem estar em linha reta
3. Mantenha esta posição""",
"en": """1. Lie down on your side, with your bottom elbow at a right angle, arm sticking out
2. Lift your pelvis off the floor by lifting your bottom shoulder up, keeping the forearm on the floor; your head, pelvis, and feet should be in a straight line
3. Hold this position""",
"it": """1. Sdraiati su un fianco, con il gomito inferiore ad angolo retto, con il braccio sporgente
2. Solleva il bacino dal pavimento sollevando la parte inferiore della spalla verso l'alto, mantenendo l'avambraccio sul pavimento; la testa, il bacino e i piedi dovrebbero essere in linea retta
3. Mantieni questa posizione""",
"fr": """1. Allongez-vous sur le côté, le coude inférieur à angle droit, le bras dépassant
2. Soulevez votre bassin du sol en soulevant votre épaule inférieure, en gardant l'avant-bras sur le sol ; votre tête, votre bassin et vos pieds doivent être en ligne droite
3. Maintenez cette position""",
"eu": """1. Etzan alboz, azpiko ukondoa angelu zuzenean, besoa kanporantz
2. Altza pelbisa lurretik azpialdeko besaburua altxatuz, besaurrea lurrean mantenduz; burua, pelbisa eta oinak lerro zuzena osatu behar dute
3. Eutsi posizio honi""",
"cs": """1. Lehněte si na bok, se spodním loktem v pravém úhlu, paže vyčnívající
2. Zvedněte pánev z podlahy zvedání spodní rameno, drží předloktí na podlaze, hlavu, pánev a nohy by měly být v jedné přímce
3. Držte tuto pozici""",
"id": """1. Berbaringlah, dengan siku bawah Anda di sudut kanan, lengan mencuat
2. Angkat panggul Anda dari lantai dengan mengangkat bahu bawah Anda ke atas, menjaga lengan bawah di lantai; kepala, panggul, dan kaki Anda harus berada dalam garis lurus
3. Tahan posisi""",
"es": """1. Acuéstese sobre su lado correspondiente, con el codo en ángulo recto y el brazo hacia afuera
2. Levante la pelvis del suelo levantando el hombro hacia arriba, manteniendo el antebrazo en el suelo; la cabeza, la pelvis y los pies deben estar en línea recta
3. Mantenga esta posición""",
} +
{
"tr": """Yana tek bacaklı çömelme (sol)""",
"nl": """Gespleten zijhurkzit (links)""",
"de": """Seitliche Kniebeugen links""",
"ru": """Боковой выпад слева""",
"pt": """Side split squats esquerda""",
"en": """Side split squats left""",
"it": """Squat laterale sinistro""",
"fr": """Fentes latérales gauches""",
"eu": """Alde zatitu squats utzi""",
"cs": """Boční výpady nalevo""",
"id": """Squat split samping kiri""",
"es": """Sentadilla de lado izquierdo""",
} +
{
"tr": """Yana tek bacaklı çömelme (sağ)""",
"nl": """Gespleten zijhurkzit (rechts)""",
"de": """Seitliche Kniebeugen rechts""",
"ru": """Боковой выпад справа""",
"pt": """Side split squats direita""",
"en": """Side split squats right""",
"it": """Squat laterali a destra""",
"fr": """Fentes latérales droites""",
"eu": """Alde zatitu squats eskubidea""",
"cs": """Boční výpady napravo""",
"id": """Squat split samping kanan""",
"es": """Sentadilla de lado derecho""",
} +
{
"tr": """1. Dik durun ve omuz genişliğinden biraz daha geniş bir yan adım atın.
2. Uyluğunuz yere paralel olana kadar bir dizinizi bükün. Bükülmüş diz ayakla aynı hizada olmalıdır.
3. Başlangıç durumuna geri itin ve tekrarlayın.""",
"nl": """1. Ga recht staan en doe een brede, zijwaartse pas, net iets voorbij schouderbreedte.
2. Buig één knie totdat je heup gelijkstaat aan de grond. De gebogen knie moet gelijkstaan aan de voet.
3. Duw jezelf omhoog en herhaal.""",
"de": """1. Stellen Dich aufrecht hin und mache einen weiten Seitenschritt, etwas größer als schulterbreit.
2. Beuge ein Knie, bis Dein Oberschenkel parallel zum Boden ist. Das gebeugte Knie muss in einer Linie mit dem Fuß stehen.
3. Gehe in die Ausgangsposition zurück und wiederhole.""",
"ru": """1. Встаньте прямо и сделайте широкий боковой шаг, чуть больше ширины плеч.
2. Согните одно колено, пока бедро не будет параллельно полу. Согнутое колено должно находиться на одной линии с стопой.
3. Вернитесь в исходное положение и повторите.""",
"pt": """1. Fique de pé e dê um passo lateral largo, apenas maior que a largura dos ombros.
2. Dobre um joelho até que sua coxa fique parelela ao chão. O joelho dobrado deve estar em linha com o pé.
3. Empurre de volta para a posição inicial e repita.""",
"en": """1. Stand tall and take a wide lateral stride, just greater than shoulder width.
2. Bend one knee until your thigh is parallel to the floor. The bent knee must be in line with the foot.
3. Push back to the starting position and repeat.""",
"it": """1. Stai in piedi e fai un ampio passo laterale, appena superiore alla larghezza delle spalle.
2. Piega un ginocchio finché la coscia non è parallela al pavimento. Il ginocchio piegato deve essere in linea con il piede.
3. Spingi indietro alla posizione di partenza e ripetere.""",
"fr": """1. Tenez-vous droit et faites une large foulée latérale, juste supérieure à la largeur des épaules
2. Pliez un genou jusqu'à ce que votre cuisse soit parallèle au sol. Le genou plié doit être aligné avec le pied
3. Revenez à la position de départ et répétez.""",
"eu": """1. Jarri tente eta eman urrats zabal bat albora, zure sorbaldaren zabaleratik zertxobait harago.
2. Tolestu belaun bat izterra lurrarekiko paralelo dagoen arte. Tolestutako belauna oinarekin lerrokatuta egon behar du.
3. Itzuli hasierako posiziora eta errepikatu.""",
"cs": """1. Postavte se vysoko a vezměte široký boční krok, jen větší než šířka ramen.
2. Ohněte jedno koleno, dokud vaše stehno není rovnoběžné s podlahou. Ohnuté koleno musí být v souladu s nohou.
3. Zatlačte zpět do výchozí polohy a opakujte.""",
"id": """1. Berdiri tegak dan mengambil langkah lateral lebar, hanya lebih besar dari lebar bahu.
2. Tekuk satu lutut sampai paha Anda sejajar dengan lantai. Lutut harus sejajar dengan kaki.
3. Dorong kembali ke posisi awal dan ulangi.""",
"es": """1. Póngase de pie y dé un amplio paso lateral, un poco más grande que el ancho de los hombros
2. Doble una rodilla hasta que su muslo esté paralelo al suelo. La rodilla doblada debe estar en línea con el pie
3. Vuelva a la posición inicial y repita.""",
} +
{
"tr": """Bulgar tek bacaklı çömelmesi (sol)""",
"nl": """Bulgaarse gespleten hurkzit (links)""",
"de": """Bulgarische geteilte Kniebeugen links""",
"ru": """Болгарские выпады (левая нога)""",
"pt": """Bulgarian split squats esquerda""",
"en": """Bulgarian split squats left""",
"it": """Split squats left bulgari""",
"fr": """Squats bulgares gauches""",
"eu": """Bulgarian zatitu squats utzi""",
"cs": """Bulharské dřepy na levé noze""",
"id": """Squat split Bulgaria ke kiri""",
"es": """Sentadilla búlgara izquierda""",
} +
{
"tr": """Bulgar tek bacaklı çömelmesi (sağ)""",
"nl": """Bulgaarse gespleten hurkzit (rechts)""",
"de": """Bulgarische geteilte Kniebeugen rechts""",
"ru": """Болгарские выпады (правая нога)""",
"pt": """Bulgarian split squats direita""",
"en": """Bulgarian split squats right""",
"it": """Split squats right bulgari""",
"fr": """Squats bulgares droites""",
"eu": """Bulgarian zatitu squats eskubidea""",
"cs": """Bulharské dřepy na pravé noze""",
"id": """Bulgaria split squats right""",
"es": """Sentadilla búlgara derecha""",
} +
{
"tr": """1. Bir sandalyenin önünde dik durun ve büyük bir adım atın. Ayaklarınızdan birinin üst kısmını sandalyenin üzerine koyun.
2. Arka diz neredeyse yere değene kadar kollarla dengeleyerek ön dizinizi bükün
3. Başlangıç durumuna geri itin ve tekrarlayın.""",
"nl": """1. Pak een stoel en ga er recht voor staan. Plaats het voorste deel van je voet op de stoel.
2. Buig de voorste knie en balanceer je armen totdat de achterste knie bijna de grond raakt.
3. Duw jezelf terug, ga terug naar stap 1 en herhaal, telkens met een andere knie.""",
"de": """1. Stelle Dich aufrecht vor einen Stuhl und machen einen großen Schritt. Stelle den oberen Teil einer Deiner Füße auf den Stuhl.
2. Beuge das vordere Knie und balanciere mit den Armen, bis das hintere Knie fast den Boden berührt
3. Gehe in die Ausgangsposition zurück und wiederhole.""",
"ru": """1. Встаньте во весь рост перед стулом и сделайте большой шаг. Положите верхнюю часть одной из ваших ног на стул.
2. Согните переднее колено, балансируя руками, пока заднее колено почти не коснется земли
3. Вернитесь в исходное положение и повторите упражнение.""",
"pt": """1. Fique de pé em frente a uma cadeira e dê um grande passo. Coloque a parte superior de um de seus pés sobre a cadeira.
2. Dobre o joelho da frente, equilibrando-se com os braços até que o joelho de trás quase toque o chão
3. Empurre de volta para a posição inicial e repita.""",
"en": """1. Stand tall in front of a chair and take a large step. Put the upper part of one of your feet on the chair.
2. Bend the front knee, balancing with arms until the back knee almost touches the ground
3. Push back to the starting position and repeat.""",
"it": """1. Mettiti di fronte a una sedia e fai un grande passo. Metti la parte superiore di uno dei tuoi piedi sulla sedia.
2. Piegare il ginocchio anteriore, bilanciandosi con le braccia fino a quando il ginocchio posteriore tocca quasi il suolo
3. Spingi indietro fino alla posizione di partenza e ripeti.""",
"fr": """1. Tenez-vous droit devant une chaise et faites un grand pas. Placez la partie supérieure de l'un de vos pieds sur la chaise
2. Pliez le genou avant, en équilibre avec les bras jusqu'à ce que le genou arrière touche presque le sol
3. Revenez à la position de départ et répétez.""",
"eu": """1. Jarri tente aulki baten aurrean eta eman urrats luze bat. Jarri zure oin baten goialdea aulki gainean.
2. Tolestu aurreko belauna, besoekin orekatuz atzeko belaunak ia lurra ukitu arte.
3. Itzuli hasierako posiziora eta errepikatu.""",
"cs": """1. Postavte se vysoko před židli a udělejte velký krok. Položte horní část jedné z vašich nohou na židli.
2. Ohněte přední koleno a vyvažujte rukama, dokud se zadní koleno téměř nedotkne země
3. Zatlačte zpět do výchozí polohy a opakujte.""",
"id": """1. Berdiri tegak di depan kursi dan mengambil langkah besar. Taruh bagian atas salah satu kakimu di kursi.
2. Tekuk lutut depan, menyeimbangkan dengan tangan sampai lutut belakang hampir menyentuh tanah
3. Dorong kembali ke posisi awal dan ulangi.""",
"es": """1. Póngase de pie delante de una silla y dé un largo paso. Ponga la parte superior de uno de sus pies en la silla
2. Doble la rodilla delantera, balanceando los brazos hasta que la rodilla trasera casi toque el suelo.
3. Empuje hacia atrás a la posición inicial y repita.""",
} +
{
"tr": """Tabanca durumunda çömelme (sol)""",
"nl": """Pistoolzit (links)""",
"de": """Kniebeugen links""",
"ru": """Пистолетик (левая нога)""",
"pt": """Pistol squats esquerda""",
"en": """Pistol squats left""",
"it": """Squat a pistola a sinistra""",
"fr": """Pistol squats gauches""",
"eu": """Pistola squats utzi""",
"cs": """Dřep na levé noze""",
"id": """Pistol squat kiri""",
"es": """Sentadillas en pistol izquierda""",
} +
{
"tr": """Tabanca durumunda çömelme (sağ)""",
"nl": """Pistoolzit (rechts)""",
"de": """Kniebeugen rechts""",
"ru": """Пистолетик (правая нога)""",
"pt": """Pistol squats direita""",
"en": """Pistol squats right""",
"it": """Squat a pistola a destra""",
"fr": """Pistol squats droites""",
"eu": """Pistola squats eskubidea""",
"cs": """Dřep na pravé noze""",
"id": """Pistol squats kanan""",
"es": """Sentadillas en pistol derecha""",
} +
{
"tr": """1. Diğer bacağınız düz ve hafifçe öne gelecek şekilde tek ayak üzerinde durun.
2. Bir dizinizi yavaşça bükün, sırtınızı ve diğer bacağınızı düz tutarak çömelme durumuna inin.
3. Eğik dizinizi düzelterek ve diğer bacağınızı düz tutarak çömelme durumundan yavaşça kendinizi kaldırın.
4. Tekrarlayın""",
"nl": """1. Zet één been voor je.
2. Buig je knie totdat je hurkt - houd je rug en andere been recht.
3. Buig je knie terug en maak hem weer recht.
4. Herhaal""",
"de": """1. Stelle Dich auf ein Bein, wobei das andere Bein gerade und leicht nach vorne zeigt.
2. Beuge langsam ein Knie, gehen in die Hocke und halte den Rücken und das andere Bein gerade.
3. Gehe langsam aus der Hocke, strecke das gebeugte Knie und halte das andere Bein gerade.
4. Wiederhole""",
"ru": """1. Встаньте на одну ногу, а другую поставьте прямо и слегка вперед.
2. Медленно опуститесь на корточки на одной ноге, держа спину и другую ногу прямо.
3. Медленно поднимайтесь от приседа, выпрямляя ногу, удерживая другую ногу прямо.
4. Повторите""",
"pt": """1. Fique de pé em uma perna, com a outra perna reta e ligeiramente para frente.
2. Dobre um joelho lentamente, descendo para um agachamento e mantendo as costas e a outra perna reta.
3. Levante-se lentamente do agachamento, endireitando o joelho dobrado e mantendo a outra perna reta.
4. Repita""",
"en": """1. Stand on one leg, with your other leg straight and slightly forward.
2. Bend one knee slowly, descending into a squat and keeping your back and your other leg straight.
3. Slowly raise yourself from the squat, straightening the bent knee and keeping the other leg straight.
4. Repeat""",
"it": """1. Stai in piedi su una gamba, con l'altra gamba dritta e leggermente in avanti.
2. Piegare un ginocchio lentamente, scendendo in uno squat e mantenendo la schiena e l'altra gamba dritta.
3. Alzati lentamente dallo squat, raddrizzando il ginocchio piegato e mantenendo l'altra gamba dritta.
4. Ripeti""",
"fr": """1. Tenez-vous debout sur une jambe, l'autre jambe droite et légèrement en avant
2. Pliez lentement un genou, descendez en position accroupie et gardez votre dos et votre autre jambe droits
3. Soulevez-vous lentement du squat, en redressant le genou plié et en gardant l'autre jambe droite
4. Répéter""",
"eu": """1. Hanka bat Stand, zure beste hanka zuzen eta pixka bat aurrera.
2. Okertu belauna bat, poliki-poliki, beheranzko bat sartu squat eta mantenduz, zure atzera eta zure beste hanka zuzen.
3. Poliki-poliki igo yourself from squat, zuzenketa tolestuta belauna eta mantenduz beste hanka zuzen.
4. Errepikatu""",
"cs": """1. Postavte se na jednu nohu, druhou nohu rovně a mírně dopředu.
2. Pomalu ohněte jedno koleno, sestupujte do dřepu a udržujte záda a druhou nohu rovně.
3. Pomalu se zvedněte z dřepu, narovnejte ohnuté koleno a udržujte druhou nohu rovnou.
4. Opakovat""",
"id": """1. Berdiri pada satu kaki, dengan kaki yang lain lurus dan sedikit ke depan.
2. Bend satu lutut perlahan-lahan, turun ke dalam jongkok dan menjaga punggung dan kaki Anda yang lain lurus.
3. Perlahan-lahan angkat dirimu dari jongkok, meluruskan lutut yang bengkok dan menjaga kaki yang lain lurus.
4. Ulangi""",
"es": """1. Párese en una pierna, con la otra pierna estirada y ligeramente hacia adelante.
2. Doble una rodilla lentamente, bajando en sentadilla y manteniendo la espalda y la otra pierna estirada.
3. Levántese lentamente de la sentadilla, enderezando la rodilla doblada y manteniendo la otra pierna recta.
4. Repita""",
} +
{
"tr": """Diz çöküp geri tepme""",
"nl": """Geknielde terugtrap""",
"de": """kniende Rückschläge""",
"ru": """Кикбэк согнутой ногой""",
"pt": """Coice""",
"en": """Kneeling kickbacks""",
"it": """Contraccolpi in ginocchio""",
"fr": """Extensions de la hanche""",
"eu": """Belauniko kickbacks""",
"cs": """Kickbacky v kleku""",
"id": """Kickbacks berlutut""",
"es": """Patada de rodilla""",
} +
{
"tr": """1. Dört ayak üzerine eğilin.
2. Kalça kaslarına odaklanarak bir ayağınızı tamamen uzayıncaya kadar geriye doğru itin.
3. Bir saniye kalın, ardından başlangıç durumuna geri dönün.
4. Ayakları değiştirerek tekrarlayın""",
"nl": """1. Ga op zijn hondjes zitten en plaats één voet tegen iets met weerstand, zoals een kabel.
2. Duw je voet naar achteren, zo ver totdat je been volledig gestrekt is.
3. Houd één seconde vol en keer terug naar de startpositie.
4. Herhaal, en wissel steeds van voet""",
"de": """1.Lege Dich auf alle Viere.
2. Drücke einen Fuß nach hinten, bis er vollständig gestreckt ist und konzentriere Dich dabei auf die Gesäßmuskeln.
3. Bleibe eine Sekunde so und kehre dann in die Ausgangsposition zurück.
4. Wiederhole indem Du die Füße abwechselst""",
"ru": """1. Встань на четвереньки.
2. Отталкивайтесь одной ногой назад до полного вытягивания, концентрируясь на ягодичных мышцах.
3. Задержитесь на одну секунду, затем вернитесь в исходное положение..
4. Повторите, чередуя ноги""",
"pt": """1. Fique em posição de quatro.
2. Empurre um pé para trás até que esteja totalmente estendido, concentrando-se nos músculos dos glúteos.
3. Fique por um segundo depois retorne à posição inicial.
4. Repita, alternando os pés""",
"en": """1. Get down on all fours.
2. Push one foot back until fully extended, concentrating on the gluteus muscles.
3. Stay for one second, then return to the initial position.
4. Repeat, alternating feet""",
"it": """1. Mettiti a quattro zampe.
2. Spingete un piede indietro fino alla completa estensione, concentrandovi sui muscoli glutei.
3. Rimanete per un secondo, poi tornate alla posizione iniziale.
4. Ripetere, alternando i piedi""",
"fr": """1. Mettez-vous à quatre pattes
2. Poussez un pied en arrière jusqu'à ce qu'il soit complètement étendu, en vous concentrant sur les muscles fessiers
3. Restez une seconde, puis revenez à la position initiale
4. Répétez, en alternant les pieds""",
"eu": """1. Talde behera fours guztiak.
2. Push bat oinez itzuli arte erabat luzatu, baitute glutes muskuluak.
3. Egonaldia bigarren bat, gero itzuli hasierako posizioa.
4. Errepikatu, oinak txandakatuz""",
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
} +
{
"tr": """Sol bacak baldır kaldırma""",
"nl": """Kuitoptrekken (links)""",
"de": """Wadenheben linkes Bein""",
"ru": """Упражнения для икроножных мыщц (левая)""",
"pt": """Elevação da panturrilha esquerda""",
"en": """Left leg calf raises""",
"it": """Sollevamento del polpaccio gamba sinistra""",
"fr": """Lever du mollet gauche""",
"eu": """Ezkerreko hanka txahal altxatzen""",
"cs": """Výpony na levé noze""",
"id": """Angkat kaki kiri anak sapi""",
"es": """Elevación de pantorrilla izquierda""",
} +
{
"tr": """Sağ bacak baldır kaldırma""",
"nl": """Kuitoptrekken (rechts)""",
"de": """Wadenheben rechtes Bein""",
"ru": """Упражнения для икроножных мыщц (правая)""",
"pt": """Elevação da panturrilha direita""",
"en": """Right leg calf raises""",
"it": """Sollevamento del polpaccio gamba destra""",
"fr": """Lever du mollet droit""",
"eu": """Eskuineko hanka txahal altxatzen""",
"cs": """Výpony na pravé noze""",
"id": """Angkat betis kaki kanan""",
"es": """Elevación de pantorrilla derecha""",
} +
{
"tr": """1. Hareket aralığını artırmak için yerde veya bir basamağın kenarında durun. Üst kısmı baldırınızın üzerine koyarak bir ayağınızı kaldırın.
2. Ayak parmaklarınız üzerinde durana kadar topuklarınızı kaldırın.
3. Bu durumda üç saniye kalın, ardından topuğunuz yere değmeden ayağınızı indirin.""",
"nl": """1. Ga op de grond staan of op de rand van een opstapje. Til één voet op en houd hem tegen op je kuit.
2. Til je hielen op, zo ver totdat je op je tenen staat.
3. Houd dit drie seconden vol. Duw je voet weer naar omlaag zonder de grond te raken met je hiel.""",
"de": """1. Stelle Dich auf den Boden oder auf die Kante einer Stufe. Hebe einen Fuß an und lege den oberen Teil auf die Wade.
2. Hebe die Fersen an, bis Du auf den Zehenspitzen stehst.
3. Bleibe drei Sekunden lang in dieser Position und senke dann den Fuß, ohne mit der Ferse den Boden zu berühren.""",
"ru": """1. Встаньте на пол или на край ступеньки, чтобы увеличить диапазон движения. Поднимите одну ногу, поставив ее на верхнюю часть икры.
2. Поднимите пятку, пока не встанете на цыпочки.
3. Оставайтесь в этом положении в течение трех секунд, затем опустите ногу, не касаясь пяткой земли.""",
"pt": """1. Fique de pé no chão ou na borda de um degrau para aumentar o alcance do movimento. Levante um pé, colocando a parte superior sobre sua panturrilha.
2. Levante os calcanhares até ficar de pé sobre os dedos do pé.
3. Fique nesta posição por três segundos, depois abaixe o pé sem tocar o chão com seu calcanhar.""",
"en": """1. Stand on the floor or on the edge of a step to increase the range of movement. Raise one foot, placing the upper part on your calf.
2. Lift your heels until you're standing on toes.
3. Stay in this position for three seconds, then lower your foot without touching the ground with your heel.""",
"it": """1. Stare in piedi sul pavimento o sul bordo di un gradino per aumentare il raggio di movimento. Sollevare un piede, appoggiando la parte superiore sul polpaccio.
2. Sollevare i talloni fino a stare in piedi sulle punte dei piedi.
3. Resta in questa posizione per tre secondi, poi abbassa il piede senza toccare il suolo con il tallone.""",
"fr": """1. Tenez-vous debout sur le sol ou sur le bord d'une marche pour augmenter l'amplitude des mouvements. Levez un pied en plaçant la partie supérieure sur votre mollet
2. Soulevez vos talons jusqu'à ce que vous soyez debout sur les orteils
3. Restez dans cette position pendant trois secondes, puis abaissez votre pied sans toucher le sol avec votre talon.""",
"eu": """1. Zutik lurrean edo ertzean urrats bat handitzeko mugimendu sorta. Goratu bat oinez, jarriz, goiko aldean, zure txahal.
2. Igogailua zure heels arte, ari zaren zutik behatzak.
3. Lo jarrera hori hiru segundo, eta, ondoren, jaistea zure oinez ukitu gabe lurrean zure orpoa.""",
"cs": """1. Postavte se na podlahu nebo na okraj kroku, abyste zvýšili rozsah pohybu. Zvedněte jednu nohu a položte horní část na lýtko.
2. Zvedněte paty, dokud nestojíte na prstech.
3. Zůstaňte v této poloze po dobu tří sekund, pak spusťte nohu, aniž byste se dotýkali země patou.""",
"id": """1. Berdiri di lantai atau di tepi langkah untuk meningkatkan jangkauan gerakan. Angkat satu kaki, letakkan bagian atas pada betis Anda.
2. Angkat tumit Anda sampai Anda berdiri di atas jari kaki.
3. Tetap di posisi ini selama tiga detik, lalu turunkan kaki Anda tanpa menyentuh tanah dengan tumit Anda.""",
"es": """1. Párese en el suelo o en el borde de un escalón para aumentar el rango de movimiento. Levante un pie, colocando la parte superior de su pantorrilla
2. Levante los talones hasta que esté de pie
3. Manténgase en esta posición durante tres segundos, luego baje el pie sin tocar el suelo con el talón.""",
} +
{
"tr": """İp atlama: temel atlamalar""",
"nl": """Touwtjespringen: basissprongen""",
"de": """Seilspringen: Grundsprünge""",
"ru": """Jump rope: basic jumps""",
"pt": """Corda de Salto: saltos básicos""",
"en": """Jump rope: basic jumps""",
"it": """Corda per saltare: salti di base""",
"fr": """Corde à sauter : sauts de base""",
"eu": """Jump rope: basic jumps""",
"cs": """Švihadlo: základní skoky""",
"id": """Lompat tali: basic Jump""",
"es": """Saltar la cuerda: saltos básicos""",
} +
{
"tr": """Bu egzersiz bir atlama ipi gerektirir. İp uzunluğunun boyunuza göre ayarlandığından emin olun. Bunu denetlemenin bir yolu, ipin her iki kulpunu tek elle tutup tek ayakla yerde serili halatın ortasında durmaktır. İp (kulplar hariç) göğsünüzün hemen altına ulaşırsa, uzunluğu doğrudur. Daha kısa bir ip, kendinize çarpabileceğiniz için tehlikeli olacaktır ve daha uzun bir ip kötü bir biçim oluşturacaktır.
1. Ayaklarınızı birbirine yaklaştırın, dizlerinizi biraz bükün, başınızı ve vücudunuzu düz tutun, dirseklerinizi içeride tutun, kollarınızı açın.
2. İpin dönmesi için yeterli kuvvetle sadece bileklerinizi döndürün.
3. İpi ayaklarınızın altından geçirecek kadar yükseğe zıplayın.
4. 2. adımdan itibaren tekrarlayın.""",
"nl": """Bij deze oefening heb je een springtouw nodig. Kies een touw dat past bij je lengte. Pak beide handvatten met één hand vast en ga met één voet op het midden van het touw staan. Als het touw (minus de handvatten) tot net onder je borstkas komt, dan heb je de juiste lengte. Een korter touw kan ook, maar is gevaarlijker omdat je jezelf mogelijk raakt, en een langer touw is onhandig.
1. Zet je voeten dicht tegen elkaar, buig door je knieën en houd je hoofd en lichaam recht. Houd je ellebogen naar binnen en open je armen.
2. Draai je polsen met genoeg kracht om het touw te laten draaien.
3. Spring net boven het touw uit.
4. Herhaal vanaf stap 2.""",
"de": """Für diese Übung benötigst Du ein Springseil. Stelle sicher, dass die Seillänge auf Deine Körpergröße abgestimmt ist. Eine Möglichkeit, dies zu überprüfen, ist, beide Griffe mit einer Hand zu greifen und sich mit einem Fuß auf die Mitte des am Boden hängenden Seils zu stellen. Wenn das Seil (ohne die Griffe) bis knapp unter Deine Brust reicht, ist die Länge richtig. Ein kürzeres Seil wäre gefährlich, da Du Dich stoßen könntest und ein längeres Seil würde eine schlechte Form ergeben.
1. Stelle Deine Füße eng zusammen, beuge Deine Knie ein wenig, halte Deinen Kopf und Körper gerade, lege deine Ellnogen an und öffne Deine Arme.
2. Drehe nur die Handgelenke mit so viel Kraft, dass sich das Seil dreht.
3. Springe nur so hoch, dass das Seil unter Deinen Füßen vorbeigeht.
4. Wiederhole ab Schritt 2.""",
"ru": """This exercise requires a jump rope. Make sure the rope length is adjusted to your height. One way to check is to grab both handles with one hand and stand on the middle of the rope hanging on the ground with one foot. If the rope (excluding the handles) reaches just below your chest, its length is right. A shorter rope would be hazardous, as you might hit yourself, and a longer rope would make for bad form.
1. Put your feet close together, bend the knees a bit, keep your head and body straight, keep elbows in, open your arms.
2. Spin only your wrists with enough force to make the rope spin.
3. Jump just high enough to pass the rope below your feet.
4. Repeat from step 2.""",
"pt": """Este exercício requer uma corda de salto. Certifique-se de que o comprimento da corda é ajustado à sua altura. Uma maneira de verificar é agarrar ambas as pegas com uma mão e ficar no meio da corda pendurada no chão com um pé. Se a corda (excluindo as pegas) chegar mesmo abaixo do seu peito, o seu comprimento é o correcto. Uma corda mais curta seria perigosa, pois poderia atingir-se a si próprio, e uma corda mais comprida seria uma má forma.
1. Coloque os pés juntos, dobre um pouco os joelhos, mantenha a cabeça e o corpo direitos, mantenha os cotovelos para dentro, abra os braços.
2. Rodar apenas os pulsos com força suficiente para fazer girar a corda.
3. Saltem só com força suficiente para passar a corda por baixo dos pés.
4. Repita a partir do passo 2.""",
"en": """This exercise requires a jump rope. Make sure the rope length is adjusted to your height. One way to check is to grab both handles with one hand and stand on the middle of the rope hanging on the ground with one foot. If the rope (excluding the handles) reaches just below your chest, its length is right. A shorter rope would be hazardous, as you might hit yourself, and a longer rope would make for bad form.
1. Put your feet close together, bend the knees a bit, keep your head and body straight, keep elbows in, open your arms.
2. Spin only your wrists with enough force to make the rope spin.
3. Jump just high enough to pass the rope below your feet.
4. Repeat from step 2.""",
"it": """Questo esercizio richiede una corda per saltare. Assicuratevi che la lunghezza della corda sia adatta alla vostra altezza. Un modo per controllare è quello di afferrare entrambe le maniglie con una mano e stare al centro della corda appesa a terra con un piede. Se la corda (escluse le maniglie) arriva appena sotto il tuo petto, la sua lunghezza è giusta. Una corda più corta sarebbe pericolosa, perché potreste colpirvi, e una corda più lunga sarebbe una cattiva forma.
1. Metti i piedi vicini, piega un po' le ginocchia, tieni la testa e il corpo dritti, tieni i gomiti in dentro, apri le braccia.
2. Fai girare solo i polsi con abbastanza forza da far girare la corda.
3. Salta appena abbastanza in alto da far passare la corda sotto i tuoi piedi.
4. Ripetere dal punto 2.""",
"fr": """Cet exercice nécessite une corde à sauter. Assurez-vous que la longueur de la corde est adaptée à votre taille. Une mamière de vérifier est de saisir les deux poignées d'une main et de se tenir au milieu de la corde suspendue au sol avec un pied. Si la corde (sans les poignées) arrive juste sous votre poitrine, sa longueur est correcte. Une corde plus courte serait dangereuse, car vous risqueriez de vous cogner, et une corde plus longue serait mauvaise pour la forme.
1. Rapprochez vos pieds, pliez un peu les genoux, gardez la tête et le corps droits, gardez les coudes rentrés, ouvrez les bras.
2. Faites tourner uniquement vos poignets avec suffisamment de force pour faire tourner la corde.
3. Sautez juste assez haut pour faire passer la corde sous vos pieds.
4. Répétez à partir de l'étape 2.""",
"eu": """This exercise requires a jump rope. Make sure the rope length is adjusted to your height. One way to check is to grab both handles with one hand and stand on the middle of the rope hanging on the ground with one foot. If the rope (excluding the handles) reaches just below your chest, its length is right. A shorter rope would be hazardous, as you might hit yourself, and a longer rope would make for bad form.
1. Put your feet close together, bend the knees a bit, keep your head and body straight, keep elbows in, open your arms.
2. Spin only your wrists with enough force to make the rope spin.
3. Jump just high enough to pass the rope below your feet.
4. Repeat from step 2.""",
"cs": """Toto cvičení vyžaduje švihadlo. Ujistěte se, že délka švihadla je přizpůsobena vaší výšce. Jedním ze způsobů kontroly je uchopit obě rukojeti jednou rukou a postavit se jednou nohou na střed švihadla visícího na zemi. Pokud vám švihadlo (bez rukojetí) sahá těsně pod hrudník, je jeho délka správná. Kratší lano by bylo nebezpečné, protože byste se mohli udeřit, a delší lano by způsobilo špatnou formu.
1. Dejte nohy těsně k sobě, trochu pokrčte kolena, hlavu a tělo držte rovně, lokty mějte vtažené, paže rozevřené.
2. Točte pouze zápěstími dostatečnou silou, aby se lano roztočilo.
3. Vyskočte jen tak vysoko, aby švihadlo prošlo pod vašima nohama.
4. Opakujte postup od kroku 2.""",
"id": """Este ejercicio requiere una cuerda para saltar. Asegúrate de que la longitud de la cuerda se ajusta a tu altura. Una forma de comprobarlo es agarrar las dos asas con una mano y situarse en el centro de la cuerda colgando del suelo con un pie. Si la cuerda (excluyendo las asas) te llega justo por debajo del pecho, su longitud es la adecuada. Una cuerda más corta sería peligrosa, ya que podrías golpearte, y una cuerda más larga sería una mala forma.
1. Pon los pies juntos, dobla un poco las rodillas, mantén la cabeza y el cuerpo rectos, mantén los codos dentro, abre los brazos.
2. Gira sólo las muñecas con la fuerza suficiente para hacer girar la cuerda.
3. Salta lo suficiente para pasar la cuerda por debajo de tus pies.
4. Repite desde el paso 2.""",
"es": """Este ejercicio requiere una cuerda para saltar. Asegúrate de que la longitud de la cuerda se ajusta a tu altura. Una forma de comprobarlo es agarrar las dos asas con una mano y situarse en el centro de la cuerda colgando del suelo con un pie. Si la cuerda (excluyendo las asas) te llega justo por debajo del pecho, su longitud es la adecuada. Una cuerda más corta sería peligrosa, ya que podrías golpearte, y una cuerda más larga sería una mala forma.
1. Pon los pies juntos, dobla un poco las rodillas, mantén la cabeza y el cuerpo rectos, mantén los codos dentro, abre los brazos.
2. Gira sólo las muñecas con la fuerza suficiente para hacer girar la cuerda.
3. Salta lo suficiente para pasar la cuerda por debajo de tus pies.
4. Repite desde el paso 2.""",
} +
{
"tr": """Kolları çevirme""",
"nl": """Armbewegingen""",
"de": """Armkreisen""",
"ru": """Arm circles""",
"pt": """Círculos de braço""",
"en": """Arm circles""",
"it": """Cerchi del braccio""",
"fr": """Cercles avec les bras""",
"eu": """Arm circles""",
"cs": """Kroužení pažemi""",
"id": """Arm lingkaran""",
"es": """Círculos de brazo""",
} +
{
"tr": """1. Sırtınız düz olacak şekilde dik durun.
2. Kollarınızı öne doğru getirin, başınızın üzerine kaldırın, ardından hareketi arkanıza doğru ve başlangıç durumuna kadar devam ettirin.
3. 2. adımda anlatıldığı gibi kollarınızı çevirmeye devam edin.""",
"nl": """1. Ga rechtstaan.
2. Draai je armen naar voren, houd ze boven je hoofd en zwaai ze naar achter en omlaag, naar de oorspronkelijke positie.
3. Herhaal stap 2.""",
"de": """1. Stelle Dich mit geradem Rücken aufrecht hin.
2. Bringe die Arme nach vorne, hebe sie über den Kopf und führe die Bewegung dann hinter dem Rücken nach unten in die Ausgangsposition fort.
3. Kreise die Arme weiter wie in Schritt 2 beschrieben.""",
"ru": """1. Stand up tall with your back straight.
2. Bring your arms forward, raise them over your head, then continue the motion behind your back and down to the initial position.
3. Keep circling your arms as described in step 2.""",
"pt": """1. Levante-se com as costas direitas.
2. Traga os braços para a frente, levante-os sobre a cabeça, depois continue o movimento atrás das costas e para baixo até à posição inicial.
3. Continuem a contornar os braços, tal como descrito no passo 2.""",
"en": """1. Stand up tall with your back straight.
2. Bring your arms forward, raise them over your head, then continue the motion behind your back and down to the initial position.
3. Keep circling your arms as described in step 2.""",
"it": """1. Stai in piedi con la schiena dritta.
2. Porta le braccia in avanti, alzale sopra la testa, poi continua il movimento dietro la schiena e giù fino alla posizione iniziale.
3. Continua a far girare le braccia come descritto al punto 2.""",
"fr": """1. Tenez-vous debout, le dos bien droit.
2. Amenez vos bras vers l'avant, levez-les au-dessus de votre tête, puis continuez le mouvement derrière votre dos et vers le bas jusqu'à la position initiale.
3. Continuez à faire des cercles avec vos bras comme décrit à l'étape 2.""",
"eu": """1. Stand up tall with your back straight.
2. Bring your arms forward, raise them over your head, then continue the motion behind your back and down to the initial position.
3. Keep circling your arms as described in step 2.""",
"cs": """1. Postavte se zpříma a narovnejte záda.
2. Přitáhněte paže dopředu, zvedněte je nad hlavu a pak pokračujte v pohybu za zády a dolů do výchozí polohy.
3. Pokračujte v kroužení pažemi podle popisu v kroku 2.""",
"id": """1. Berdiri tegak dengan punggung lurus.
2. Bawa lengan ke depan, angkat di atas kepala Anda, kemudian melanjutkan gerakan di belakang punggung Anda dan ke posisi awal.
3. Tetap lingkari tanganmu Seperti yang dijelaskan di Langkah 2.""",
"es": """1. Ponte de pie con la espalda recta.
2. Lleva los brazos hacia delante, levántalos por encima de la cabeza y luego continúa el movimiento por detrás de la espalda y baja a la posición inicial.
3. Siga haciendo círculos con los brazos como se describe en el paso 2.""",
} +
{
"tr": """Dağ tırmanışı""",
"nl": """Bergbeklimmer""",
"de": """Bergsteiger""",
"ru": """Mountain climbers""",
"pt": """Montanhistas""",
"en": """Mountain climbers""",
"it": """Alpinista""",
"fr": """Escaladeurs de montagne""",
"eu": """Mountain climbers""",
"cs": """Horolezec""",
"id": """Pendaki gunung""",
"es": """Montañeros""",
} +
{
"tr": """Başlangıç konumu:
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
Beginne mit der aufrechten Liegestützposition oder mit der hohen Planke.
Die Hände sollten sich direkt unter Deinen Schultern befinden.
Halte den Kopf in einer Linie mit dem Rücken und schaue zum Boden.
Die Füße sollten etwa hüftbreit auseinander stehen.

Schritte:
1. Bewege ein Knie zur Körpermitte hin zu den Ellenbogen, das andere Bein bleibt gestreckt.
2. Strecke in einer schnellen Sprungbewegung das gebeugte Bein aus und ziehe das andere Knie zum Körper.
3. Wiederhole Schritt 2 im Wechsel mit dem anderen Bein.

Hinweise:
Während der gesamten Übung sollte Dein Rücken möglichst gerade bleiben - vermeide einen Buckel oder einen durchhängenden Rücken.""",
"ru": """Starting position:
Start in the upright push-up position, or the high plank.
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
As mãos devem estar directamente debaixo dos seus ombros.
Manter a cabeça alinhada com as costas, virada para o chão.
Os pés devem estar aproximadamente à largura da anca separados.

Passos:
1. Mova um joelho em direcção ao centro do corpo, em direcção aos cotovelos, mantendo a outra perna estendida.
2. Num movimento de salto rápido, endireite a perna dobrada para fora e puxe o outro joelho em direcção ao seu corpo.
3. Continue a repetir o passo 2, alternando as pernas.

Notas:
Durante todo o exercício, as costas devem permanecer o mais direitas possível - evitar uma corcunda ou uma flacidez nas costas.""",
"en": """Starting position:
Start in the upright push-up position, or the high plank.
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
Tout au long de l'exercice, votre dos doit rester aussi droit que possible - évitez d'avoir une bosse ou un dos affaissé.""",
"eu": """Starting position:
Start in the upright push-up position, or the high plank.
Hands should be directly under your shoulders.
Keep your head in line with your back, facing the floor.
Feet should be about hip-width apart.

Steps:
1. Move one knee toward the center of your body, towards your elbows, keeping the other leg extended.
2. In a quick jumping movement, straighten the bent leg out and pull the other knee toward your body.
3. Keep repeating step 2, alternating legs.

Notes:
Throughout the exercise, your back should remain as straight as possible – avoid a hump or a sagging back.""",
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
Durante todo el ejercicio, la espalda debe permanecer lo más recta posible: evite una joroba o una espalda flácida.""",
} +
{
"tr": """Pike push-ups""",
"nl": """Pike push-ups""",
"de": """Pike push-ups""",
"ru": """Pike push-ups""",
"pt": """Pike push-ups""",
"en": """Pike push-ups""",
"it": """Pike push-ups""",
"fr": """Pike push-ups""",
"eu": """Pike push-ups""",
"cs": """Pike push-ups""",
"id": """Pike push-ups""",
"es": """Pike push-ups""",
} +
{
"tr": """Staring position:
Downward facing dog: Your body should make a V shape, with a straight back, arms, and legs. Your hips should be up in the air.
You can get to this position by walking your hands back from a high plank.

Steps:
1.Bend your elbows to the side, keeping your back and legs straight and moving your head closer to the floor.
2. Straighten your arms, pushing your hips back up and keeping your back and legs straight.
3. Repeat.""",
"nl": """Staring position:
Downward facing dog: Your body should make a V shape, with a straight back, arms, and legs. Your hips should be up in the air.
You can get to this position by walking your hands back from a high plank.

Steps:
1.Bend your elbows to the side, keeping your back and legs straight and moving your head closer to the floor.
2. Straighten your arms, pushing your hips back up and keeping your back and legs straight.
3. Repeat.""",
"de": """Staring position:
Downward facing dog: Your body should make a V shape, with a straight back, arms, and legs. Your hips should be up in the air.
You can get to this position by walking your hands back from a high plank.

Steps:
1.Bend your elbows to the side, keeping your back and legs straight and moving your head closer to the floor.
2. Straighten your arms, pushing your hips back up and keeping your back and legs straight.
3. Repeat.""",
"ru": """Staring position:
Downward facing dog: Your body should make a V shape, with a straight back, arms, and legs. Your hips should be up in the air.
You can get to this position by walking your hands back from a high plank.

Steps:
1.Bend your elbows to the side, keeping your back and legs straight and moving your head closer to the floor.
2. Straighten your arms, pushing your hips back up and keeping your back and legs straight.
3. Repeat.""",
"pt": """Staring position:
Downward facing dog: Your body should make a V shape, with a straight back, arms, and legs. Your hips should be up in the air.
You can get to this position by walking your hands back from a high plank.

Steps:
1.Bend your elbows to the side, keeping your back and legs straight and moving your head closer to the floor.
2. Straighten your arms, pushing your hips back up and keeping your back and legs straight.
3. Repeat.""",
"en": """Staring position:
Downward facing dog: Your body should make a V shape, with a straight back, arms, and legs. Your hips should be up in the air.
You can get to this position by walking your hands back from a high plank.

Steps:
1.Bend your elbows to the side, keeping your back and legs straight and moving your head closer to the floor.
2. Straighten your arms, pushing your hips back up and keeping your back and legs straight.
3. Repeat.""",
"it": """Staring position:
Downward facing dog: Your body should make a V shape, with a straight back, arms, and legs. Your hips should be up in the air.
You can get to this position by walking your hands back from a high plank.

Steps:
1.Bend your elbows to the side, keeping your back and legs straight and moving your head closer to the floor.
2. Straighten your arms, pushing your hips back up and keeping your back and legs straight.
3. Repeat.""",
"fr": """Staring position:
Downward facing dog: Your body should make a V shape, with a straight back, arms, and legs. Your hips should be up in the air.
You can get to this position by walking your hands back from a high plank.

Steps:
1.Bend your elbows to the side, keeping your back and legs straight and moving your head closer to the floor.
2. Straighten your arms, pushing your hips back up and keeping your back and legs straight.
3. Repeat.""",
"eu": """Staring position:
Downward facing dog: Your body should make a V shape, with a straight back, arms, and legs. Your hips should be up in the air.
You can get to this position by walking your hands back from a high plank.

Steps:
1.Bend your elbows to the side, keeping your back and legs straight and moving your head closer to the floor.
2. Straighten your arms, pushing your hips back up and keeping your back and legs straight.
3. Repeat.""",
"cs": """Staring position:
Downward facing dog: Your body should make a V shape, with a straight back, arms, and legs. Your hips should be up in the air.
You can get to this position by walking your hands back from a high plank.

Steps:
1.Bend your elbows to the side, keeping your back and legs straight and moving your head closer to the floor.
2. Straighten your arms, pushing your hips back up and keeping your back and legs straight.
3. Repeat.""",
"id": """Staring position:
Downward facing dog: Your body should make a V shape, with a straight back, arms, and legs. Your hips should be up in the air.
You can get to this position by walking your hands back from a high plank.

Steps:
1.Bend your elbows to the side, keeping your back and legs straight and moving your head closer to the floor.
2. Straighten your arms, pushing your hips back up and keeping your back and legs straight.
3. Repeat.""",
"es": """Staring position:
Downward facing dog: Your body should make a V shape, with a straight back, arms, and legs. Your hips should be up in the air.
You can get to this position by walking your hands back from a high plank.

Steps:
1.Bend your elbows to the side, keeping your back and legs straight and moving your head closer to the floor.
2. Straighten your arms, pushing your hips back up and keeping your back and legs straight.
3. Repeat.""",
};
String get i18n => localize(this, t);
}
