CREATE TABLE superheroes.Team (
Team_id INT NOT NULL AUTO_INCREMENT,
Team_name VARCHAR(50) NOT NULL,
Objective VARCHAR(100) NOT NULL,
PRIMARY KEY (Team_id)
);

CREATE TABLE superheroes.Hero (
Hero_id INTEGER NOT NULL AUTO_INCREMENT,
Hero_name VARCHAR(50) NOT NULL,
Alias VARCHAR(50) NOT NULL,
Ability VARCHAR(50) NOT NULL,
Team_id INTEGER,
PRIMARY KEY (Hero_id),
FOREIGN KEY (Team_id) REFERENCES Team(Team_id)
);

INSERT INTO superheroes.Team (Team_name, Objective) 
VALUES 	("JLA", "Protect the world"),
		("JSA", "Defeat the Nazis"),
		("Birds of Prey", "Fight crime (without men)"),
        ("Task Force X", "Follow Waller's orders or die"),
        ("Teen Titans", "Teach young superheroes to be their best");

INSERT INTO superheroes.Hero (Hero_name, Alias, Ability, Team_id) 
VALUES 	("Bruce Wayne", "Batman", "Martial Arts", 1),
		("Clark Kent", "Superman", "Flight", 1),
		("Jay Garrick", "The Flash", "Super-Speed", 2),
		("Alan Scott", "Green Lantern", "Ring Creation", 2),
        ("Helena Bertenelli", "The Huntress", "Crossbow Archery", 3),
        ("Dr. Harleen Quinzel", "Harley Quinn", "Hammer-Fighting", 3),
        ("Floyd Lawton", "Deadshot", "Marksmanship", 4),
        ("Cecil Adams", "Count Vertigo", "Induce dizziness", 4),
        ("Damian Wayne", "Robin", "Swordsmanship", 5),
        ("Dick Grayson", "Nightwing", "Acrobatics", 5);

SELECT * FROM superheroes.Team;
SELECT * FROM superheroes.Hero;