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
} +
{
"nl": """Hierna:""",
"en": """Next up:""",
} +
{
"nl": """Tijd om aan de slag te gaan! Allereerst: %s""",
"en": """Let's go! First up: %s""",
} +
{
"nl": """Nog %d seconden te gaan""",
"en": """%d seconds left""",
} +
{
"nl": """Tijd voor een pauze!""",
"en": """Break!""",
} +
{
"nl": """Druk om bediening te tonen""",
"en": """Tap for controls""",
} +
{
"nl": """Afbeelding ontbreekt""",
"en": """Image missing""",
} +
{
"nl": """Naam van workout""",
"en": """Workout title""",
} +
{
"nl": """Coach jezelf!""",
"en": """Be your own coach!""",
} +
{
"nl": """Ontwerp dé workout die voor jou prettig voelt""",
"en": """Design the workout that makes you feel the best""",
} +
{
"nl": """Hele lichaam""",
"en": """Full body""",
} +
{
"nl": """Benen""",
"en": """Legs""",
} +
{
"nl": """Je straalt!""",
"en": """You're glowing!""",
} +
{
"nl": """Deel je oefeningen met ons""",
"en": """Contribute an exercise""",
} +
{
"nl": """Feeel is afhankelijk van vrijwilligers zoals jij voor het verkrijgen van oefeningen met bijbehorende foto's. Je foto's worden anoniem aangepast voor gebruik in de app, dan aan je opgestuurd voor goedkeuring en pas dáárna toegevoegd aan de app. Alvast bedankt!""",
"en": """Feeel relies on volunteers like you to submit exercises and exercise photos. Any photos you submit will first be privately processed, then sent to you for approval, and only then released in the app. Thanks for contributing!""",
} +
{
"nl": """Naam van oefening""",
"en": """Exercise name""",
} +
{
"nl": """Hoe voer je de oefening te worden uit? (optioneel)""",
"en": """How to perform exercise (optional)""",
} +
{
"nl": """De e-mail kan niet worden verstuurd""",
"en": """Email could not be sent""",
} +
{
"nl": """Oefeningbijdrage:%s""",
"en": """Exercise proposal: %s""",
} +
{
"nl": """Hallo,

Hierbij dien ik een voorstel in voor een oefening. Ik begrijp dat ik alleen mijn *eigen* werk mag indienen. Als ik dit bericht verstuur, ga ik onherroepelijk akkoord met het feit dat de naam en omschrijving van de oefening worden vrijgegeven onder de CC BY-SA- en GPLv3-licentie, met uitzondering van de appwinkel. Ik geef tevens toestemming om de bijgevoegde afbeelding(en) anoniem te verwerken. Daarna worden ze door mij geëvalueerd om ze al dan niet vrij te geven onder de CC BY-SA-licentie.

Naam van de oefening: %1s
Uitleg:
%2s""",
"en": """Hello,

I'm sending a proposal of an exercise. I hereby declare that all of it is my own work only. By sending this message, I irrevocably agree to have the submitted name and description released under a CC BY-SA license and an AGPLv3 with an app store exception license. I also give permission to process the attached image(s) into low-poly variants. After they are processed, I will evaluate whether I am willing to license them under the CC BY-SA license.

Exercise name: %1s
Exercise steps:
%2s""",
} +
{
"nl": """Instellingen""",
"en": """Settings""",
} +
{
"nl": """Geef de workout een naam""",
"en": """Please specify a workout title""",
} +
{
"nl": """Voeg minimaal 1 oefening toe""",
"en": """Please add at least 1 exercise""",
} +
{
"nl": """Duur""",
"en": """Duration""",
} +
{
"nl": """Duur van oefening""",
"en": """Exercise duration""",
} +
{
"nl": """Duur van pauze""",
"en": """Break duration""",
} +
{
"nl": """Aangepast""",
"en": """Custom""",
} +
{
"nl": """Niet-numeriek""",
"en": """Non-numeric""",
} +
{
"nl": """Niet-positief""",
"en": """Nonpositive""",
} +
{
"nl": """Dagelijkse herinnering""",
"en": """Daily notification""",
} +
{
"nl": """Wordt dagelijks herinnerd om een workout te doen""",
"en": """A daily reminder to work out""",
} +
{
"nl": """Tijd om je sportkleding aan te trekken!""",
"en": """Time to put on workout clothes!""",
} +
{
"nl": """Het kost slechts een paar minuten van je tijd om je weer fris en fruitig te voelen""",
"en": """It takes just a few minutes to feel fresh and fit""",
} +
{
"nl": """Dagelijkse herinnering sturen""",
"en": """Remind me to exercise daily""",
} +
{
"nl": """Zonder cameramachtiging kunnen er geen foto's worden gemaakt""",
"en": """Can't take photos without camera permission""",
} +
{
"nl": """Tijdstip""",
"en": """Notification time""",
} +
{
"nl": """Voeg eerst een oefening toe""",
"en": """Add an exercise first""",
} +
{
"nl": """Workout starten""",
"en": """Start workout""",
} +
{
"nl": """Workout hervatten""",
"en": """Resume workout""",
} +
{
"nl": """Vorige oefening""",
"en": """Previous exercise""",
} +
{
"nl": """Volgende oefening""",
"en": """Next exercise""",
} +
{
"nl": """Oefeningen toevoegen""",
"en": """Add exercises""",
} +
{
"nl": """Aanpassen""",
"en": """Edit""",
} +
{
"nl": """Verwijderen""",
"en": """Delete""",
} +
{
"nl": """Klaar""",
"en": """Done""",
} +
{
"nl": """Meer informatie""",
"en": """More info""",
} +
{
"nl": """Eigen workout samenstellen""",
"en": """Create custom workout""",
} +
{
"nl": """Deel je eigen workout met ons""",
"en": """Propose custom exercise""",
} +
{
"nl": """Versturen via e-mail""",
"en": """Submit via email""",
} +
{
"nl": """Foto toevoegen uit galerij""",
"en": """Add photo from gallery""",
} +
{
"nl": """Foto maken""",
"en": """Take a photo""",
} +
{
"nl": """Voeg een link toe naar je foto('s)""",
"en": """Add a link to your photo(s)""",
} +
{
"nl": """Geluiden afspelen in plaats van oefening voor te lezen""",
"en": """Use sounds instead of speech""",
} +
{
"nl": """Timing aanpassen""",
"en": """Adjust timing""",
} +
{
"nl": """Wetenschappelijk bewezen 7-minutenworkout""",
"en": """Scientific 7 minute workout""",
} +
{
"nl": """Beenworkout""",
"en": """Leg workout""",
} +
{
"nl": """Klapsprongen""",
"en": """Jumping jacks""",
} +
{
"nl": """1. Zet je voeten tegen elkaar en houdt je armen gestrekt naast je lichaam
2. Spring dusdanig zodat je je benen spreidt en je handen boven je hoofd aantikt
3. Herhaal""",
"en": """1. Stand with feet together and arms at the sides
2. Jump to a position with the legs spread wide and the hands touching overhead
3. Repeat""",
} +
{
"nl": """Muurzitten""",
"en": """Wall sit""",
} +
{
"nl": """1. Leun tegen de muur en zet je voeten stevig op de grond; houd je schouders los en 60 cm van de muur verwijderd.
2. Zak naar beneden en zorg dat je rug tegen de muur blijft totdat je knieën zich direct boven de enkels bevinden.
Pijn in je dijbeenspieren is normaal. Stop als je pijn in je knie of knieholte voelt.""",
"en": """1. Lean against the wall, facing forward and with feet planted firmly on the ground, shoulders width apart and about 2 feet away from the wall
2. Slide down the wall, keeping the back pressed to it, until legs are at a right angle. The knees should be directly above the ankles
Quadricep pain is normal, stop if feeling pain in the knee or kneecap""",
} +
{
"nl": """Opdrukken""",
"en": """Push-ups""",
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
} +
{
"nl": """Spiercrunches""",
"en": """Ab crunches""",
} +
{
"nl": """1. Ga op je rug liggen en buig je knieën.
2. Draai je schouders richting je bekken. Houd je handen achter of naast je nek of kruislings over je borstkas.
3. Herhaal.""",
"en": """1. Lie down face up on the floor with knees bent.
2. Curl the shoulders towards the pelvis. The hands can be behind or beside the neck or crossed over the chest.
3. Repeat""",
} +
{
"nl": """Opstappen""",
"en": """Step-ups""",
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
} +
{
"nl": """Hurkzitten""",
"en": """Squats""",
} +
{
"nl": """1. Ga staan en zet je voeten zó dat ze in verhouding staan met je schouders.
2. Draai je heupen naar achteren en buig je knieën en heupen om je bovenlichaam naar beneden te duwen.
3. Herhaal.""",
"en": """1. Stand with feet shoulder-width apart
2. Move the hips back and bend the knees and hips to lower the torso
3. Repeat""",
} +
{
"nl": """Stoelzakken""",
"en": """Chair dips""",
} +
{
"nl": """1. Ga op het puntje van een stoel zitten, houd je rug recht en houd de punt vast met je handen.
2. Blijf vasthouden, strek je armen, duw je kont
omhoog en loop een stukje naar voren.
3. Duw je lichaam langzaam omlaag, houd je rug recht en zorg dat je armen in een rechte hoek staan.
4. Duw je lichaam weer omhoog, naar de vorige positie, en strek je armen.
5. Herhaal stap 3 en 4.""",
"en": """1. Sit down on the front edge of a chair, back straight, hands holding the front edge
2. Still holding the edge of the chair, arms extended, lift your butt and walk forward slightly so that it is a few inches from the chair.
3. Slowly lower your body, keeping the back straight, until arms are at a right angle
4. Raise your body again to the previous position, arms extended
5. Repeat steps 3 and 4""",
} +
{
"nl": """Planken""",
"en": """Plank""",
} +
{
"nl": """1. Ga op z'n hondjes zitten, strek je armen en buig je benen.
2. Loop met je voeten naar achteren totdat je benen gestrekt zijn.
3. Houd deze positie vast.""",
"en": """1. Get down on all fours, with arms straight and knees bent
2. Walk your feet back until they are extended
3. Hold this position""",
} +
{
"nl": """Stilstaand joggen""",
"en": """High knees""",
} +
{
"nl": """1. Sta stil, maar maak een rennende beweging - duw je knieën zover mogelijk omhoog en wissel je benen af""",
"en": """1. Run in place, putting knees as high up as is comfortable and switching legs at a quick pace""",
} +
{
"nl": """Uitvalspassen""",
"en": """Lunges""",
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
} +
{
"nl": """Gespleten hurkzit (links)""",
"en": """Split squats left""",
} +
{
"nl": """Gespleten hurkzit (rechts)""",
"en": """Split squats right""",
} +
{
"nl": """1. Ga staan met een rechte rug.
2. Doe een grote stap vooruit met je linkerbeen.
3. Duw je bekken omlaag, zo ver tot je bijna de grond raakt met je rechterknie.
4. Duw je bekken omhoog.
5. Herhaal vanaf stap 3.""",
"en": """1. Stand with back straight
2. Take a large step forward with your left leg
3. Bring your pelvis down until you almost touch the floor with your right knee
4. Bring your pelvis back up
5. Repeat from step 3.""",
} +
{
"nl": """Draaiend opdrukken""",
"en": """Push-up rotations""",
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
} +
{
"nl": """Links planken""",
"en": """Side plank left""",
} +
{
"nl": """Rechts planken""",
"en": """Side plank right""",
} +
{
"nl": """1. Ga op je linkerzij liggen, houd je rechterelleboog recht en steek je arm uit.
2. Duw je bekken omhoog door je rechterschouder op te tillen, maar houd je bovenarm op de grond - je hoofd, bekken en voeten moeten in een rechte lijn liggen.
3. Houd deze positie vast.""",
"en": """1. Lie down on your side, with your bottom elbow at a right angle, arm sticking out
2. Lift your pelvis off the floor by lifting your bottom shoulder up, keeping the forearm on the floor; your head, pelvis, and feet should be in a straight line
3. Hold this position""",
} +
{
"nl": """Gespleten zijhurkzit (links)""",
"en": """Side split squats left""",
} +
{
"nl": """Gespleten zijhurkzit (rechts)""",
"en": """Side split squats right""",
} +
{
"nl": """1. Ga recht staan en doe een brede, zijwaartse pas, net iets voorbij schouderbreedte.
2. Buig één knie totdat je heup gelijkstaat aan de grond. De gebogen knie moet gelijkstaan aan de voet.
3. Duw jezelf omhoog en herhaal.""",
"en": """1. Stand tall and take a wide lateral stride, just greater than shoulder width.
2. Bend one knee until your thigh is parallel to the floor. The bent knee must be in line with the foot.
3. Push back to the starting position and repeat.""",
} +
{
"nl": """Bulgaarse gespleten hurkzit (links)""",
"en": """Bulgarian split squats left""",
} +
{
"nl": """Bulgaarse gespleten hurkzit (rechts)""",
"en": """Bulgarian split squats right""",
} +
{
"nl": """1. Pak een stoel en ga er recht voor staan. Plaats het voorste deel van je voet op de stoel.
2. Buig de voorste knie en balanceer je armen totdat de achterste knie bijna de grond raakt.
3. Duw jezelf terug, ga terug naar stap 1 en herhaal, telkens met een andere knie.""",
"en": """1. Stand tall in front of a chair and take a large step. Put the upper part of one of your feet on the chair.
2. Bend the front knee, balancing with arms until the back knee almost touches the ground
3. Push back to the starting position and repeat.""",
} +
{
"nl": """Pistoolzit (links)""",
"en": """Pistol squats left""",
} +
{
"nl": """Pistoolzit (rechts)""",
"en": """Pistol squats right""",
} +
{
"nl": """1. Zet één been voor je.
2. Buig je knie totdat je hurkt - houd je rug en andere been recht.
3. Buig je knie terug en maak hem weer recht.
4. Herhaal.""",
"en": """1. Stand on one leg, with your other leg straight and slightly forward.
2. Bend one knee slowly, descending into a squat and keeping your back and your other leg straight.
3. Slowly raise yourself from the squat, straightening the bent knee and keeping the other leg straight.
4. Repeat""",
} +
{
"nl": """Geknielde terugtrap""",
"en": """Kneeling kickbacks""",
} +
{
"nl": """1. Ga op zijn hondjes zitten en plaats één voet tegen iets met weerstand, zoals een kabel.
2. Duw je voet naar achteren, zo ver totdat je been volledig gestrekt is.
3. Houd één seconde vol en keer terug naar de startpositie.
4. Herhaal, en wissel steeds van voet.""",
"en": """1. Get down on all fours.
2. Push one foot back until fully extended, concentrating on the gluteus muscles.
3. Stay for one second, then return to the initial position.
4. Repeat, alternating feet""",
} +
{
"nl": """Kuitoptrekken (links)""",
"en": """Left leg calf raises""",
} +
{
"nl": """Kuitoptrekken (rechts)""",
"en": """Right leg calf raises""",
} +
{
"nl": """1. Ga op de grond staan of op de rand van een opstapje. Til één voet op en houd hem tegen op je kuit.
2. Til je hielen op, zo ver totdat je op je tenen staat.
3. Houd dit drie seconden vol. Duw je voet weer naar omlaag zonder de grond te raken met je hiel.""",
"en": """1. Stand on the floor or on the edge of a step to increase the range of movement. Raise one foot, placing the upper part on your calf.
2. Lift your heels until you're standing on toes.
3. Stay in this position for three seconds, then lower your foot without touching the ground with your heel.""",
};
String get i18n => localize(this, t);
}
