// Copyright (C) 2020 Miroslav Mazel
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
        "nl": """Goed gedaan!""",
        "en": """You did it!""",
        "cs": """Dobrá práce!""",
        "es": """Lo lograste!""",
      } +
      {
        "nl": """Hierna:""",
        "en": """Next up:""",
        "cs": """Další cvik:""",
        "es": """A continuación: """,
      } +
      {
        "nl": """Tijd om aan de slag te gaan! Allereerst: %s""",
        "en": """Let's go! First up: %s""",
        "cs": """Pojďme na to! První cvik: %s""",
        "es": """Vámonos! Para empezar:%s""",
      } +
      {
        "nl": """Nog %d seconden te gaan""",
        "en": """%d seconds left""",
        "cs": """Zbývá %d vteřin""",
        "es": """%dsegundos restantes""",
      } +
      {
        "nl": """Tijd voor een pauze!""",
        "en": """Break!""",
        "cs": """Pauza!""",
        "es": """Descanso!""",
      } +
      {
        "nl": """Druk om bediening te tonen""",
        "en": """Tap for controls""",
        "cs": """Ťukněte pro ovládání""",
        "es": """Toque para controles""",
      } +
      {
        "nl": """Afbeelding ontbreekt""",
        "en": """Image missing""",
        "cs": """Chybí fotka""",
        "es": """Imagen perdida """,
      } +
      {
        "nl": """Naam van workout""",
        "en": """Workout title""",
        "cs": """Název tréninku""",
        "es": """Título de entrenamiento """,
      } +
      {
        "nl": """Coach jezelf!""",
        "en": """Be your own coach!""",
        "cs": """Buď vlastním trenérem!""",
        "es": """Se tu propio entrenador!""",
      } +
      {
        "nl": """Ontwerp dé workout die voor jou prettig voelt""",
        "en": """Design the workout that makes you feel the best""",
        "cs": """Navrhni si takový trénink, po kterém se budeš cítit nejlépe""",
        "es": """Diseña tu entrenamiento que te hace sentir lo mejor""",
      } +
      {
        "nl": """Hele lichaam""",
        "en": """Full body""",
        "cs": """Celé tělo""",
        "es": """Cuerpo completo """,
      } +
      {
        "nl": """Benen""",
        "en": """Legs""",
        "cs": """Nohy""",
        "es": """Piernas""",
      } +
      {
        "nl": """Je straalt!""",
        "en": """You're glowing!""",
        "cs": """Dobrá práce!""",
        "es": """Estás radiante!""",
      } +
      {
        "nl": """Deel je oefeningen met ons""",
        "en": """Contribute an exercise""",
        "cs": """Přispěj nový cvik""",
        "es": """Contribuye un ejercicio """,
      } +
      {
        "nl":
            """Feeel is afhankelijk van vrijwilligers zoals jij voor het verkrijgen van oefeningen met bijbehorende foto's. Je foto's worden anoniem aangepast voor gebruik in de app, dan aan je opgestuurd voor goedkeuring en pas dáárna toegevoegd aan de app. Alvast bedankt!""",
        "en":
            """Feeel relies on volunteers like you to submit exercises and exercise photos. Any photos you submit will first be privately processed, then sent to you for approval, and only then released in the app. Thanks for contributing!""",
        "cs":
            """Feeel relies on volunteers like you to submit exercises and exercise photos. Any photos you submit will first be privately processed, then sent to you for approval, and only then released in the app. Thanks for contributing!""",
        "es":
            """Feeel depende de voluntarios como tu para enviar ejercicios y fotos de ejercicios. Cualquier foto que envies será primero procesado en privado, después enviado a ti para tu aprobación, y solo entonces sera publicado en la app. Gracias por contribuir! """,
      } +
      {
        "nl": """Naam van oefening""",
        "en": """Exercise name""",
        "cs": """Název cviku""",
        "es": """Nombre del ejercicio""",
      } +
      {
        "nl": """Hoe voer je de oefening te worden uit? (optioneel)""",
        "en": """How to perform exercise (optional)""",
        "cs": """Jak provést cvik (nepovinné)""",
        "es": """Como realizar ejercicio (opcional)""",
      } +
      {
        "nl": """De e-mail kan niet worden verstuurd""",
        "en": """Email could not be sent""",
        "cs": """E-mail se nepovedlo odeslat""",
        "es": """Correo no pudo ser enviado """,
      } +
      {
        "nl": """Oefeningbijdrage:%s""",
        "en": """Exercise proposal: %s""",
        "cs": """Návrh cviku: %s""",
        "es": """Propuesta de ejercicio: %s""",
      } +
      {
        "nl": """Hallo,

Hierbij dien ik een voorstel in voor een oefening. Ik begrijp dat ik alleen mijn *eigen* werk mag indienen. Als ik dit bericht verstuur, ga ik onherroepelijk akkoord met het feit dat de naam en omschrijving van de oefening worden vrijgegeven onder de CC BY-SA- en AGPLv3-licentie, met uitzondering van de appwinkel. Ik geef tevens toestemming om de bijgevoegde afbeelding(en) anoniem te verwerken. Daarna worden ze door mij geëvalueerd om ze al dan niet vrij te geven onder de CC BY-SA-licentie.

Naam van de oefening: %1s
Uitleg:
%2s""",
        "en": """Hello,

I'm sending a proposal of an exercise. I hereby declare that all of it is my own work only. By sending this message, I irrevocably agree to have the submitted name and description released under a CC BY-SA license and an AGPLv3 with an app store exception license. I also give permission to process the attached image(s) into low-poly variants. After they are processed, I will evaluate whether I am willing to license them under the CC BY-SA license.

Exercise name: %1s
Exercise steps:
%2s""",
        "cs": """Hello,

I'm sending a proposal of an exercise. I hereby declare that all of it is my own work only. By sending this message, I irrevocably agree to have the submitted name and description released under a CC BY-SA license and an AGPLv3 with an app store exception license. I also give permission to process the attached image(s) into low-poly variants. After they are processed, I will evaluate whether I am willing to license them under the CC BY-SA license.

Exercise name: %1s
Exercise steps:
%2s""",
        "es": """Hola,

Estoy enviando mi propuesta de un ejercicio. De este modo declaro que todo es de mi propio trabajo solamente. Enviando este mensaje, Yo irrevocablemente acepto de haber enviado nombre y descripción liberado a CC BY-SA y a GPLv3 con una licencia de excepción de tienda de aplicaciones. También doy permiso para procesar las imágenes adjuntas en variantes de polímeros bajos. Después de que sean procesados, evaluaré si estoy dispuesto a licenciarlos bajo la licencia CC BY-SA.
Nombre de ejercicio:%1s
Pasos de ejercicio:
%2s  """,
      } +
      {
        "nl": """Instellingen""",
        "en": """Settings""",
        "cs": """Nastavení""",
        "es": """Configuraciones""",
      } +
      {
        "nl": """Please specify a workout title""",
        "en": """Please specify a workout title""",
        "cs": """Prosím poskytněte název tréninku""",
        "es": """Please specify a workout title""",
      } +
      {
        "nl": """Please add at least 1 exercise""",
        "en": """Please add at least 1 exercise""",
        "cs": """Prosím přidejte alespoň 1 cvik""",
        "es": """Please add at least 1 exercise""",
      } +
      {
        "nl": """Looptijd""",
        "en": """Duration""",
        "cs": """Délka""",
        "es": """Duración""",
      } +
      {
        "nl": """Trainingsduur""",
        "en": """Exercise duration""",
        "cs": """Délka cviku""",
        "es": """Duración del ejercicio""",
      } +
      {
        "nl": """Pauzeduur""",
        "en": """Break duration""",
        "cs": """Délka přestávky""",
        "es": """Duración de la pausa""",
      } +
      {
        "nl": """Op maat""",
        "en": """Custom""",
        "cs": """Vlastní""",
        "es": """Personalizado""",
      } +
      {
        "nl": """Non-numeric""",
        "en": """Non-numeric""",
        "cs": """Není číslo""",
        "es": """Non-numeric""",
      } +
      {
        "nl": """Nonpositive""",
        "en": """Nonpositive""",
        "cs": """Není kladné""",
        "es": """Nonpositive""",
      } +
      {
        "nl": """Dagelijkse melding""",
        "en": """Daily notification""",
        "cs": """Denní upozornění""",
        "es": """Notificación diaria""",
      } +
      {
        "nl": """Een dagelijkse herinnering om te sporten""",
        "en": """A daily reminder to work out""",
        "cs": """Denní připomenutí jít cvičit""",
        "es": """Un recordatorio diario para hacer ejercicio""",
      } +
      {
        "nl": """Tijd om trainingskleding aan te trekken!""",
        "en": """Time to put on workout clothes!""",
        "cs": """Čas obléknout cvičební úbor!""",
        "es": """¡Es hora de ponerse ropa de entrenamiento!""",
      } +
      {
        "nl":
            """Het duurt slechts een paar minuten om je fris en fit te voelen""",
        "en": """It takes just a few minutes to feel fresh and fit""",
        "cs": """Stačí jen pár minut, abyste se cítil/a svěží a fit""",
        "es": """Solo toma unos minutos sentirse fresco y en forma""",
      } +
      {
        "nl": """Herinner me eraan dagelijks te sporten""",
        "en": """Remind me to exercise daily""",
        "cs": """Připomínat, abych cvičil/a denně""",
        "es": """Recuérdame hacer ejercicio diariamente""",
      } +
      {
        "nl": """Kan geen foto's maken zonder toestemming van de camera""",
        "en": """Can't take photos without camera permission""",
        "cs": """Nelze fotografovat bez povolení fotoaparátu""",
        "es": """No se pueden tomar fotos sin permiso de la cámara.""",
      } +
      {
        "nl": """Kennisgevingstijd""",
        "en": """Notification time""",
        "cs": """Čas upozornění""",
        "es": """Tiempo de notificación""",
      } +
      {
        "nl": """Voeg eerst een oefening toe""",
        "en": """Add an exercise first""",
        "cs": """Nejprve musíte přidat cvičení""",
        "es": """Agregar un ejercicio primero""",
      } +
      {
        "nl": """Workout starten""",
        "en": """Start workout""",
        "cs": """Spustit trénink""",
        "es": """Iniciar ejercicio""",
      } +
      {
        "nl": """Workout hervatten""",
        "en": """Resume workout""",
        "cs": """Pokračovat v tréninku""",
        "es": """Reanudar ejercicio""",
      } +
      {
        "nl": """Vorige oefening""",
        "en": """Previous exercise""",
        "cs": """Předchozí cvik""",
        "es": """Ejercicio anterior""",
      } +
      {
        "nl": """Volgende oefening""",
        "en": """Next exercise""",
        "cs": """Další cvik""",
        "es": """Siguiente ejercicio""",
      } +
      {
        "nl": """Oefeningen toevoegen""",
        "en": """Add exercises""",
        "cs": """Přidat cviky""",
        "es": """Agregar ejercicio""",
      } +
      {
        "nl": """Aanpassen""",
        "en": """Edit""",
        "cs": """Upravit""",
        "es": """Editar""",
      } +
      {
        "nl": """Verwijderen""",
        "en": """Delete""",
        "cs": """Odstranit""",
        "es": """Eliminar""",
      } +
      {
        "nl": """Klaar""",
        "en": """Done""",
        "cs": """Hotovo""",
        "es": """Hecho""",
      } +
      {
        "nl": """Meer informatie""",
        "en": """More info""",
        "cs": """Více info""",
        "es": """Más información """,
      } +
      {
        "nl": """Eigen workout samenstellen""",
        "en": """Create custom workout""",
        "cs": """Vytvořit vlastní trénink""",
        "es": """Crear entrenamiento personalizado """,
      } +
      {
        "nl": """Deel je eigen workout met ons""",
        "en": """Propose custom exercise""",
        "cs": """Navrhnout vlastní cvik""",
        "es": """Proponer entrenamiento personalizado""",
      } +
      {
        "nl": """Versturen via e-mail""",
        "en": """Submit via email""",
        "cs": """Odeslat e-mailem""",
        "es": """Enviar por correo electrónico """,
      } +
      {
        "nl": """Foto toevoegen uit galerij""",
        "en": """Add photo from gallery""",
        "cs": """Přidat fotku z galerie""",
        "es": """Agregar foto de galería """,
      } +
      {
        "nl": """Foto maken""",
        "en": """Take a photo""",
        "cs": """Vyfotit cvik""",
        "es": """Tomar foto """,
      } +
      {
        "nl": """Voeg een link toe naar je foto('s)""",
        "en": """Add a link to your photo(s)""",
        "cs": """Přidat odkaz k fotce/fotkám""",
        "es": """Agregar un enlace a tus foto(s)""",
      } +
      {
        "nl": """Gebruik geluiden in plaats van spraak""",
        "en": """Use sounds instead of speech""",
        "cs": """Používat zvuky namísto mluveného slova""",
        "es": """Usa sonidos en lugar de hablar""",
      } +
      {
        "nl": """Pas timing aan""",
        "en": """Adjust timing""",
        "cs": """Upravit časování""",
        "es": """Ajustar tiempo""",
      } +
      {
        "nl": """Wetenschappelijk bewezen 7-minutenworkout""",
        "en": """Scientific 7 minute workout""",
        "cs": """Vědecký sedmiminutový trénink""",
        "es": """Entrenamiento científico de 7 minutos""",
      } +
      {
        "nl": """Beenworkout voor gevorderden""",
        "en": """Advanced leg workout""",
        "cs": """Pokročilý trénink nohou""",
        "es": """Ejercicio de pierna avanzado """,
      } +
      {
        "nl": """Klapsprongen""",
        "en": """Jumping jacks""",
        "cs": """Skákací panák""",
        "es": """Saltos de tijera""",
      } +
      {
        "nl":
            """1. Zet je voeten tegen elkaar en houdt je armen gestrekt naast je lichaam
2. Spring dusdanig zodat je je benen spreidt en je handen boven je hoofd aantikt
3. Herhaal""",
        "en": """1. Stand with feet together and arms at the sides
2. Jump to a position with the legs spread wide and the hands touching overhead
3. Repeat""",
        "cs": """1. Stůj vzpřímeně, nohy těsně vedle sebe a ruce podél těla
2. Skoč na místě a roztáhni přitom nohy bez prohnutí kolen a rukama tleskni nad hlavou
3. Skoč zpět a neustále opakuj""",
        "es": """1. Párese con los pies juntos y los brazos a los lados
2. Saltar a una posición con las piernas extendidas y las manos tocando arriba
3. Repita""",
      } +
      {
        "nl": """Muurzitten""",
        "en": """Wall sit""",
        "cs": """Sed u stěny""",
        "es": """Sentadilla de pared """,
      } +
      {
        "nl":
            """1. Leun tegen de muur en zet je voeten stevig op de grond; houd je schouders los en 60 cm van de muur verwijderd.
2. Zak naar beneden en zorg dat je rug tegen de muur blijft totdat je knieën zich direct boven de enkels bevinden.

Pijn in je dijbeenspieren is normaal. Stop als je pijn in je knie of knieholte voelt.""",
        "en":
            """1. Lean against the wall, facing forward and with feet planted firmly on the ground, shoulders width apart and about 2 feet away from the wall
2. Slide down the wall, keeping the back pressed to it, until legs are at a right angle. The knees should be directly above the ankles
Quadricep pain is normal, stop if feeling pain in the knee or kneecap""",
        "cs":
            """1. Opři svá záda o stěnu s nohama pevně na zemi, od sebe vzdálenými asi o šířku ramen a přibližně ??????????? cm od stěny.
2. Sesuňte záda podél zdi tak, abyste skončili s koleny pokrčenými v pravém úhlu. Kolena by měly být přímo nad kotníky.
Bolest v ??????????????? je běžná. Přestaňte, pokud cítíte bolest v koleni.""",
        "es":
            """1. Apóyate contra la pared con los pies plantados firmemente en el suelo, los hombros separados y a unos 2 pies de distancia de la pared
2. Deslice por la pared, manteniendo la espalda presionada a ella, hasta que las piernas están en un ángulo recto. Las rodillas deben estar directamente por encima de los tobillos
El dolor cuádricep es normal, pare si siente dolor en la rodilla o la rótula""",
      } +
      {
        "nl": """Opdrukken""",
        "en": """Push-ups""",
        "cs": """Kliky""",
        "es": """Lagartijas""",
      } +
      {
        "nl": """1. Ga op je buik liggen.
2. Plaats je handen in de buurt van je oren.
3. Gebruik je armen om je buik omhoog te duwen totdat je armen gestrekt zijn - houd je rug recht.
4. Buig je armen totdat je borstkas bijna de grond raakt - houd je rug recht.
5. Herhaal stap 3 en 4.""",
        "en": """1. Lie down on your stomach
2. Place your hands near your ears
3. Use your arms to lift your stomach up until the arms are straight, keeping the back straight
4. Bend arms until chest almost touches the ground, making sure the back is straight
5. Repeat from step 3""",
        "cs": """1. Lehni si na břicho, s dlaněmi vedle hlavy.
2. Opři se o ruce a zvedni svůj trup dokud nebudeš mít ruce napřímo. Ujisti se, že máš rovná záda.
3. Ohni se v loktech, dokud se hrudí skoro nedotkneš země. Záda by měla být stále rovná.
4. Opakuj od kroku 2""",
        "es": """1. Acuéstese sobre el estómago 
2. Coloque las manos cerca de los oídos 
3. Utilice los brazos para levantar el estómago hasta que los brazos estén rectos, manteniendo la espalda recta
 4. Doble los brazos hasta que el pecho casi toca el suelo, asegurándose de la espalda recta
 5. Repita desde el paso 3""",
      } +
      {
        "nl": """Spiercrunches""",
        "en": """Ab crunches""",
        "cs": """Sedolehy""",
        "es": """Abdominales""",
      } +
      {
        "nl": """1. Ga op je rug liggen en buig je knieën.
2. Draai je schouders richting je bekken. Houd je handen achter of naast je nek of kruislings over je borstkas.
3. Herhaal.""",
        "en": """1. Lie down face up on the floor with knees bent.
2. Curl the shoulders towards the pelvis. The hands can be behind or beside the neck or crossed over the chest.
3. Repeat""",
        "cs": """1. Lehni si na zem hlavou nahoru s pokrčenými koleny.
Zvedni záda tak, aby se tvá ramena co nejblíže přiblížily ke kolenům. Plosky nohou včetně prstů by měly zůstat na zemi. Ruce mohou být za hlavou nebo přeložené v kříž na hrudi.
3. Opakuj""",
        "es": """1. Acuéstese boca arriba en el suelo con las rodillas dobladas.
 2.Rizar los hombros hacia la pelvis. Las manos pueden estar detrás o al lado del cuello o cruzadas sobre el pecho.
 3. Repetir""",
      } +
      {
        "nl": """Opstappen""",
        "en": """Step-ups""",
        "cs": """Výšlapy""",
        "es": """Escalones""",
      } +
      {
        "nl": """1. Ga voor een stoel staan.
2. Ga op de stoel staan.
3. Ga van de stoel af.
4. Herhaal.""",
        "en": """1. Stand facing a chair
2. Step up onto the chair
3. Step off the chair
4. Repeat""",
        "cs": """1. Stůj čelem k židli.
2. Stoupni si na židli
3. Sestup dolu ze židle
4. Opakuj""",
        "es": """1. Pararse frente a una silla
2. Subirse a la silla
 3. Bajarse de la silla
4. Repetir""",
      } +
      {
        "nl": """Hurkzitten""",
        "en": """Squats""",
        "cs": """Dřepy""",
        "es": """Sentadillas""",
      } +
      {
        "nl":
            """1. Ga staan en zet je voeten zó dat ze in verhouding staan met je schouders.
2. Draai je heupen naar achteren en buig je knieën en heupen om je bovenlichaam naar beneden te duwen.
3. Herhaal.""",
        "en": """1. Stand with feet shoulder-width apart
2. Move the hips back and bend the knees and hips to lower the torso
3. Repeat""",
        "cs": """1. Stůj s nohama vzdálenými o šířku ramen.
2. Posuň kyčel dozadu a pokrč kolena, dokud nebudeš mít stehna paralelně se zemí.
3. Opakuj""",
        "es": """1. Párese con los pies separados del ancho de los hombros
 2. Mueva las caderas hacia atrás y doble las rodillas y las caderas para bajar el torso
 3. Repita""",
      } +
      {
        "nl": """Stoelzakken""",
        "en": """Chair dips""",
        "cs": """Dipy na židli""",
        "es": """Fondos en sillas""",
      } +
      {
        "nl":
            """1. Ga op het puntje van een stoel zitten, houd je rug recht en houd de punt vast met je handen.
2. Blijf vasthouden, strek je armen, duw je kont
omhoog en loop een stukje naar voren.
3. Duw je lichaam langzaam omlaag, houd je rug recht en zorg dat je armen in een rechte hoek staan.
4. Duw je lichaam weer omhoog, naar de vorige positie, en strek je armen.
5. Herhaal stap 3 en 4.""",
        "en":
            """1. Sit down on the front edge of a chair, back straight, hands holding the front edge
2. Still holding the edge of the chair, arms extended, lift your butt and walk forward slightly so that it is a few inches from the chair.
3. Slowly lower your body, keeping the back straight, until arms are at a right angle
4. Raise your body again to the previous position, arms extended
5. Repeat steps 3 and 4""",
        "cs":
            """1. Sit down on the front edge of a chair, back straight, hands holding the front edge
        2. Still holding the edge of the chair, arms extended, lift your butt and walk forward slightly so that it is a few inches from the chair.
        3. Slowly lower your body, keeping the back straight, until arms are at a right angle
        4. Raise your body again to the previous position, arms extended
        5. Repeat steps 3 and 4""",
        "es":
            """1. Siéntese en el borde delantero de una silla, espalda recta, las manos que sostengan el borde delantero
 2. Todavía sosteniendo el borde de la silla, brazos extendidos, levantar el trasero y caminar ligeramente hacia adelante para que esté a unos centímetros de la silla. 
 3. Baje lentamente su cuerpo, manteniendo la espalda recta, hasta que los brazos estén en ángulo recto
 4. Levante su cuerpo de nuevo a la posición anterior, los brazos extendidos
 5. Repita los pasos 3 y 4""",
      } +
      {
        "nl": """Planken""",
        "en": """Plank""",
        "cs": """Prkno""",
        "es": """Plancha""",
      } +
      {
        "nl": """1. Ga op z'n hondjes zitten, strek je armen en buig je benen.
2. Loop met je voeten naar achteren totdat je benen gestrekt zijn.
3. Houd deze positie vast.""",
        "en": """1. Get down on all fours, with arms straight and knees bent
2. Walk your feet back until they are extended
3. Hold this position""",
        "cs": """1. Get down on all fours, with arms straight and knees bent
        2. Walk your feet back until they are extended
        3. Hold this position""",
        "es":
            """1. Ponerse a cuatro patas, con los brazos rectos y las rodillas dobladas
 2. Caminar los pies hacia atrás hasta que se extienden
 3. Mantenga esta posición""",
      } +
      {
        "nl": """Stilstaand joggen""",
        "en": """High knees""",
        "cs": """Vysoká kolena""",
        "es": """Rodillas altas """,
      } +
      {
        "nl":
            """1. Sta stil, maar maak een rennende beweging - duw je knieën zover mogelijk omhoog en wissel je benen af""",
        "en":
            """1. Run in place, putting knees as high up as is comfortable and switching legs at a quick pace""",
        "cs":
            """1. Run in place, putting knees as high up as is comfortable and switching legs at a quick pace""",
        "es":
            """1. Ejecutar en su lugar, poniendo las rodillas tan alto como sea cómodo y cambiando las piernas a un ritmo rápido""",
      } +
      {
        "nl": """Uitvalspassen""",
        "en": """Lunges""",
        "cs": """Výpady""",
        "es": """Estocadas""",
      } +
      {
        "nl": """1. Ga staan met een rechte rug.
2. Doe een grote stap vooruit met je linkerbeen.
3. Duw je bekken omlaag, zo ver tot je bijna de grond raakt met je rechterknie.
4. Duw je bekken omhoog.
5. Ga weer recht staan.
6. Herhaal, en wissel beide benen af.""",
        "en": """1. Stand with back straight
2. Take a large step forward with your left leg
3. Bring your pelvis down until you almost touch the floor with your right knee
4. Bring your pelvis back up
5. Return to standing position by stepping back
6. Repeat, switching legs each time""",
        "cs": """1. Stand with back straight
        2. Take a large step forward with your left leg
        3. Bring your pelvis down until you almost touch the floor with your right knee
        4. Bring your pelvis back up
        5. Return to standing position by stepping back
        6. Repeat, switching legs each time""",
        "es": """1. Párese con la espalda recta
 2. Dé un gran paso adelante con la pierna izquierda
 3. Baje la pelvis hasta casi tocar el suelo con la rodilla derecha
 4. Suba la pelvis
 5. Vuelva a la posición de pie dando un paso atrás
 6. Repita, cambiando las piernas cada vez""",
      } +
      {
        "nl": """Split squats (links)""",
        "en": """Split squats left""",
        "cs": """Dřep ve výpadu nalevo""",
        "es": """Split cuclillas izquierda""",
      } +
      {
        "nl": """Split squats (rechts)""",
        "en": """Split squats right""",
        "cs": """Dřep ve výpadu napravo""",
        "es": """Split cuclillas derecha""",
      } +
      {
        "nl": """1. Stand with back straight
2. Take a large step forward with your left leg
3. Bring your pelvis down until you almost touch the floor with your right knee
4. Bring your pelvis back up
5. Repeat from step 3.""",
        "en": """1. Stand with back straight
2. Take a large step forward with your left leg
3. Bring your pelvis down until you almost touch the floor with your right knee
4. Bring your pelvis back up
5. Repeat from step 3.""",
        "cs": """1. Stand with back straight
2. Take a large step forward with your left leg
3. Bring your pelvis down until you almost touch the floor with your right knee
4. Bring your pelvis back up
5. Repeat from step 3.""",
        "es": """1. Stand with back straight
2. Take a large step forward with your left leg
3. Bring your pelvis down until you almost touch the floor with your right knee
4. Bring your pelvis back up
5. Repeat from step 3.""",
      } +
      {
        "nl": """Draaiend opdrukken""",
        "en": """Push-up rotations""",
        "cs": """Kliky s rotací""",
        "es": """Rotaciones de lagartijas""",
      } +
      {
        "nl": """1. Druk op:
1.a Ga op je buik liggen.
1.b Plaats je handen in de buurt van je oren.
1.c Gebruik je armen om je buik omhoog te duwen totdat je armen gestrekt zijn - houd je rug recht.
1.d Buig je armen totdat je borstkas bijna de grond raakt - houd je rug recht.
1.e Kom weer omhoog en ga naar stap 3.
2. Draai op je zij, houd je rug recht en raak alleen met je hand en voet de grond aan.
3. Herhaal, en wissel bij stap 2 telkens van zij.""",
        "en": """1. Do a standard push-up:
1.a Lie down on your stomach
1.b Place your hands near your ears
1.c Use your arms to lift your stomach up until the arms are straight, keeping the back straight
1.d Bend arms until chest almost touches the ground, making sure the back is straight
1.e Lift your stomach up again, returning to step 3
2. Rotate your body to the side so that the back is straight, the bottom hand supporting the body is fully extended, and only the bottom hand and foot touch the floor
3. Repeat, changing sides at step 2 each time""",
        "cs": """1. Do a standard push-up:
        1.a Lie down on your stomach
        1.b Place your hands near your ears
        1.c Use your arms to lift your stomach up until the arms are straight, keeping the back straight
        1.d Bend arms until chest almost touches the ground, making sure the back is straight
        1.e Lift your stomach up again, returning to step 3
        2. Rotate your body to the side so that the back is straight, the bottom hand supporting the body is fully extended, and only the bottom hand and foot touch the floor
        3. Repeat, changing sides at step 2 each time""",
        "es": """1. Haga una lagartija estándar:
 1.a Acuéstese boca abajo
 1.b Coloque las manos cerca de los oídos
 1.c Utilice los brazos para levantar el estómago hasta que los brazos estén rectos, manteniendo la espalda recta
 1.d Doble los brazos hasta que el pecho casi toca el suelo, asegurarse de que la espalda es recta 1.e Levante el estómago de nuevo, volver al paso 3
 2. Gire el cuerpo a un lado para que la espalda es recta, la mano inferior que apoya el cuerpo está completamente extendido, y sólo la mano inferior y el pie tocar el piso
 3. Repetir, cambiando de lado en el paso 2 cada vez""",
      } +
      {
        "nl": """Links planken""",
        "en": """Side plank left""",
        "cs": """Prkno na levém boku""",
        "es": """Plancha lateral izquierda""",
      } +
      {
        "nl": """Rechts planken""",
        "en": """Side plank right""",
        "cs": """Prkno na pravém boku""",
        "es": """Plancha lateral derecha""",
      } +
      {
        "nl":
            """1. Ga op je linkerzij liggen, houd je rechterelleboog recht en steek je arm uit.
2. Duw je bekken omhoog door je rechterschouder op te tillen, maar houd je bovenarm op de grond - je hoofd, bekken en voeten moeten in een rechte lijn liggen.
3. Houd deze positie vast.""",
        "en":
            """1. Lie down on your side, with your bottom elbow at a right angle, arm sticking out
2. Lift your pelvis off the floor by lifting your bottom shoulder up, keeping the forearm on the floor; your head, pelvis, and feet should be in a straight line
3. Hold this position""",
        "cs":
            """1. Lie down on your left side, with your bottom elbow at a right angle, arm sticking out
        2. Lift your pelvis off the floor by lifting your bottom shoulder up, keeping the forearm on the floor; your head, pelvis, and feet should be in a straight line
        3. Hold this position""",
        "es":
            """1. Acuéstese de lado, con el codo inferior en ángulo derecho, brazo sobresaliendo
 2. Levante la pelvis del suelo levantando el hombro inferior hacia arriba, manteniendo el antebrazo en el suelo; la cabeza, la pelvis y los pies deben estar en línea recta
 3. Mantenga esta posición""",
      } +
      {
        "nl": """Zijwaartse uitvalspassen (links)""",
        "en": """Side split squats left""",
        "cs": """Boční výpady nalevo""",
        "es": """Estocadas laterales (izquierdo)""",
      } +
      {
        "nl": """Zijwaartse uitvalspassen (rechts)""",
        "en": """Side split squats right""",
        "cs": """Boční výpady napravo""",
        "es": """Estocadas laterales (derecho)""",
      } +
      {
        "nl":
            """1. Ga recht staan en doe een brede, zijwaartse pas, net iets voorbij schouderbreedte.
2. Buig één knie totdat je heup gelijkstaat aan de grond. De gebogen knie moet gelijkstaan aan de voet.
3. Duw jezelf omhoog met je voorste knie, ga terug naar stap 1 en herhaal, telkens met een andere knie.""",
        "en":
            """1. Stand tall and take a wide lateral stride, just greater than shoulder width.
2. Bend one knee until your thigh is parallel to the floor. The bent knee must be in line with the foot.
3. Push back to the starting position and repeat.""",
        "cs":
            """1. Stand tall and take a wide lateral stride, just greater than shoulder width. 

        2. Bend one knee until your thigh is parallel to the floor. The bent knee must be in line with the foot.

        3. Press up and repeat, switching feet.""",
        "es":
            """1. Stand tall and take a wide lateral stride, just greater than shoulder width.
2. Bend one knee until your thigh is parallel to the floor. The bent knee must be in line with the foot.
3. Push back to the starting position and repeat.""",
      } +
      {
        "nl": """Bulgaarse gespleten hurkzit (links)""",
        "en": """Bulgarian split squats left""",
        "cs": """Bulharské dřepy na levé noze""",
        "es": """Split cuclillas búlgaras izquierda""",
      } +
      {
        "nl": """Bulgaarse gespleten hurkzit (rechts)""",
        "en": """Bulgarian split squats right""",
        "cs": """Bulharské dřepy na pravé noze""",
        "es": """Split cuclillas búlgaras derecha""",
      } +
      {
        "nl":
            """1. Pak een stoel en ga er recht voor staan. Plaats het voorste deel van je voet op de stoel.
2. Buig de voorste knie en balanceer je armen totdat de achterste knie bijna de grond raakt.
3. Duw jezelf terug, ga terug naar stap 1 en herhaal, telkens met een andere knie.""",
        "en":
            """1. Stand tall in front of a chair and take a large step. Put the upper part of one of your feet on the chair.
2. Bend the front knee, balancing with arms until the back knee almost touches the ground
3. Push back to the starting position and repeat.""",
        "cs":
            """1. Stand tall in front of a chair and take a large step. Put the upper part of one of your feet on the chair.
2. Bend the front knee, balancing with arms until the back knee almost touches the ground
3. Push back to the starting position and repeat.""",
        "es":
            """1. Párese alto delante de una silla y dar un gran paso. Coloque la parte superior de uno de sus pies en la silla.
 2. Doblar la rodilla delantera, balanceándose con los brazos hasta que la rodilla trasera casi toque el suelo
 3. Empuje hacia atrás a la posición inicial y repetir.""",
      } +
      {
        "nl": """Pistoolzit (links)""",
        "en": """Pistol squats left""",
        "cs": """Dřep na levé noze""",
        "es": """Sentadilla pistol izquierda""",
      } +
      {
        "nl": """Pistoolzit (rechts)""",
        "en": """Pistol squats right""",
        "cs": """Dřep na pravé noze""",
        "es": """Sentadilla pistol Derecha""",
      } +
      {
        "nl": """1. Zet één been voor je.
2. Buig je knie totdat je hurkt - houd je rug en andere been recht.
3. Buig je knie terug en maak hem weer recht.
4. Herhaal.""",
        "en":
            """1. Stand on one leg, with your other leg straight and slightly forward.
2. Bend one knee slowly, descending into a squat and keeping your back and your other leg straight.
3. Slowly raise yourself from the squat, straightening the bent knee and keeping the other leg straight.
4. Repeat""",
        "cs":
            """1. Stand on one leg, with your other leg straight and slightly forward.
2. Bend one knee slowly, descending into a squat and keeping your back and your other leg straight.
3. Slowly raise yourself from the squat, straightening the bent knee and keeping the other leg straight.
4. Repeat""",
        "es":
            """1. Párese sobre una pierna, con la otra recta y ligeramente hacia adelante. 
2. Doblar una rodilla lentamente, descendiendo en cuclillas y manteniendo la espalda y la otra pierna recta.
 3. Levántese lentamente de la sentadilla, enderezando la rodilla doblada y manteniendo la otra pierna recta.
 4. Repita""",
      } +
      {
        "nl": """Geknielde terugtrap""",
        "en": """Kneeling kickbacks""",
        "cs": """Kickbacky v kleku""",
        "es": """Patada hacia atrás arrodillado """,
      } +
      {
        "nl":
            """1. Ga op zijn hondjes zitten en plaats één voet tegen iets met weerstand, zoals een kabel.
2. Duw je voet naar achteren, zo ver totdat je been volledig gestrekt is.
3. Houd één seconde vol en keer terug naar de startpositie.
4. Herhaal, en wissel steeds van voet.""",
        "en": """1. Get down on all fours.
2. Push one foot back until fully extended, concentrating on the gluteus muscles.
3. Stay for one second, then return to the initial position.
4. Repeat, alternating feet""",
        "cs": """1. Get down on all fours.
2. Push one foot back until fully extended, concentrating on the gluteus muscles.
3. Stay for one second, then return to the initial position.
4. Repeat, alternating feet""",
        "es": """1. Ponte a cuatro patas.
 2. Empuja un pie hacia atrás hasta que esté completamente extendido, concentrándose en los músculos del glúteo.
 3. Permanecer durante un segundo, luego volver a la posición inicial.
 4. Repetir, alternando los pies""",
      } +
      {
        "nl": """Kuitoptrekken (links)""",
        "en": """Left leg calf raises""",
        "cs": """Výpony na levé noze""",
        "es": """Levantamientos de pantorrilla derecho""",
      } +
      {
        "nl": """Kuitoptrekken (rechts)""",
        "en": """Right leg calf raises""",
        "cs": """Výpony na pravé noze""",
        "es": """Levantamientos de pantorrilla derecho""",
      } +
      {
        "nl":
            """1. Ga op de grond staan of op de rand van een opstapje. Til één voet op en houd hem tegen op je kuit.
2. Til je hielen op, zo ver totdat je op je tenen staat.
3. Houd dit drie seconden vol. Duw je voet weer naar omlaag zonder de grond te raken met je hiel.""",
        "en":
            """1. Stand on the floor or on the edge of a step to increase the range of movement. Raise one foot, placing the upper part on your calf.
2. Lift your heels until you're standing on toes.
3. Stay in this position for three seconds, then lower your foot without touching the ground with your heel.""",
        "cs":
            """1. Stand on the floor or on the edge of a step to increase the range of movement. Raise one foot, placing the upper part on your calf.
2. Lift your heels until you're standing on toes.
3. Stay in this position for three seconds, then lower your foot without touching the ground with your heel.""",
        "es":
            """1. Párese en el suelo o en el borde de un escalón para aumentar el rango de movimiento. Levante un pie, colocando la parte superior de la pantorrilla.
 2. Levante los talones hasta que esté de pie en los dedos de los pies.
 3. Permanezca en esta posición durante tres segundos, luego baje el pie sin tocar el suelo con el talón.""",
      };
  String get i18n => localize(this, t);
}
