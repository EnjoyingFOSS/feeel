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
static var t = Translations("en_us") + 
{
"nl": """Goed gedaan!""",
"en_us": """You did it!""",
"cs_cz": """Dobrá práce!""",
} +
{
"nl": """Hierna:""",
"en_us": """Next up:""",
"cs_cz": """Další cvik:""",
} +
{
"nl": """Tijd om aan de slag te gaan! Allereerst: %s""",
"en_us": """Let's go! First up: %s""",
"cs_cz": """Pojďme na to! První cvik: %s""",
} +
{
"nl": """Nog %d seconden te gaan""",
"en_us": """%d seconds left""",
"cs_cz": """Zbývá %d vteřin""",
} +
{
"nl": """Tijd voor een pauze!""",
"en_us": """Break!""",
"cs_cz": """Pauza!""",
} +
{
"nl": """Druk om bediening te tonen""",
"en_us": """Tap for controls""",
"cs_cz": """Ťukněte pro ovládání""",
} +
{
"nl": """Afbeelding ontbreekt""",
"en_us": """Image missing""",
"cs_cz": """Chybí fotka""",
} +
{
"nl": """Naam van workout""",
"en_us": """Workout title""",
"cs_cz": """Název tréninku""",
} +
{
"nl": """Coach jezelf!""",
"en_us": """Be your own coach!""",
"cs_cz": """Buď vlastním trenérem!""",
} +
{
"nl": """Ontwerp dé workout die voor jou prettig voelt""",
"en_us": """Design the workout that makes you feel the best""",
"cs_cz": """Navrhni si takový trénink, po kterém se budeš cítit nejlépe""",
} +
{
"nl": """Hele lichaam""",
"en_us": """Full body""",
"cs_cz": """Celé tělo""",
} +
{
"nl": """Benen""",
"en_us": """Legs""",
"cs_cz": """Nohy""",
} +
{
"nl": """Je straalt!""",
"en_us": """You're glowing!""",
"cs_cz": """Dobrá práce!""",
} +
{
"nl": """Deel je oefeningen met ons""",
"en_us": """Contribute an exercise""",
"cs_cz": """Přispěj nový cvik""",
} +
{
"nl": """Feeel is afhankelijk van vrijwilligers zoals jij voor het verkrijgen van oefeningen met bijbehorende foto's. Je foto's worden anoniem aangepast voor gebruik in de app, dan aan je opgestuurd voor goedkeuring en pas dáárna toegevoegd aan de app. Alvast bedankt!""",
"en_us": """Feeel relies on volunteers like you to submit exercises and exercise photos. Any photos you submit will first be privately processed, then sent to you for approval, and only then released in the app. Thanks for contributing!""",
"cs_cz": """Feeel relies on volunteers like you to submit exercises and exercise photos. Any photos you submit will first be privately processed, then sent to you for approval, and only then released in the app. Thanks for contributing!""",
} +
{
"nl": """Naam van oefening""",
"en_us": """Exercise name""",
"cs_cz": """Název cviku""",
} +
{
"nl": """Hoe voer je de oefening te worden uit? (optioneel)""",
"en_us": """How to perform exercise (optional)""",
"cs_cz": """Jak provést cvik (nepovinné)""",
} +
{
"nl": """De e-mail kan niet worden verstuurd""",
"en_us": """Email could not be sent""",
"cs_cz": """E-mail se nepovedlo odeslat""",
} +
{
"nl": """Oefeningbijdrage:%s""",
"en_us": """Exercise proposal: %s""",
"cs_cz": """Návrh cviku: %s""",
} +
{
"nl": """Hallo,

Hierbij dien ik een voorstel in voor een oefening. Ik begrijp dat ik alleen mijn *eigen* werk mag indienen. Als ik dit bericht verstuur, ga ik onherroepelijk akkoord met het feit dat de naam en omschrijving van de oefening worden vrijgegeven onder de CC BY-SA- en AGPLv3-licentie, met uitzondering van de appwinkel. Ik geef tevens toestemming om de bijgevoegde afbeelding(en) anoniem te verwerken. Daarna worden ze door mij geëvalueerd om ze al dan niet vrij te geven onder de CC BY-SA-licentie.

Naam van de oefening: %1s
Uitleg:
%2s""",
"en_us": """Hello,

I'm sending a proposal of an exercise. I hereby declare that all of it is my own work only. By sending this message, I irrevocably agree to have the submitted name and description released under a CC BY-SA license and an AGPLv3 with an app store exception license. I also give permission to process the attached image(s) into low-poly variants. After they are processed, I will evaluate whether I am willing to license them under the CC BY-SA license.

Exercise name: %1s
Exercise steps:
%2s""",
"cs_cz": """Hello,

I'm sending a proposal of an exercise. I hereby declare that all of it is my own work only. By sending this message, I irrevocably agree to have the submitted name and description released under a CC BY-SA license and an AGPLv3 with an app store exception license. I also give permission to process the attached image(s) into low-poly variants. After they are processed, I will evaluate whether I am willing to license them under the CC BY-SA license.

Exercise name: %1s
Exercise steps:
%2s""",
} +
{
"nl": """Workout starten""",
"en_us": """Start workout""",
"cs_cz": """Spustit trénink""",
} +
{
"nl": """Workout hervatten""",
"en_us": """Resume workout""",
"cs_cz": """Pokračovat v tréninku""",
} +
{
"nl": """Vorige oefening""",
"en_us": """Previous exercise""",
"cs_cz": """Předchozí cvik""",
} +
{
"nl": """Volgende oefening""",
"en_us": """Next exercise""",
"cs_cz": """Další cvik""",
} +
{
"nl": """Oefeningen toevoegen""",
"en_us": """Add exercises""",
"cs_cz": """Přidat cviky""",
} +
{
"nl": """Aanpassen""",
"en_us": """Edit""",
"cs_cz": """Upravit""",
} +
{
"nl": """Verwijderen""",
"en_us": """Delete""",
"cs_cz": """Odstranit""",
} +
{
"nl": """Klaar""",
"en_us": """Done""",
"cs_cz": """Hotovo""",
} +
{
"nl": """Meer informatie""",
"en_us": """More info""",
"cs_cz": """Více info""",
} +
{
"nl": """Eigen workout samenstellen""",
"en_us": """Create custom workout""",
"cs_cz": """Vytvořit vlastní trénink""",
} +
{
"nl": """Deel je eigen workout met ons""",
"en_us": """Propose custom exercise""",
"cs_cz": """Navrhnout vlastní cvik""",
} +
{
"nl": """Versturen via e-mail""",
"en_us": """Submit via email""",
"cs_cz": """Odeslat e-mailem""",
} +
{
"nl": """Foto toevoegen uit galerij""",
"en_us": """Add photo from gallery""",
"cs_cz": """Přidat fotku z galerie""",
} +
{
"nl": """Foto maken""",
"en_us": """Take a photo""",
"cs_cz": """Vyfotit cvik""",
} +
{
"nl": """Voeg een link toe naar je foto('s)""",
"en_us": """Add a link to your photo(s)""",
"cs_cz": """Přidat odkaz k fotce/fotkám""",
} +
{
"nl": """Wetenschappelijk bewezen 7-minutenworkout""",
"en_us": """Scientific 7 minute workout""",
"cs_cz": """Vědecký sedmiminutový trénink""",
} +
{
"nl": """Beenworkout voor gevorderden""",
"en_us": """Advanced leg workout""",
"cs_cz": """Pokročilý trénink nohou""",
} +
{
"nl": """Klapsprongen""",
"en_us": """Jumping jacks""",
"cs_cz": """Skákací panák""",
} +
{
"nl": """1. Zet je voeten tegen elkaar en houdt je armen gestrekt naast je lichaam
2. Spring dusdanig zodat je je benen spreidt en je handen boven je hoofd aantikt
3. Herhaal""",
"en_us": """1. Stand with feet together and arms at the sides
2. Jump to a position with the legs spread wide and the hands touching overhead
3. Repeat""",
"cs_cz": """1. Stand with feet together and arms at the sides
2. Jump to a position with the legs spread wide and the hands touching overhead
3. Repeat""",
} +
{
"nl": """Muurzitten""",
"en_us": """Wall sit""",
"cs_cz": """Sed u stěny""",
} +
{
"nl": """1. Leun tegen de muur en zet je voeten stevig op de grond; houd je schouders los en 60 cm van de muur verwijderd.
2. Zak naar beneden en zorg dat je rug tegen de muur blijft totdat je knieën zich direct boven de enkels bevinden.

Pijn in je dijbeenspieren is normaal. Stop als je pijn in je knie of knieholte voelt.""",
"en_us": """1. Lean against the wall with feet planted firmly on the ground, shoulders width apart and about 2 feet away from the wall
2. Slide down the wall, keeping the back pressed to it, until legs are at a right angle. The knees should be directly above the ankles
Quadricep pain is normal, stop if feeling pain in the knee or kneecap""",
"cs_cz": """1. Lean against the wall with feet planted firmly on the ground, shoulders width apart and about 2 feet away from the wall
        2. Slide down the wall, keeping the back pressed to it, until 
. The knees should be directly above the ankles
        
        Quadricep pain is normal, stop if feeling pain in the knee or kneecap""",
} +
{
"nl": """Opdrukken""",
"en_us": """Push-ups""",
"cs_cz": """Kliky""",
} +
{
"nl": """1. Ga op je buik liggen.
2. Plaats je handen in de buurt van je oren.
3. Gebruik je armen om je buik omhoog te duwen totdat je armen gestrekt zijn - houd je rug recht.
4. Buig je armen totdat je borstkas bijna de grond raakt - houd je rug recht.
5. Herhaal stap 3 en 4.""",
"en_us": """1. Lie down on your stomach
2. Place your hands near your ears
3. Use your arms to lift your stomach up until the arms are straight, keeping the back straight
4. Bend arms until chest almost touches the ground, making sure the back is straight
5. Repeat from step 3""",
"cs_cz": """1. Lie down on your stomach
        2. Place your hands near your ears
        3. Use your arms to lift your stomach up until the arms are straight, keeping the back straight
        4. Bend arms until chest almost touches the ground, making sure the back is straight
        5. Repeat from step 3""",
} +
{
"nl": """Spiercrunches""",
"en_us": """Ab crunches""",
"cs_cz": """Sedolehy""",
} +
{
"nl": """1. Ga op je rug liggen en buig je knieën.
2. Draai je schouders richting je bekken. Houd je handen achter of naast je nek of kruislings over je borstkas.
3. Herhaal.""",
"en_us": """1. Lie down face up on the floor with knees bent.
2. Curl the shoulders towards the pelvis. The hands can be behind or beside the neck or crossed over the chest.
3. Repeat""",
"cs_cz": """1. Lie down face up on the floor with knees bent.
        2. Curl the shoulders towards the pelvis. The hands can be behind or beside the neck or crossed over the chest.
        3. Repeat""",
} +
{
"nl": """Opstappen""",
"en_us": """Step-ups""",
"cs_cz": """Výšlapy""",
} +
{
"nl": """1. Ga voor een stoel staan.
2. Ga op de stoel staan.
3. Ga van de stoel af.
4. Herhaal.""",
"en_us": """1. Stand facing a chair
2. Step up onto the chair
3. Step off the chair
4. Repeat""",
"cs_cz": """1. Stand facing a chair
        2. Step up onto the chair
        3. Step off the chair
        4. Repeat""",
} +
{
"nl": """Hurkzitten""",
"en_us": """Squats""",
"cs_cz": """Dřepy""",
} +
{
"nl": """1. Ga staan en zet je voeten zó dat ze in verhouding staan met je schouders.
2. Draai je heupen naar achteren en buig je knieën en heupen om je bovenlichaam naar beneden te duwen.
3. Herhaal.""",
"en_us": """1. Stand with feet shoulder-width apart
2. Move the hips back and bend the knees and hips to lower the torso
3. Repeat""",
"cs_cz": """1. Stand with feet shoulder-width apart
        2. Move the hips back and bend the knees and hips to lower the torso
        3. Repeat""",
} +
{
"nl": """Stoelzakken""",
"en_us": """Chair dips""",
"cs_cz": """Dipy na židli""",
} +
{
"nl": """1. Ga op het puntje van een stoel zitten, houd je rug recht en houd de punt vast met je handen.
2. Blijf vasthouden, strek je armen, duw je kont
omhoog en loop een stukje naar voren.
3. Duw je lichaam langzaam omlaag, houd je rug recht en zorg dat je armen in een rechte hoek staan.
4. Duw je lichaam weer omhoog, naar de vorige positie, en strek je armen.
5. Herhaal stap 3 en 4.""",
"en_us": """1. Sit down on the front edge of a chair, back straight, hands holding the front edge
2. Still holding the edge of the chair, arms extended, lift your butt and walk forward slightly so that it is a few inches from the chair.
3. Slowly lower your body, keeping the back straight, until arms are at a right angle
4. Raise your body again to the previous position, arms extended
5. Repeat steps 3 and 4""",
"cs_cz": """1. Sit down on the front edge of a chair, back straight, hands holding the front edge
        2. Still holding the edge of the chair, arms extended, lift your butt and walk forward slightly so that it is a few inches from the chair.
        3. Slowly lower your body, keeping the back straight, until arms are at a right angle
        4. Raise your body again to the previous position, arms extended
        5. Repeat steps 3 and 4""",
} +
{
"nl": """Planken""",
"en_us": """Plank""",
"cs_cz": """Prkno""",
} +
{
"nl": """1. Ga op z'n hondjes zitten, strek je armen en buig je benen.
2. Loop met je voeten naar achteren totdat je benen gestrekt zijn.
3. Houd deze positie vast.""",
"en_us": """1. Get down on all fours, with arms straight and knees bent
2. Walk your feet back until they are extended
3. Hold this position""",
"cs_cz": """1. Get down on all fours, with arms straight and knees bent
        2. Walk your feet back until they are extended
        3. Hold this position""",
} +
{
"nl": """Stilstaand joggen""",
"en_us": """High knees""",
"cs_cz": """Vysoká kolena""",
} +
{
"nl": """1. Sta stil, maar maak een rennende beweging - duw je knieën zover mogelijk omhoog en wissel je benen af""",
"en_us": """1. Run in place, putting knees as high up as is comfortable and switching legs at a quick pace""",
"cs_cz": """1. Run in place, putting knees as high up as is comfortable and switching legs at a quick pace""",
} +
{
"nl": """Uitvalspassen""",
"en_us": """Lunges""",
"cs_cz": """Výpady""",
} +
{
"nl": """1. Ga staan met een rechte rug.
2. Doe een grote stap vooruit met je linkerbeen.
3. Duw je bekken omlaag, zo ver tot je bijna de grond raakt met je rechterknie.
4. Duw je bekken omhoog.
5. Ga weer recht staan.
6. Herhaal, en wissel beide benen af.""",
"en_us": """1. Stand with back straight
2. Take a large step forward with your left leg
3. Bring your pelvis down until you almost touch the floor with your right knee
4. Bring your pelvis back up
5. Return to standing position by stepping back
6. Repeat, switching legs each time""",
"cs_cz": """1. Stand with back straight
        2. Take a large step forward with your left leg
        3. Bring your pelvis down until you almost touch the floor with your right knee
        4. Bring your pelvis back up
        5. Return to standing position by stepping back
        6. Repeat, switching legs each time""",
} +
{
"nl": """Split squats (links)""",
"en_us": """Split squats left""",
"cs_cz": """Dřep ve výpadu nalevo""",
} +
{
"nl": """Split squats (rechts)""",
"en_us": """Split squats right""",
"cs_cz": """Dřep ve výpadu napravo""",
} +
{
"nl": """1. Stand with back straight
2. Take a large step forward with your left leg
3. Bring your pelvis down until you almost touch the floor with your right knee
4. Bring your pelvis back up
5. Repeat from step 3.""",
"en_us": """1. Stand with back straight
2. Take a large step forward with your left leg
3. Bring your pelvis down until you almost touch the floor with your right knee
4. Bring your pelvis back up
5. Repeat from step 3.""",
"cs_cz": """1. Stand with back straight
2. Take a large step forward with your left leg
3. Bring your pelvis down until you almost touch the floor with your right knee
4. Bring your pelvis back up
5. Repeat from step 3.""",
} +
{
"nl": """Draaiend opdrukken""",
"en_us": """Push-up rotations""",
"cs_cz": """Kliky s rotací""",
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
"en_us": """1. Do a standard push-up:
1.a Lie down on your stomach
1.b Place your hands near your ears
1.c Use your arms to lift your stomach up until the arms are straight, keeping the back straight
1.d Bend arms until chest almost touches the ground, making sure the back is straight
1.e Lift your stomach up again, returning to step 3
2. Rotate your body to the side so that the back is straight, the bottom hand supporting the body is fully extended, and only the bottom hand and foot touch the floor
3. Repeat, changing sides at step 2 each time""",
"cs_cz": """1. Do a standard push-up:
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
"en_us": """Side plank left""",
"cs_cz": """Prkno na levém boku""",
} +
{
"nl": """Rechts planken""",
"en_us": """Side plank right""",
"cs_cz": """Prkno na pravém boku""",
} +
{
"nl": """1. Ga op je linkerzij liggen, houd je rechterelleboog recht en steek je arm uit.
2. Duw je bekken omhoog door je rechterschouder op te tillen, maar houd je bovenarm op de grond - je hoofd, bekken en voeten moeten in een rechte lijn liggen.
3. Houd deze positie vast.""",
"en_us": """1. Lie down on your side, with your bottom elbow at a right angle, arm sticking out
2. Lift your pelvis off the floor by lifting your bottom shoulder up, keeping the forearm on the floor; your head, pelvis, and feet should be in a straight line
3. Hold this position""",
"cs_cz": """1. Lie down on your left side, with your bottom elbow at a right angle, arm sticking out
        2. Lift your pelvis off the floor by lifting your bottom shoulder up, keeping the forearm on the floor; your head, pelvis, and feet should be in a straight line
        3. Hold this position""",
} +
{
"nl": """Zijwaartse uitvalspassen (links)""",
"en_us": """Side split squats left""",
"cs_cz": """Boční výpady nalevo""",
} +
{
"nl": """Zijwaartse uitvalspassen (rechts)""",
"en_us": """Side split squats right""",
"cs_cz": """Boční výpady napravo""",
} +
{
"nl": """1. Ga recht staan en doe een brede, zijwaartse pas, net iets voorbij schouderbreedte.
2. Buig één knie totdat je heup gelijkstaat aan de grond. De gebogen knie moet gelijkstaan aan de voet.
3. Duw jezelf omhoog met je voorste knie, ga terug naar stap 1 en herhaal, telkens met een andere knie.""",
"en_us": """1. Stand tall and take a wide lateral stride, just greater than shoulder width.
2. Bend one knee until your thigh is parallel to the floor. The bent knee must be in line with the foot.
3. Push back to the starting position and repeat.""",
"cs_cz": """1. Stand tall and take a wide lateral stride, just greater than shoulder width.
2. Bend one knee until your thigh is parallel to the floor. The bent knee must be in line with the foot.
3. Push back to the starting position and repeat.""",
} +
{
"nl": """Bulgaarse gespleten hurkzit (links)""",
"en_us": """Bulgarian split squats left""",
"cs_cz": """Bulharské dřepy na levé noze""",
} +
{
"nl": """Bulgaarse gespleten hurkzit (rechts)""",
"en_us": """Bulgarian split squats right""",
"cs_cz": """Bulharské dřepy na pravé noze""",
} +
{
"nl": """1. Pak een stoel en ga er recht voor staan. Plaats het voorste deel van je voet op de stoel.
2. Buig de voorste knie en balanceer je armen totdat de achterste knie bijna de grond raakt.
3. Duw jezelf terug, ga terug naar stap 1 en herhaal, telkens met een andere knie.""",
"en_us": """1. Stand tall in front of a chair and take a large step. Put the upper part of one of your feet on the chair.
2. Bend the front knee, balancing with arms until the back knee almost touches the ground
3. Push back to the starting position and repeat.""",
"cs_cz": """1. Stand tall in front of a chair and take a large step. Put the upper part of one of your feet on the chair.
2. Bend the front knee, balancing with arms until the back knee almost touches the ground
3. Push back to the starting position and repeat.""",
} +
{
"nl": """Pistoolzit (links)""",
"en_us": """Pistol squats left""",
"cs_cz": """Dřep na levé noze""",
} +
{
"nl": """Pistoolzit (rechts)""",
"en_us": """Pistol squats right""",
"cs_cz": """Dřep na pravé noze""",
} +
{
"nl": """1. Zet één been voor je.
2. Buig je knie totdat je hurkt - houd je rug en andere been recht.
3. Buig je knie terug en maak hem weer recht.
4. Herhaal.""",
"en_us": """1. Stand on one leg, with your other leg straight and slightly forward.
2. Bend one knee slowly, descending into a squat and keeping your back and your other leg straight.
3. Slowly raise yourself from the squat, straightening the bent knee and keeping the other leg straight.
4. Repeat""",
"cs_cz": """1. Stand on one leg, with your other leg straight and slightly forward.
2. Bend one knee slowly, descending into a squat and keeping your back and your other leg straight.
3. Slowly raise yourself from the squat, straightening the bent knee and keeping the other leg straight.
4. Repeat""",
} +
{
"nl": """Geknielde terugtrap""",
"en_us": """Kneeling kickbacks""",
"cs_cz": """Kickbacky v kleku""",
} +
{
"nl": """1. Ga op zijn hondjes zitten en plaats één voet tegen iets met weerstand, zoals een kabel.
2. Duw je voet naar achteren, zo ver totdat je been volledig gestrekt is.
3. Houd één seconde vol en keer terug naar de startpositie.
4. Herhaal, en wissel steeds van voet.""",
"en_us": """1. Get down on all fours.
2. Push one foot back until fully extended, concentrating on the gluteus muscles.
3. Stay for one second, then return to the initial position.
4. Repeat, alternating feet""",
"cs_cz": """1. Get down on all fours.
2. Push one foot back until fully extended, concentrating on the gluteus muscles.
3. Stay for one second, then return to the initial position.
4. Repeat, alternating feet""",
} +
{
"nl": """Kuitoptrekken (links)""",
"en_us": """Left leg calf raises""",
"cs_cz": """Výpony na levé noze""",
} +
{
"nl": """Kuitoptrekken (rechts)""",
"en_us": """Right leg calf raises""",
"cs_cz": """Výpony na pravé noze""",
} +
{
"nl": """1. Ga op de grond staan of op de rand van een opstapje. Til één voet op en houd hem tegen op je kuit.
2. Til je hielen op, zo ver totdat je op je tenen staat.
3. Houd dit drie seconden vol. Duw je voet weer naar omlaag zonder de grond te raken met je hiel.""",
"en_us": """1. Stand on the floor or on the edge of a step to increase the range of movement. Raise one foot, placing the upper part on your calf.
2. Lift your heels until you're standing on toes.
3. Stay in this position for three seconds, then lower your foot without touching the ground with your heel.""",
"cs_cz": """1. Stand on the floor or on the edge of a step to increase the range of movement. Raise one foot, placing the upper part on your calf.
2. Lift your heels until you're standing on toes.
3. Stay in this position for three seconds, then lower your foot without touching the ground with your heel.
4. Repeat""",
};
String get i18n => localize(this, t);
}
