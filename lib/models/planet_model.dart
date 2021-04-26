import 'package:flutter/cupertino.dart';

class PlanetModel extends ChangeNotifier {
  String name;
  String planetData;
  String imagePath;
  String imagePathAppbar;
  String planetLink;
  double mulNumber;

  PlanetModel({
    this.name,
    this.imagePath,
    this.imagePathAppbar,
    this.mulNumber,
    this.planetData,
    this.planetLink,
  });
}

List<PlanetModel> planetList = [
  PlanetModel(
    name: 'earth',
    mulNumber: 1.0,
    imagePath: 'assets/images/earth.png',
    imagePathAppbar: 'assets/images/earth_appbar.png',
    planetLink: 'https://solarsystem.nasa.gov/planets/earth/overview/',
    planetData:
        """The third planet from the sun, Earth is a waterworld,with two-thirds of the planet covered by ocean. It's the only world known to harbor life. Earth's atmosphere is rich in nitrogen and oxygen. Earth's surface rotates about its axis at 1,532 feet per second (467 meters per second) — slightly more than 1,000 mph (1,600 kph) — at the equator. The planet zips around the sun at more than 18 miles per second (29 km per second).
                  
⦿ Name originates from "Die Erde," the German word for "the ground."
⦿ Diameter: 7,926 miles (12,760 km)
⦿ Orbit: 365.24 days
⦿ Day: 23 hours, 56 minutes""",
  ),
  PlanetModel(
    name: 'moon',
    mulNumber: 0.165,
    imagePath: 'assets/images/moon.png',
    imagePathAppbar: 'assets/images/moon_appbar.png',
    planetLink: 'https://solarsystem.nasa.gov/moons/earths-moon/overview/',
    planetData:
        """The moon is the easiest celestial object to find in the night sky — when it's there. Earth's only natural satellite hovers above us bright and round until it seemingly disappears for a few nights. The rhythm of the moon's phases has guided humanity for millennia — for instance, calendar months are roughly equal to the time it takes to go from one full moon to the next.

Moon phases and the moon's orbit are mysteries to many. For example, the moon always shows us the same face. That happens because it takes 27.3 days both to rotate on its axis and to orbit Earth. We see either the full moon, half moon or no moon (new moon) because the moon reflects sunlight. How much of it we see depends on the moon's position in relation to Earth and the sun.

Though a satellite of Earth, the moon, with a diameter of about 2,159 miles (3,475 kilometers), is bigger than Pluto. (Four other moons in our solar system are even bigger.) The moon is a bit more than one-fourth (27 percent) the size of Earth, a much smaller ratio (1:4) than any other planets and their moons. This means the moon has a great effect on the planet and very possibly is what makes life on Earth possible.""",
  ),
  PlanetModel(
    name: 'mercury',
    mulNumber: 0.38,
    imagePath: 'assets/images/mercury.png',
    imagePathAppbar: 'assets/images/mercury_appbar.png',
    planetLink: 'https://solarsystem.nasa.gov/planets/mercury/overview/',
    planetData:
        """Mercury has a very thin atmosphere of oxygen, sodium, hydrogen, helium and potassium and can't break-up incoming meteors, so its surface is pockmarked with craters, just like the moon. Over its four-year mission, NASA's MESSENGER spacecraft revealed incredible new discoveries that challenged astronomers' expectations. Among those findings was the discovery of water ice and frozen organic compounds at Mercury's north pole and that volcanism played a major role in shaping the planet's surface.

⦿ Discovery: Known to the ancient Greeks and visible to the naked eye
⦿ Named for the messenger of the Roman gods
⦿ Diameter: 3,031 miles (4,878 km)
⦿ Orbit: 88 Earth days
⦿ Day: 58.6 Earth days""",
  ),
  PlanetModel(
    name: 'venus',
    mulNumber: 0.91,
    imagePath: 'assets/images/venus.png',
    imagePathAppbar: 'assets/images/venus_appbar.png',
    planetLink: 'https://solarsystem.nasa.gov/planets/venus/overview/',
    planetData:
        """The second planet from the sun, Venus is Earth's twin in size. Radar images beneath its atmosphere reveal that its surface has various mountains and volcanoes. But beyond that, the two planets couldn't be more different. Because of its thick, toxic atmosphere that's made of sulfuric acid clouds, Venus is an extreme example of the greenhouse effect. It's scorching-hot, even hotter than Mercury. The average temperature on Venus' surface is 900 F (465 C). At 92 bar, the pressure at the surface would crush and kill you. And oddly, Venus spins slowly from east to west, the opposite direction of most of the other planets.

The Greeks believed Venus was two different objects — one in the morning sky and another in the evening. Because it is often brighter than any other object in the sky, Venus has generated many UFO reports.

⦿ Discovery: Known to the ancient Greeks and visible to the naked eye
⦿ Named for the Roman goddess of love and beauty
⦿ Diameter: 7,521 miles (12,104 km)
⦿ Orbit: 225 Earth days
⦿ Day: 241 Earth days""",
  ),
  PlanetModel(
    name: 'mars',
    mulNumber: 0.38,
    imagePath: 'assets/images/mars.png',
    imagePathAppbar: 'assets/images/mars_appbar.png',
    planetLink: 'https://solarsystem.nasa.gov/planets/mars/overview/',
    planetData:
        """The fourth planet from the sun is Mars, and it's a cold, desert-like place covered in dust. This dust is made of iron oxides, giving the planet its iconic red hue. Mars shares similarities with Earth: It is rocky, has mountains, valleys and canyons, and storm systems ranging from localized tornado-like dust devils to planet-engulfing dust storms.
Scientists also think ancient Mars would have had the conditions to support life like bacteria and other microbes. Hope that signs of this past life — and the possibility of even current lifeforms — may exist on the Red Planet has driven numerous space exploration missions and Mars is now one of the most explored planets in the solar system.

⦿ Discovery: Known to the ancient Greeks and visible to the naked eye
⦿ Named for the Roman god of war
⦿ Diameter: 4,217 miles (6,787 km)
⦿ Orbit: 687 Earth days
⦿ Day: Just more than one Earth day (24 hours, 37 minutes)""",
  ),
  PlanetModel(
    name: 'jupiter',
    mulNumber: 2.34,
    imagePath: 'assets/images/jupiter.png',
    imagePathAppbar: 'assets/images/jupiter_appbar.png',
    planetLink: 'https://solarsystem.nasa.gov/planets/jupiter/overview/',
    planetData:
        """The fifth planet from the sun, Jupiter is a giant gas world that is the most massive planet in our solar system — more than twice as massive as all the other planets combined, according to NASA. Its swirling clouds are colorful due to different types of trace gases. And a major feature in its swirling clouds is the Great Red Spot, a giant storm more than 10,000 miles wide. It has raged at more than 400 mph for the last 150 years, at least. Jupiter has a strong magnetic field, and with 75 moons, it looks a bit like a miniature solar system.

⦿ Discovery: Known to the ancient Greeks and visible to the naked eye
⦿ Named for the ruler of the Roman gods
⦿ Diameter: 86,881 miles (139,822 km)
⦿ Orbit: 11.9 Earth years
⦿ Day: 9.8 Earth hours""",
  ),
  PlanetModel(
    name: 'saturn',
    mulNumber: 0.93,
    imagePath: 'assets/images/saturn.png',
    imagePathAppbar: 'assets/images/saturn_appbar.png',
    planetLink: 'https://solarsystem.nasa.gov/planets/saturn/overview/',
    planetData:
        """The sixth planet from the sun, Saturn is known most for its rings. When polymath Galileo Galilei first studied Saturn in the early 1600s, he thought it was an object with three parts: a planet and two large moons on either side. Not knowing he was seeing a planet with rings, the stumped astronomer entered a small drawing — a symbol with one large circle and two smaller ones — in his notebook, as a noun in a sentence describing his discovery. More than 40 years later, Christiaan Huygens proposed that they were rings. The rings are made of ice and rock and scientists are not yet sure how they formed. The gaseous planet is mostly hydrogen and helium and has numerous moons.

⦿ Discovery: Known to the ancient Greeks and visible to the naked eye
⦿ Named for Roman god of agriculture
⦿ Diameter: 74,900 miles (120,500 km)
⦿ Orbit: 29.5 Earth years
⦿ Day: About 10.5 Earth hours""",
  ),
  PlanetModel(
    name: 'uranus',
    mulNumber: 0.92,
    imagePath: 'assets/images/uranus.png',
    imagePathAppbar: 'assets/images/uranus_appbar.png',
    planetLink: 'https://solarsystem.nasa.gov/planets/uranus/overview/',
    planetData:
        """The seventh planet from the sun, Uranus is an oddball. It has clouds made of hydrogen sulfide, the same chemical that makes rotten eggs smell so foul. It rotates from east to west like Venus. But unlike Venus or any other planet, its equator is nearly at right angles to its orbit — it basically orbits on its side. Astronomers believe an object twice the size of Earth collided with Uranus roughly 4 billion years ago, causing Uranus to tilt. That tilt causes extreme seasons that last 20-plus years, and the sun beats down on one pole or the other for 84 Earth-years at a time. 
                  
⦿ Discovery: 1781 by William Herschel (was originally thought to be a star)
⦿ Named for the personification of heaven in ancient myth
⦿ Diameter: 31,763 miles (51,120 km)
⦿ Orbit: 84 Earth years
⦿ Day: 18 Earth hours""",
  ),
  PlanetModel(
    name: 'neptune',
    mulNumber: 1.12,
    imagePath: 'assets/images/neptune.png',
    imagePathAppbar: 'assets/images/neptune_appbar.png',
    planetLink: 'https://solarsystem.nasa.gov/planets/neptune/overview/',
    planetData:
        """The eighth planet from the sun, Neptune is about the size of Uranus and is known for supersonic strong winds. Neptune is far out and cold. The planet is more than 30 times as far from the sun as Earth. Neptune was the first planet predicted to exist by using math, before it was visually detected. Irregularities in the orbit of Uranus led French astronomer Alexis Bouvard to suggest some other planet might be exerting a gravitational tug. German astronomer Johann Galle used calculations to help find Neptune in a telescope. Neptune is about 17 times as massive as Earth and has a rocky core.

⦿ Discovery: 1846
⦿ Named for the Roman god of water
⦿ Diameter: 30,775 miles (49,530 km)
⦿ Orbit: 165 Earth years
⦿ Day: 19 Earth hours""",
  ),
];
