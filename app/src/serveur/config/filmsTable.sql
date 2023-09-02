-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 13, 2023 at 03:59 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e23mabdfilms`
--
CREATE DATABASE IF NOT EXISTS `e23mabdfilms` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `e23mabdfilms`;

-- --------------------------------------------------------

--
-- Table structure for table `films`
--

CREATE TABLE `films` (
  `id` int(11) NOT NULL,
  `title` varchar(90) NOT NULL,
  `year` int(11) NOT NULL,
  `runtime` int(11) NOT NULL,
  `genres` varchar(256) NOT NULL,
  `director` varchar(40) NOT NULL,
  `actors` varchar(256) NOT NULL,
  `plot` varchar(400) NOT NULL,
  `posterUrl` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `films`
--

INSERT INTO `films` (`id`, `title`, `year`, `runtime`, `genres`, `director`, `actors`, `plot`, `posterUrl`) VALUES
(1, 'Beetlejuice', 1988, 92, 'Comedy,Fantasy', 'Tim Burton', 'Alec Baldwin, Geena Davis, Annie McEnroe, Maurice Page', '\"A couple of recently deceased ghosts contract the services of a \"\"bio-exorcist\"\" in order to remove the obnoxious new owners of their house.\"', 'https://images-na.ssl-images-amazon.com/images/M/MV5BMTUwODE3MDE0MV5BMl5BanBnXkFtZTgwNTk1MjI4MzE@._V1_SX300.jpg'),
(2, 'The Cotton Club', 1984, 127, 'Crime,Drama,Music', 'Francis Ford Coppola', 'Richard Gere, Gregory Hines, Diane Lane, Lonette McKee', 'The Cotton Club was a famous night club in Harlem. The story follows the people that visited the club, those that ran it, and is peppered with the Jazz music that made it so famous.', 'https://images-na.ssl-images-amazon.com/images/M/MV5BMTU5ODAyNzA4OV5BMl5BanBnXkFtZTcwNzYwNTIzNA@@._V1_SX300.jpg'),
(3, 'The Shawshank Redemption', 1994, 142, 'Crime,Drama', 'Frank Darabont', 'Tim Robbins, Morgan Freeman, Bob Gunton, William Sadler', 'Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.', 'https://images-na.ssl-images-amazon.com/images/M/MV5BODU4MjU4NjIwNl5BMl5BanBnXkFtZTgwMDU2MjEyMDE@._V1_SX300.jpg'),
(4, 'Crocodile Dundee', 1986, 97, 'Adventure,Comedy', 'Peter Faiman', 'Paul Hogan, Linda Kozlowski, John Meillon, David Gulpilil', 'An American reporter goes to the Australian outback to meet an eccentric crocodile poacher and invites him to New York City.', 'https://images-na.ssl-images-amazon.com/images/M/MV5BMTg0MTU1MTg4NF5BMl5BanBnXkFtZTgwMDgzNzYxMTE@._V1_SX300.jpg'),
(5, 'Valkyrie', 2008, 121, 'Drama,History,Thriller', 'Bryan Singer', 'Tom Cruise, Kenneth Branagh, Bill Nighy, Tom Wilkinson', 'A dramatization of the 20 July assassination and political coup plot by desperate renegade German Army officers against Hitler during World War II.', 'http://ia.media-imdb.com/images/M/MV5BMTg3Njc2ODEyN15BMl5BanBnXkFtZTcwNTAwMzc3NA@@._V1_SX300.jpg'),
(6, 'Ratatouille', 2007, 111, 'Animation,Comedy,Family', 'Brad Bird, Jan Pinkava', 'Patton Oswalt, Ian Holm, Lou Romano, Brian Dennehy', 'A rat who can cook makes an unusual alliance with a young kitchen worker at a famous restaurant.', 'https://images-na.ssl-images-amazon.com/images/M/MV5BMTMzODU0NTkxMF5BMl5BanBnXkFtZTcwMjQ4MzMzMw@@._V1_SX300.jpg'),
(7, 'City of God', 2002, 130, 'Crime,Drama', 'Fernando Meirelles, Kátia Lund', 'Alexandre Rodrigues, Leandro Firmino, Phellipe Haagensen, Douglas Silva', 'Two boys growing up in a violent neighborhood of Rio de Janeiro take different paths: one becomes a photographer, the other a drug dealer.', 'https://images-na.ssl-images-amazon.com/images/M/MV5BMjA4ODQ3ODkzNV5BMl5BanBnXkFtZTYwOTc4NDI3._V1_SX300.jpg'),
(8, 'Memento', 2000, 113, 'Mystery,Thriller', 'Christopher Nolan', 'Guy Pearce, Carrie-Anne Moss, Joe Pantoliano, Mark Boone Junior', 'A man juggles searching for his wife\'s murderer and keeping his short-term memory loss from being an obstacle.', 'https://images-na.ssl-images-amazon.com/images/M/MV5BNThiYjM3MzktMDg3Yy00ZWQ3LTk3YWEtN2M0YmNmNWEwYTE3XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_SX300.jpg'),
(9, 'The Intouchables', 2011, 112, 'Biography,Comedy,Drama', 'Olivier Nakache, Eric Toledano', 'François Cluzet, Omar Sy, Anne Le Ny, Audrey Fleurot', 'After he becomes a quadriplegic from a paragliding accident, an aristocrat hires a young man from the projects to be his caregiver.', 'http://ia.media-imdb.com/images/M/MV5BMTYxNDA3MDQwNl5BMl5BanBnXkFtZTcwNTU4Mzc1Nw@@._V1_SX300.jpg'),
(10, 'Stardust', 2007, 127, 'Adventure,Family,Fantasy', 'Matthew Vaughn', 'Ian McKellen, Bimbo Hart, Alastair MacIntosh, David Kelly', 'In a countryside town bordering on a magical land, a young man makes a promise to his beloved that he\'ll retrieve a fallen star by venturing into the magical realm.', 'https://images-na.ssl-images-amazon.com/images/M/MV5BMjkyMTE1OTYwNF5BMl5BanBnXkFtZTcwMDIxODYzMw@@._V1_SX300.jpg'),
(11, 'Apocalypto', 2006, 139, 'Action,Adventure,Drama', 'Mel Gibson', 'Rudy Youngblood, Dalia Hernández, Jonathan Brewer, Morris Birdyellowhead', 'As the Mayan kingdom faces its decline, the rulers insist the key to prosperity is to build more temples and offer human sacrifices. Jaguar Paw, a young man captured for sacrifice, flees to avoid his fate.', 'https://images-na.ssl-images-amazon.com/images/M/MV5BNTM1NjYyNTY5OV5BMl5BanBnXkFtZTcwMjgwNTMzMQ@@._V1_SX300.jpg'),
(12, 'Taxi Driver', 1976, 113, 'Crime,Drama', 'Martin Scorsese', 'Diahnne Abbott, Frank Adu, Victor Argo, Gino Ardito', 'A mentally unstable Vietnam War veteran works as a night-time taxi driver in New York City where the perceived decadence and sleaze feeds his urge for violent action, attempting to save a preadolescent prostitute in the process.', 'https://images-na.ssl-images-amazon.com/images/M/MV5BNGQxNDgzZWQtZTNjNi00M2RkLWExZmEtNmE1NjEyZDEwMzA5XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_SX300.jpg'),
(13, 'No Country for Old Men', 2007, 122, 'Crime,Drama,Thriller', 'Ethan Coen, Joel Coen', 'Tommy Lee Jones, Javier Bardem, Josh Brolin, Woody Harrelson', 'Violence and mayhem ensue after a hunter stumbles upon a drug deal gone wrong and more than two million dollars in cash near the Rio Grande.', 'https://images-na.ssl-images-amazon.com/images/M/MV5BMjA5Njk3MjM4OV5BMl5BanBnXkFtZTcwMTc5MTE1MQ@@._V1_SX300.jpg'),
(14, 'Planet 51', 2009, 91, 'Animation,Adventure,Comedy', 'Jorge Blanco, Javier Abad, Marcos Martín', 'Jessica Biel, John Cleese, Gary Oldman, Dwayne Johnson', 'An alien civilization is invaded by Astronaut Chuck Baker, who believes that the planet was uninhabited. Wanted by the military, Baker must get back to his ship before it goes into orbit without him.', 'http://ia.media-imdb.com/images/M/MV5BMTUyOTAyNTA5Ml5BMl5BanBnXkFtZTcwODU2OTM0Mg@@._V1_SX300.jpg'),
(15, 'Looper', 2012, 119, 'Action,Crime,Drama', 'Rian Johnson', 'Joseph Gordon-Levitt, Bruce Willis, Emily Blunt, Paul Dano', 'In 2074, when the mob wants to get rid of someone, the target is sent into the past, where a hired gun awaits - someone like Joe - who one day learns the mob wants to \'close the loop\' by sending back Joe\'s future self for assassination.', 'http://ia.media-imdb.com/images/M/MV5BMTY3NTY0MjEwNV5BMl5BanBnXkFtZTcwNTE3NDA1OA@@._V1_SX300.jpg'),
(16, 'Corpse Bride', 2005, 77, 'Animation,Drama,Family', 'Tim Burton, Mike Johnson', 'Johnny Depp, Helena Bonham Carter, Emily Watson, Tracey Ullman', 'When a shy groom practices his wedding vows in the inadvertent presence of a deceased young woman, she rises from the grave assuming he has married her.', 'http://ia.media-imdb.com/images/M/MV5BMTk1MTY1NjU4MF5BMl5BanBnXkFtZTcwNjIzMTEzMw@@._V1_SX300.jpg'),
(17, 'The Third Man', 1949, 93, 'Film-Noir,Mystery,Thriller', 'Carol Reed', 'Joseph Cotten, Alida Valli, Orson Welles, Trevor Howard', 'Pulp novelist Holly Martins travels to shadowy, postwar Vienna, only to find himself investigating the mysterious death of an old friend, Harry Lime.', 'https://images-na.ssl-images-amazon.com/images/M/MV5BMjMwNzMzMTQ0Ml5BMl5BanBnXkFtZTgwNjExMzUwNjE@._V1_SX300.jpg'),
(18, 'The Beach', 2000, 119, 'Adventure,Drama,Romance', 'Danny Boyle', 'Leonardo DiCaprio, Daniel York, Patcharawan Patarakijjanon, Virginie Ledoyen', 'Twenty-something Richard travels to Thailand and finds himself in possession of a strange map. Rumours state that it leads to a solitary beach paradise, a tropical bliss - excited and intrigued, he sets out to find it.', 'https://images-na.ssl-images-amazon.com/images/M/MV5BN2ViYTFiZmUtOTIxZi00YzIxLWEyMzUtYjQwZGNjMjNhY2IwXkEyXkFqcGdeQXVyNDk3NzU2MTQ@._V1_SX300.jpg'),
(19, 'Scarface', 1983, 170, 'Crime,Drama', 'Brian De Palma', 'Al Pacino, Steven Bauer, Michelle Pfeiffer, Mary Elizabeth Mastrantonio', 'In Miami in 1980, a determined Cuban immigrant takes over a drug cartel and succumbs to greed.', 'https://images-na.ssl-images-amazon.com/images/M/MV5BMjAzOTM4MzEwNl5BMl5BanBnXkFtZTgwMzU1OTc1MDE@._V1_SX300.jpg'),
(20, 'Sid and Nancy', 1986, 112, 'Biography,Drama,Music', 'Alex Cox', 'Gary Oldman, Chloe Webb, David Hayman, Debby Bishop', 'Morbid biographical story of Sid Vicious, bassist with British punk group the Sex Pistols, and his girlfriend Nancy Spungen. When the Sex Pistols break up after their fateful US tour, ...', 'https://images-na.ssl-images-amazon.com/images/M/MV5BMjExNjA5NzY4M15BMl5BanBnXkFtZTcwNjQ2NzI5NA@@._V1_SX300.jpg'),
(21, 'Black Swan', 2010, 108, 'Drama,Thriller', 'Darren Aronofsky', 'Natalie Portman, Mila Kunis, Vincent Cassel, Barbara Hershey', '\"A committed dancer wins the lead role in a production of Tchaikovsky\'s \"\"Swan Lake\"\" only to find herself struggling to maintain her sanity.\"', 'https://images-na.ssl-images-amazon.com/images/M/MV5BNzY2NzI4OTE5MF5BMl5BanBnXkFtZTcwMjMyNDY4Mw@@._V1_SX300.jpg'),
(22, 'Inception', 2010, 148, 'Action,Adventure,Sci-Fi', 'Christopher Nolan', 'Leonardo DiCaprio, Joseph Gordon-Levitt, Ellen Page, Tom Hardy', 'A thief, who steals corporate secrets through use of dream-sharing technology, is given the inverse task of planting an idea into the mind of a CEO.', 'https://images-na.ssl-images-amazon.com/images/M/MV5BMjAxMzY3NjcxNF5BMl5BanBnXkFtZTcwNTI5OTM0Mw@@._V1_SX300.jpg'),
(23, 'The Deer Hunter', 1978, 183, 'Drama,War', 'Michael Cimino', 'Robert De Niro, John Cazale, John Savage, Christopher Walken', 'An in-depth examination of the ways in which the U.S. Vietnam War impacts and disrupts the lives of people in a small industrial town in Pennsylvania.', 'https://images-na.ssl-images-amazon.com/images/M/MV5BMTYzYmRmZTQtYjk2NS00MDdlLTkxMDAtMTE2YTM2ZmNlMTBkXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_SX300.jpg'),
(24, 'Chasing Amy', 1997, 113, 'Comedy,Drama,Romance', 'Kevin Smith', 'Ethan Suplee, Ben Affleck, Scott Mosier, Jason Lee', 'Holden and Banky are comic book artists. Everything\'s going good for them until they meet Alyssa, also a comic book artist. Holden falls for her, but his hopes are crushed when he finds out she\'s gay.', 'https://images-na.ssl-images-amazon.com/images/M/MV5BZDM3MTg2MGUtZDM0MC00NzMwLWE5NjItOWFjNjA2M2I4YzgxXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_SX300.jpg'),
(25, 'Django Unchained', 2012, 165, 'Drama,Western', 'Quentin Tarantino', 'Jamie Foxx, Christoph Waltz, Leonardo DiCaprio, Kerry Washington', 'With the help of a German bounty hunter, a freed slave sets out to rescue his wife from a brutal Mississippi plantation owner.', 'http://ia.media-imdb.com/images/M/MV5BMjIyNTQ5NjQ1OV5BMl5BanBnXkFtZTcwODg1MDU4OA@@._V1_SX300.jpg'),
(26, 'The Silence of the Lambs', 1991, 118, 'Crime,Drama,Thriller', 'Jonathan Demme', 'Jodie Foster, Lawrence A. Bonney, Kasi Lemmons, Lawrence T. Wrentz', 'A young F.B.I. cadet must confide in an incarcerated and manipulative killer to receive his help on catching another serial killer who skins his victims.', 'https://images-na.ssl-images-amazon.com/images/M/MV5BMTQ2NzkzMDI4OF5BMl5BanBnXkFtZTcwMDA0NzE1NA@@._V1_SX300.jpg'),
(27, 'American Beauty', 1999, 122, 'Drama,Romance', 'Sam Mendes', 'Kevin Spacey, Annette Bening, Thora Birch, Wes Bentley', 'A sexually frustrated suburban father has a mid-life crisis after becoming infatuated with his daughter\'s best friend.', 'https://images-na.ssl-images-amazon.com/images/M/MV5BMjM4NTI5NzYyNV5BMl5BanBnXkFtZTgwNTkxNTYxMTE@._V1_SX300.jpg'),
(28, 'Snatch', 2000, 102, 'Comedy,Crime', 'Guy Ritchie', 'Benicio Del Toro, Dennis Farina, Vinnie Jones, Brad Pitt', 'Unscrupulous boxing promoters, violent bookmakers, a Russian gangster, incompetent amateur robbers, and supposedly Jewish jewelers fight to track down a priceless stolen diamond.', 'http://ia.media-imdb.com/images/M/MV5BMTA2NDYxOGYtYjU1Mi00Y2QzLTgxMTQtMWI1MGI0ZGQ5MmU4XkEyXkFqcGdeQXVyNDk3NzU2MTQ@._V1_SX300.jpg'),
(29, 'Midnight Express', 1978, 121, 'Crime,Drama,Thriller', 'Alan Parker', 'Brad Davis, Irene Miracle, Bo Hopkins, Paolo Bonacelli', 'Billy Hayes, an American college student, is caught smuggling drugs out of Turkey and thrown into prison.', 'https://images-na.ssl-images-amazon.com/images/M/MV5BMTQyMDA5MzkyOF5BMl5BanBnXkFtZTgwOTYwNTcxMTE@._V1_SX300.jpg'),
(30, 'Pulp Fiction', 1994, 154, 'Crime,Drama', 'Quentin Tarantino', 'Tim Roth, Amanda Plummer, Laura Lovelace, John Travolta', 'The lives of two mob hit men, a boxer, a gangster\'s wife, and a pair of diner bandits intertwine in four tales of violence and redemption.', 'https://images-na.ssl-images-amazon.com/images/M/MV5BMTkxMTA5OTAzMl5BMl5BanBnXkFtZTgwNjA5MDc3NjE@._V1_SX300.jpg'),
(31, 'Lock, Stock and Two Smoking Barrels', 1998, 107, 'Comedy,Crime', 'Guy Ritchie', 'Jason Flemyng, Dexter Fletcher, Nick Moran, Jason Statham', 'A botched card game in London triggers four friends, thugs, weed-growers, hard gangsters, loan sharks and debt collectors to collide with each other in a series of unexpected events, all for the sake of weed, cash and two antique shotguns.', 'https://images-na.ssl-images-amazon.com/images/M/MV5BMTAyN2JmZmEtNjAyMy00NzYwLThmY2MtYWQ3OGNhNjExMmM4XkEyXkFqcGdeQXVyNDk3NzU2MTQ@._V1_SX300.jpg'),
(32, 'Lucky Number Slevin', 2006, 110, 'Crime,Drama,Mystery', 'Paul McGuigan', 'Josh Hartnett, Bruce Willis, Lucy Liu, Morgan Freeman', 'A case of mistaken identity lands Slevin into the middle of a war being plotted by two of the city\'s most rival crime bosses: The Rabbi and The Boss. Slevin is under constant surveillance by relentless Detective Brikowski as well as the infamous assassin Goodkat and finds himself having to hatch his own ingenious plot to get them before they get him.', 'https://images-na.ssl-images-amazon.com/images/M/MV5BMzc1OTEwMTk4OF5BMl5BanBnXkFtZTcwMTEzMDQzMQ@@._V1_SX300.jpg'),
(33, 'Rear Window', 1954, 112, 'Mystery,Thriller', 'Alfred Hitchcock', 'James Stewart, Grace Kelly, Wendell Corey, Thelma Ritter', 'A wheelchair-bound photographer spies on his neighbours from his apartment window and becomes convinced one of them has committed murder.', 'https://images-na.ssl-images-amazon.com/images/M/MV5BNGUxYWM3M2MtMGM3Mi00ZmRiLWE0NGQtZjE5ODI2OTJhNTU0XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_SX300.jpg'),
(34, 'Pan\'s Labyrinth', 2006, 118, 'Drama,Fantasy,War', 'Guillermo del Toro', 'Ivana Baquero, Sergi López, Maribel Verdú, Doug Jones', 'In the falangist Spain of 1944, the bookish young stepdaughter of a sadistic army officer escapes into an eerie but captivating fantasy world.', ''),
(35, 'Shutter Island', 2010, 138, 'Mystery,Thriller', 'Martin Scorsese', 'Leonardo DiCaprio, Mark Ruffalo, Ben Kingsley, Max von Sydow', 'In 1954, a U.S. marshal investigates the disappearance of a murderess who escaped from a hospital for the criminally insane.', 'https://images-na.ssl-images-amazon.com/images/M/MV5BMTMxMTIyNzMxMV5BMl5BanBnXkFtZTcwOTc4OTI3Mg@@._V1_SX300.jpg'),
(36, 'Reservoir Dogs', 1992, 99, 'Crime,Drama,Thriller', 'Quentin Tarantino', 'Harvey Keitel, Tim Roth, Michael Madsen, Chris Penn', 'After a simple jewelry heist goes terribly wrong, the surviving criminals begin to suspect that one of them is a police informant.', 'https://images-na.ssl-images-amazon.com/images/M/MV5BNjE5ZDJiZTQtOGE2YS00ZTc5LTk0OGUtOTg2NjdjZmVlYzE2XkEyXkFqcGdeQXVyMzM4MjM0Nzg@._V1_SX300.jpg'),
(37, 'The Shining', 1980, 146, 'Drama,Horror', 'Stanley Kubrick', 'Jack Nicholson, Shelley Duvall, Danny Lloyd, Scatman Crothers', 'A family heads to an isolated hotel for the winter where an evil and spiritual presence influences the father into violence, while his psychic son sees horrific forebodings from the past and of the future.', 'http://ia.media-imdb.com/images/M/MV5BODMxMjE3NTA4Ml5BMl5BanBnXkFtZTgwNDc0NTIxMDE@._V1_SX300.jpg'),
(38, 'Midnight in Paris', 2011, 94, 'Comedy,Fantasy,Romance', 'Woody Allen', 'Owen Wilson, Rachel McAdams, Kurt Fuller, Mimi Kennedy', 'While on a trip to Paris with his fiancée\'s family, a nostalgic screenwriter finds himself mysteriously going back to the 1920s everyday at midnight.', 'http://ia.media-imdb.com/images/M/MV5BMTM4NjY1MDQwMl5BMl5BanBnXkFtZTcwNTI3Njg3NA@@._V1_SX300.jpg'),
(39, 'Les Misérables', 2012, 158, 'Drama,Musical,Romance', 'Tom Hooper', 'Hugh Jackman, Russell Crowe, Anne Hathaway, Amanda Seyfried', 'In 19th-century France, Jean Valjean, who for decades has been hunted by the ruthless policeman Javert after breaking parole, agrees to care for a factory worker\'s daughter. The decision changes their lives forever.', 'http://ia.media-imdb.com/images/M/MV5BMTQ4NDI3NDg4M15BMl5BanBnXkFtZTcwMjY5OTI1OA@@._V1_SX300.jpg'),
(40, 'L.A. Confidential', 1997, 138, 'Crime,Drama,Mystery', 'Curtis Hanson', 'Kevin Spacey, Russell Crowe, Guy Pearce, James Cromwell', 'As corruption grows in 1950s LA, three policemen - one strait-laced, one brutal, and one sleazy - investigate a series of murders with their own brand of justice.', 'https://images-na.ssl-images-amazon.com/images/M/MV5BNWEwNDhhNWUtYWMzNi00ZTNhLWFiZDAtMjBjZmJhMTU0ZTY2XkEyXkFqcGdeQXVyNDk3NzU2MTQ@._V1_SX300.jpg'),
(41, 'Moneyball', 2011, 133, 'Biography,Drama,Sport', 'Bennett Miller', 'Brad Pitt, Jonah Hill, Philip Seymour Hoffman, Robin Wright', 'Oakland A\'s general manager Billy Beane\'s successful attempt to assemble a baseball team on a lean budget by employing computer-generated analysis to acquire new players.', 'https://images-na.ssl-images-amazon.com/images/M/MV5BMjAxOTU3Mzc1M15BMl5BanBnXkFtZTcwMzk1ODUzNg@@._V1_SX300.jpg'),
(42, 'The Hangover', 2009, 100, 'Comedy', 'Todd Phillips', 'Bradley Cooper, Ed Helms, Zach Galifianakis, Justin Bartha', 'Three buddies wake up from a bachelor party in Las Vegas, with no memory of the previous night and the bachelor missing. They make their way around the city in order to find their friend before his wedding.', 'https://images-na.ssl-images-amazon.com/images/M/MV5BMTU1MDA1MTYwMF5BMl5BanBnXkFtZTcwMDcxMzA1Mg@@._V1_SX300.jpg'),
(43, 'The Great Beauty', 2013, 141, 'Drama', 'Paolo Sorrentino', 'Toni Servillo, Carlo Verdone, Sabrina Ferilli, Carlo Buccirosso', 'Jep Gambardella has seduced his way through the lavish nightlife of Rome for decades, but after his 65th birthday and a shock from the past, Jep looks past the nightclubs and parties to find a timeless landscape of absurd, exquisite beauty.', 'https://images-na.ssl-images-amazon.com/images/M/MV5BMTQ0ODg1OTQ2Nl5BMl5BanBnXkFtZTgwNTc2MDY1MDE@._V1_SX300.jpg'),
(44, 'Gran Torino', 2008, 116, 'Drama', 'Clint Eastwood', 'Clint Eastwood, Christopher Carley, Bee Vang, Ahney Her', 'Disgruntled Korean War veteran Walt Kowalski sets out to reform his neighbor, a Hmong teenager who tried to steal Kowalski\'s prized possession: a 1972 Gran Torino.', 'http://ia.media-imdb.com/images/M/MV5BMTQyMTczMTAxMl5BMl5BanBnXkFtZTcwOTc1ODE0Mg@@._V1_SX300.jpg'),
(45, 'Mary and Max', 2009, 92, 'Animation,Comedy,Drama', 'Adam Elliot', 'Toni Collette, Philip Seymour Hoffman, Barry Humphries, Eric Bana', 'A tale of friendship between two unlikely pen pals: Mary, a lonely, eight-year-old girl living in the suburbs of Melbourne, and Max, a forty-four-year old, severely obese man living in New York.', 'https://images-na.ssl-images-amazon.com/images/M/MV5BMTQ1NDIyNTA1Nl5BMl5BanBnXkFtZTcwMjc2Njk3OA@@._V1_SX300.jpg'),
(46, 'Flight', 2012, 138, 'Drama,Thriller', 'Robert Zemeckis', 'Nadine Velazquez, Denzel Washington, Carter Cabassa, Adam C. Edwards', 'An airline pilot saves almost all his passengers on his malfunctioning airliner which eventually crashed, but an investigation into the accident reveals something troubling.', 'https://images-na.ssl-images-amazon.com/images/M/MV5BMTUxMjI1OTMxNl5BMl5BanBnXkFtZTcwNjc3NTY1OA@@._V1_SX300.jpg'),
(47, 'One Flew Over the Cuckoo\'s Nest', 1975, 133, 'Drama', 'Milos Forman', 'Michael Berryman, Peter Brocco, Dean R. Brooks, Alonzo Brown', 'A criminal pleads insanity after getting into trouble again and once in the mental institution rebels against the oppressive nurse and rallies up the scared patients.', 'https://images-na.ssl-images-amazon.com/images/M/MV5BYmJkODkwOTItZThjZC00MTE0LWIxNzQtYTM3MmQwMGI1OWFiXkEyXkFqcGdeQXVyNjUwNzk3NDc@._V1_SX300.jpg'),
(48, 'Requiem for a Dream', 2000, 102, 'Drama', 'Darren Aronofsky', 'Ellen Burstyn, Jared Leto, Jennifer Connelly, Marlon Wayans', 'The drug-induced utopias of four Coney Island people are shattered when their addictions run deep.', 'https://images-na.ssl-images-amazon.com/images/M/MV5BMTkzODMzODYwOF5BMl5BanBnXkFtZTcwODM2NjA2NQ@@._V1_SX300.jpg'),
(49, 'The Truman Show', 1998, 103, 'Comedy,Drama,Sci-Fi', 'Peter Weir', 'Jim Carrey, Laura Linney, Noah Emmerich, Natascha McElhone', 'An insurance salesman/adjuster discovers his entire life is actually a television show.', 'https://images-na.ssl-images-amazon.com/images/M/MV5BMDIzODcyY2EtMmY2MC00ZWVlLTgwMzAtMjQwOWUyNmJjNTYyXkEyXkFqcGdeQXVyNDk3NzU2MTQ@._V1_SX300.jpg'),
(50, 'The Artist', 2011, 100, 'Comedy,Drama,Romance', 'Michel Hazanavicius', 'Jean Dujardin, Bérénice Bejo, John Goodman, James Cromwell', 'A silent movie star meets a young dancer, but the arrival of talking pictures sends their careers in opposite directions.', 'https://images-na.ssl-images-amazon.com/images/M/MV5BMzk0NzQxMTM0OV5BMl5BanBnXkFtZTcwMzU4MDYyNQ@@._V1_SX300.jpg'),
(51, 'Forrest Gump', 1994, 142, 'Comedy,Drama', 'Robert Zemeckis', 'Tom Hanks, Rebecca Williams, Sally Field, Michael Conner Humphreys', 'Forrest Gump, while not intelligent, has accidentally been present at many historic moments, but his true love, Jenny Curran, eludes him.', 'https://images-na.ssl-images-amazon.com/images/M/MV5BYThjM2MwZGMtMzg3Ny00NGRkLWE4M2EtYTBiNWMzOTY0YTI4XkEyXkFqcGdeQXVyNDYyMDk5MTU@._V1_SX300.jpg'),
(52, 'The Hobbit: The Desolation of Smaug', 2013, 161, 'Adventure,Fantasy', 'Peter Jackson', 'Ian McKellen, Martin Freeman, Richard Armitage, Ken Stott', 'The dwarves, along with Bilbo Baggins and Gandalf the Grey, continue their quest to reclaim Erebor, their homeland, from Smaug. Bilbo Baggins is in possession of a mysterious and magical ring.', 'https://images-na.ssl-images-amazon.com/images/M/MV5BMzU0NDY0NDEzNV5BMl5BanBnXkFtZTgwOTIxNDU1MDE@._V1_SX300.jpg'),
(53, 'Vicky Cristina Barcelona', 2008, 96, 'Drama,Romance', 'Woody Allen', 'Rebecca Hall, Scarlett Johansson, Christopher Evan Welch, Chris Messina', 'Two girlfriends on a summer holiday in Spain become enamored with the same painter, unaware that his ex-wife, with whom he has a tempestuous relationship, is about to re-enter the picture.', 'https://images-na.ssl-images-amazon.com/images/M/MV5BMTU2NDQ4MTg2MV5BMl5BanBnXkFtZTcwNDUzNjU3MQ@@._V1_SX300.jpg'),
(54, 'Slumdog Millionaire', 2008, 120, 'Drama,Romance', 'Danny Boyle, Loveleen Tandan', 'Dev Patel, Saurabh Shukla, Anil Kapoor, Rajendranath Zutshi', '\"A Mumbai teen reflects on his upbringing in the slums when he is accused of cheating on the Indian Version of \"\"Who Wants to be a Millionaire?\"\"\"', 'http://ia.media-imdb.com/images/M/MV5BMTU2NTA5NzI0N15BMl5BanBnXkFtZTcwMjUxMjYxMg@@._V1_SX300.jpg'),
(55, 'Lost in Translation', 2003, 101, 'Drama', 'Sofia Coppola', 'Scarlett Johansson, Bill Murray, Akiko Takeshita, Kazuyoshi Minamimagoe', 'A faded movie star and a neglected young woman form an unlikely bond after crossing paths in Tokyo.', 'https://images-na.ssl-images-amazon.com/images/M/MV5BMTI2NDI5ODk4N15BMl5BanBnXkFtZTYwMTI3NTE3._V1_SX300.jpg'),
(56, 'Match Point', 2005, 119, 'Drama,Romance,Thriller', 'Woody Allen', 'Jonathan Rhys Meyers, Alexander Armstrong, Paul Kaye, Matthew Goode', 'At a turning point in his life, a former tennis pro falls for an actress who happens to be dating his friend and soon-to-be brother-in-law.', 'https://images-na.ssl-images-amazon.com/images/M/MV5BMTMzNzY4MzE5NF5BMl5BanBnXkFtZTcwMzQ1MDMzMQ@@._V1_SX300.jpg'),
(57, 'Psycho', 1960, 109, 'Horror,Mystery,Thriller', 'Alfred Hitchcock', 'Anthony Perkins, Vera Miles, John Gavin, Janet Leigh', 'A Phoenix secretary embezzles $40,000 from her employer\'s client, goes on the run, and checks into a remote motel run by a young man under the domination of his mother.', 'https://images-na.ssl-images-amazon.com/images/M/MV5BMDI3OWRmOTEtOWJhYi00N2JkLTgwNGItMjdkN2U0NjFiZTYwXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_SX300.jpg'),
(58, 'North by Northwest', 1959, 136, 'Action,Adventure,Crime', 'Alfred Hitchcock', 'Cary Grant, Eva Marie Saint, James Mason, Jessie Royce Landis', 'A hapless New York advertising executive is mistaken for a government agent by a group of foreign spies, and is pursued across the country while he looks for a way to survive.', 'http://ia.media-imdb.com/images/M/MV5BMjQwMTQ0MzgwNl5BMl5BanBnXkFtZTgwNjc4ODE4MzE@._V1_SX300.jpg'),
(59, 'Madagascar: Escape 2 Africa', 2008, 89, 'Animation,Action,Adventure', 'Eric Darnell, Tom McGrath', 'Ben Stiller, Chris Rock, David Schwimmer, Jada Pinkett Smith', 'The animals try to fly back to New York City, but crash-land on an African wildlife refuge, where Alex is reunited with his parents.', 'https://images-na.ssl-images-amazon.com/images/M/MV5BMjExMDA4NDcwMl5BMl5BanBnXkFtZTcwODAxNTQ3MQ@@._V1_SX300.jpg'),
(60, 'Despicable Me 2', 2013, 98, 'Animation,Adventure,Comedy', 'Pierre Coffin, Chris Renaud', 'Steve Carell, Kristen Wiig, Benjamin Bratt, Miranda Cosgrove', 'When Gru, the world\'s most super-bad turned super-dad has been recruited by a team of officials to stop lethal muscle and a host of Gru\'s own, He has to fight back with new gadgetry, cars, and more minion madness.', 'https://images-na.ssl-images-amazon.com/images/M/MV5BMjExNjAyNTcyMF5BMl5BanBnXkFtZTgwODQzMjQ3MDE@._V1_SX300.jpg'),
(61, 'Downfall', 2004, 156, 'Biography,Drama,History', 'Oliver Hirschbiegel', 'Bruno Ganz, Alexandra Maria Lara, Corinna Harfouch, Ulrich Matthes', 'Traudl Junge, the final secretary for Adolf Hitler, tells of the Nazi dictator\'s final days in his Berlin bunker at the end of WWII.', 'https://images-na.ssl-images-amazon.com/images/M/MV5BMTM1OTI1MjE2Nl5BMl5BanBnXkFtZTcwMTEwMzc4NA@@._V1_SX300.jpg'),
(62, 'Madagascar', 2005, 86, 'Animation,Adventure,Comedy', 'Eric Darnell, Tom McGrath', 'Ben Stiller, Chris Rock, David Schwimmer, Jada Pinkett Smith', 'Spoiled by their upbringing with no idea what wild life is really like, four animals from New York Central Zoo escape, unwittingly assisted by four absconding penguins, and find themselves in Madagascar, among a bunch of merry lemurs', 'https://images-na.ssl-images-amazon.com/images/M/MV5BMTY4NDUwMzQxMF5BMl5BanBnXkFtZTcwMDgwNjgyMQ@@._V1_SX300.jpg'),
(63, 'Madagascar 3: Europe\'s Most Wanted', 2012, 93, 'Animation,Adventure,Comedy', 'Eric Darnell, Tom McGrath, Conrad Vernon', 'Ben Stiller, Chris Rock, David Schwimmer, Jada Pinkett Smith', 'Alex, Marty, Gloria and Melman are still fighting to get home to their beloved Big Apple. Their journey takes them through Europe where they find the perfect cover: a traveling circus, which they reinvent - Madagascar style.', 'https://images-na.ssl-images-amazon.com/images/M/MV5BMTM2MTIzNzk2MF5BMl5BanBnXkFtZTcwMDcwMzQxNw@@._V1_SX300.jpg'),
(64, 'God Bless America', 2011, 105, 'Comedy,Crime', 'Bobcat Goldthwait', 'Joel Murray, Tara Lynne Barr, Melinda Page Hamilton, Mackenzie Brooke Smith', 'On a mission to rid society of its most repellent citizens, terminally ill Frank makes an unlikely accomplice in 16-year-old Roxy.', 'https://images-na.ssl-images-amazon.com/images/M/MV5BMTQwMTc1MzA4NF5BMl5BanBnXkFtZTcwNzQwMTgzNw@@._V1_SX300.jpg'),
(65, 'The Social Network', 2010, 120, 'Biography,Drama', 'David Fincher', 'Jesse Eisenberg, Rooney Mara, Bryan Barter, Dustin Fitzsimons', 'Harvard student Mark Zuckerberg creates the social networking site that would become known as Facebook, but is later sued by two brothers who claimed he stole their idea, and the co-founder who was later squeezed out of the business.', 'https://images-na.ssl-images-amazon.com/images/M/MV5BMTM2ODk0NDAwMF5BMl5BanBnXkFtZTcwNTM1MDc2Mw@@._V1_SX300.jpg'),
(66, 'The Pianist', 2002, 150, 'Biography,Drama,War', 'Roman Polanski', 'Adrien Brody, Emilia Fox, Michal Zebrowski, Ed Stoppard', 'A Polish Jewish musician struggles to survive the destruction of the Warsaw ghetto of World War II.', 'http://ia.media-imdb.com/images/M/MV5BMTc4OTkyOTA3OF5BMl5BanBnXkFtZTYwMDIxNjk5._V1_SX300.jpg'),
(67, 'Alive', 1993, 120, 'Adventure,Biography,Drama', 'Frank Marshall', 'Ethan Hawke, Vincent Spano, Josh Hamilton, Bruce Ramsay', 'Uruguayan rugby team stranded in the snow swept Andes are forced to use desperate measures to survive after a plane crash.', ''),
(68, 'Casablanca', 1942, 102, 'Drama,Romance,War', 'Michael Curtiz', 'Humphrey Bogart, Ingrid Bergman, Paul Henreid, Claude Rains', 'In Casablanca, Morocco in December 1941, a cynical American expatriate meets a former lover, with unforeseen complications.', 'https://images-na.ssl-images-amazon.com/images/M/MV5BMjQwNDYyNTk2N15BMl5BanBnXkFtZTgwMjQ0OTMyMjE@._V1_SX300.jpg'),
(69, 'American Gangster', 2007, 157, 'Biography,Crime,Drama', 'Ridley Scott', 'Denzel Washington, Russell Crowe, Chiwetel Ejiofor, Josh Brolin', 'In 1970s America, a detective works to bring down the drug empire of Frank Lucas, a heroin kingpin from Manhattan, who is smuggling the drug into the country from the Far East.', 'https://images-na.ssl-images-amazon.com/images/M/MV5BMTkyNzY5MDA5MV5BMl5BanBnXkFtZTcwMjg4MzI3MQ@@._V1_SX300.jpg'),
(70, 'Catch Me If You Can', 2002, 141, 'Biography,Crime,Drama', 'Steven Spielberg', 'Leonardo DiCaprio, Tom Hanks, Christopher Walken, Martin Sheen', 'The true story of Frank Abagnale Jr. who, before his 19th birthday, successfully conned millions of dollars\' worth of checks as a Pan Am pilot, doctor, and legal prosecutor.', 'https://images-na.ssl-images-amazon.com/images/M/MV5BMTY5MzYzNjc5NV5BMl5BanBnXkFtZTYwNTUyNTc2._V1_SX300.jpg'),
(71, 'American History X', 1998, 119, 'Crime,Drama', 'Tony Kaye', 'Edward Norton, Edward Furlong, Beverly D\'Angelo, Jennifer Lien', 'A former neo-nazi skinhead tries to prevent his younger brother from going down the same wrong path that he did.', 'https://images-na.ssl-images-amazon.com/images/M/MV5BZjA0MTM4MTQtNzY5MC00NzY3LWI1ZTgtYzcxMjkyMzU4MDZiXkEyXkFqcGdeQXVyNDYyMDk5MTU@._V1_SX300.jpg'),
(72, 'Casino', 1995, 178, 'Biography,Crime,Drama', 'Martin Scorsese', 'Robert De Niro, Sharon Stone, Joe Pesci, James Woods', 'Greed, deception, money, power, and murder occur between two best friends, a mafia underboss and a casino owner, for a trophy wife over a gambling empire.', 'http://ia.media-imdb.com/images/M/MV5BMTcxOWYzNDYtYmM4YS00N2NkLTk0NTAtNjg1ODgwZjAxYzI3XkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_SX300.jpg'),
(73, 'Pirates of the Caribbean: At World\'s End', 2007, 169, 'Action,Adventure,Fantasy', 'Gore Verbinski', 'Johnny Depp, Geoffrey Rush, Orlando Bloom, Keira Knightley', 'Captain Barbossa, Will Turner and Elizabeth Swann must sail off the edge of the map, navigate treachery and betrayal, find Jack Sparrow, and make their final alliances for one last decisive battle.', 'https://images-na.ssl-images-amazon.com/images/M/MV5BMjIyNjkxNzEyMl5BMl5BanBnXkFtZTYwMjc3MDE3._V1_SX300.jpg'),
(74, 'Pirates of the Caribbean: On Stranger Tides', 2011, 136, 'Action,Adventure,Fantasy', 'Rob Marshall', 'Johnny Depp, Penélope Cruz, Geoffrey Rush, Ian McShane', 'Jack Sparrow and Barbossa embark on a quest to find the elusive fountain of youth, only to discover that Blackbeard and his daughter are after it too.', 'http://ia.media-imdb.com/images/M/MV5BMjE5MjkwODI3Nl5BMl5BanBnXkFtZTcwNjcwMDk4NA@@._V1_SX300.jpg'),
(75, 'Crash', 2004, 112, 'Crime,Drama,Thriller', 'Paul Haggis', 'Karina Arroyave, Dato Bakhtadze, Sandra Bullock, Don Cheadle', 'Los Angeles citizens with vastly separate lives collide in interweaving stories of race, loss and redemption.', 'https://images-na.ssl-images-amazon.com/images/M/MV5BOTk1OTA1MjIyNV5BMl5BanBnXkFtZTcwODQxMTkyMQ@@._V1_SX300.jpg'),
(76, 'Pirates of the Caribbean: The Curse of the Black Pearl', 2003, 143, 'Action,Adventure,Fantasy', 'Gore Verbinski', 'Johnny Depp, Geoffrey Rush, Orlando Bloom, Keira Knightley', '\"Blacksmith Will Turner teams up with eccentric pirate \"\"Captain\"\" Jack Sparrow to save his love, the governor\'s daughter, from Jack\'s former pirate allies, who are now undead.\"', 'https://images-na.ssl-images-amazon.com/images/M/MV5BMjAyNDM4MTc2N15BMl5BanBnXkFtZTYwNDk0Mjc3._V1_SX300.jpg'),
(77, 'The Lord of the Rings: The Return of the King', 2003, 201, 'Action,Adventure,Drama', 'Peter Jackson', 'Noel Appleby, Ali Astin, Sean Astin, David Aston', 'Gandalf and Aragorn lead the World of Men against Sauron\'s army to draw his gaze from Frodo and Sam as they approach Mount Doom with the One Ring.', 'https://images-na.ssl-images-amazon.com/images/M/MV5BMjE4MjA1NTAyMV5BMl5BanBnXkFtZTcwNzM1NDQyMQ@@._V1_SX300.jpg'),
(78, 'Oldboy', 2003, 120, 'Drama,Mystery,Thriller', 'Chan-wook Park', 'Min-sik Choi, Ji-tae Yu, Hye-jeong Kang, Dae-han Ji', 'After being kidnapped and imprisoned for 15 years, Oh Dae-Su is released, only to find that he must find his captor in 5 days.', 'https://images-na.ssl-images-amazon.com/images/M/MV5BMTI3NTQyMzU5M15BMl5BanBnXkFtZTcwMTM2MjgyMQ@@._V1_SX300.jpg'),
(79, 'Chocolat', 2000, 121, 'Drama,Romance', 'Lasse Hallström', 'Alfred Molina, Carrie-Anne Moss, Aurelien Parent Koenig, Antonio Gil', 'A woman and her daughter open a chocolate shop in a small French village that shakes up the rigid morality of the community.', 'https://images-na.ssl-images-amazon.com/images/M/MV5BMjA4MDI3NTQwMV5BMl5BanBnXkFtZTcwNjIzNDcyMQ@@._V1_SX300.jpg'),
(80, 'Casino Royale', 2006, 144, 'Action,Adventure,Thriller', 'Martin Campbell', 'Daniel Craig, Eva Green, Mads Mikkelsen, Judi Dench', 'Armed with a licence to kill, Secret Agent James Bond sets out on his first mission as 007 and must defeat a weapons dealer in a high stakes game of poker at Casino Royale, but things are not what they seem.', 'https://images-na.ssl-images-amazon.com/images/M/MV5BMTM5MjI4NDExNF5BMl5BanBnXkFtZTcwMDM1MjMzMQ@@._V1_SX300.jpg'),
(81, 'WALL·E', 2008, 98, 'Animation,Adventure,Family', 'Andrew Stanton', 'Ben Burtt, Elissa Knight, Jeff Garlin, Fred Willard', 'In the distant future, a small waste-collecting robot inadvertently embarks on a space journey that will ultimately decide the fate of mankind.', 'https://images-na.ssl-images-amazon.com/images/M/MV5BMTczOTA3MzY2N15BMl5BanBnXkFtZTcwOTYwNjE2MQ@@._V1_SX300.jpg'),
(82, 'The Wolf of Wall Street', 2013, 180, 'Biography,Comedy,Crime', 'Martin Scorsese', 'Leonardo DiCaprio, Jonah Hill, Margot Robbie, Matthew McConaughey', 'Based on the true story of Jordan Belfort, from his rise to a wealthy stock-broker living the high life to his fall involving crime, corruption and the federal government.', 'https://images-na.ssl-images-amazon.com/images/M/MV5BMjIxMjgxNTk0MF5BMl5BanBnXkFtZTgwNjIyOTg2MDE@._V1_SX300.jpg'),
(83, 'Hellboy II: The Golden Army', 2008, 120, 'Action,Adventure,Fantasy', 'Guillermo del Toro', 'Ron Perlman, Selma Blair, Doug Jones, John Alexander', 'The mythical world starts a rebellion against humanity in order to rule the Earth, so Hellboy and his team must save the world from the rebellious creatures.', 'https://images-na.ssl-images-amazon.com/images/M/MV5BMjA5NzgyMjc2Nl5BMl5BanBnXkFtZTcwOTU3MDI3MQ@@._V1_SX300.jpg'),
(84, 'Sunset Boulevard', 1950, 110, 'Drama,Film-Noir,Romance', 'Billy Wilder', 'William Holden, Gloria Swanson, Erich von Stroheim, Nancy Olson', 'A hack screenwriter writes a screenplay for a former silent-film star who has faded into Hollywood obscurity.', 'http://ia.media-imdb.com/images/M/MV5BMTc3NDYzODAwNV5BMl5BanBnXkFtZTgwODg1MTczMTE@._V1_SX300.jpg'),
(85, 'I-See-You.Com', 2006, 92, 'Comedy', 'Eric Steven Stahl', 'Beau Bridges, Rosanna Arquette, Mathew Botuchis, Shiri Appleby', 'A 17-year-old boy buys mini-cameras and displays the footage online at I-see-you.com. The cash rolls in as the site becomes a major hit. Everyone seems to have fun until it all comes crashing down....', 'https://images-na.ssl-images-amazon.com/images/M/MV5BMTYwMDUzNzA5Nl5BMl5BanBnXkFtZTcwMjQ2Njk3MQ@@._V1_SX300.jpg'),
(86, 'The Grand Budapest Hotel', 2014, 99, 'Adventure,Comedy,Crime', 'Wes Anderson', 'Ralph Fiennes, F. Murray Abraham, Mathieu Amalric, Adrien Brody', 'The adventures of Gustave H, a legendary concierge at a famous hotel from the fictional Republic of Zubrowka between the first and second World Wars, and Zero Moustafa, the lobby boy who becomes his most trusted friend.', 'https://images-na.ssl-images-amazon.com/images/M/MV5BMzM5NjUxOTEyMl5BMl5BanBnXkFtZTgwNjEyMDM0MDE@._V1_SX300.jpg'),
(87, 'The Hitchhiker\'s Guide to the Galaxy', 2005, 109, 'Adventure,Comedy,Sci-Fi', 'Garth Jennings', 'Bill Bailey, Anna Chancellor, Warwick Davis, Yasiin Bey', '\"Mere seconds before the Earth is to be demolished by an alien construction crew, journeyman Arthur Dent is swept off the planet by his friend Ford Prefect, a researcher penning a new edition of \"\"The Hitchhiker\'s Guide to the Galaxy.\"\"\"', 'http://ia.media-imdb.com/images/M/MV5BMjEwOTk4NjU2MF5BMl5BanBnXkFtZTYwMDA3NzI3._V1_SX300.jpg'),
(88, 'Once Upon a Time in America', 1984, 229, 'Crime,Drama', 'Sergio Leone', 'Robert De Niro, James Woods, Elizabeth McGovern, Joe Pesci', 'A former Prohibition-era Jewish gangster returns to the Lower East Side of Manhattan over thirty years later, where he once again must confront the ghosts and regrets of his old life.', 'https://images-na.ssl-images-amazon.com/images/M/MV5BMGFkNWI4MTMtNGQ0OC00MWVmLTk3MTktOGYxN2Y2YWVkZWE2XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_SX300.jpg'),
(89, 'Oblivion', 2013, 124, 'Action,Adventure,Mystery', 'Joseph Kosinski', 'Tom Cruise, Morgan Freeman, Olga Kurylenko, Andrea Riseborough', 'A veteran assigned to extract Earth\'s remaining resources begins to question what he knows about his mission and himself.', 'https://images-na.ssl-images-amazon.com/images/M/MV5BMTQwMDY0MTA4MF5BMl5BanBnXkFtZTcwNzI3MDgxOQ@@._V1_SX300.jpg'),
(90, 'V for Vendetta', 2005, 132, 'Action,Drama,Thriller', 'James McTeigue', 'Natalie Portman, Hugo Weaving, Stephen Rea, Stephen Fry', '\"In a future British tyranny, a shadowy freedom fighter, known only by the alias of \"\"V\"\", plots to overthrow it with the help of a young woman.\"', 'https://images-na.ssl-images-amazon.com/images/M/MV5BOTI5ODc3NzExNV5BMl5BanBnXkFtZTcwNzYxNzQzMw@@._V1_SX300.jpg'),
(91, 'Gattaca', 1997, 106, 'Drama,Sci-Fi,Thriller', 'Andrew Niccol', 'Ethan Hawke, Uma Thurman, Gore Vidal, Xander Berkeley', 'A genetically inferior man assumes the identity of a superior one in order to pursue his lifelong dream of space travel.', 'https://images-na.ssl-images-amazon.com/images/M/MV5BNDQxOTc0MzMtZmRlOS00OWQ5LWI2ZDctOTAwNmMwOTYxYzlhXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_SX300.jpg'),
(92, 'Silver Linings Playbook', 2012, 122, 'Comedy,Drama,Romance', 'David O. Russell', 'Bradley Cooper, Jennifer Lawrence, Robert De Niro, Jacki Weaver', 'After a stint in a mental institution, former teacher Pat Solitano moves back in with his parents and tries to reconcile with his ex-wife. Things get more challenging when Pat meets Tiffany, a mysterious girl with problems of her own.', 'https://images-na.ssl-images-amazon.com/images/M/MV5BMTM2MTI5NzA3MF5BMl5BanBnXkFtZTcwODExNTc0OA@@._V1_SX300.jpg'),
(93, 'Alice in Wonderland', 2010, 108, 'Adventure,Family,Fantasy', 'Tim Burton', 'Johnny Depp, Mia Wasikowska, Helena Bonham Carter, Anne Hathaway', 'Nineteen-year-old Alice returns to the magical world from her childhood adventure, where she reunites with her old friends and learns of her true destiny: to end the Red Queen\'s reign of terror.', 'https://images-na.ssl-images-amazon.com/images/M/MV5BMTMwNjAxMTc0Nl5BMl5BanBnXkFtZTcwODc3ODk5Mg@@._V1_SX300.jpg'),
(94, 'Gandhi', 1982, 191, 'Biography,Drama', 'Richard Attenborough', 'Ben Kingsley, Candice Bergen, Edward Fox, John Gielgud', 'Gandhi\'s character is fully explained as a man of nonviolence. Through his patience, he is able to drive the British out of the subcontinent. And the stubborn nature of Jinnah and his commitment towards Pakistan is portrayed.', 'http://ia.media-imdb.com/images/M/MV5BMzJiZDRmOWUtYjE2MS00Mjc1LTg1ZDYtNTQxYWJkZTg1OTM4XkEyXkFqcGdeQXVyNjUwNzk3NDc@._V1_SX300.jpg'),
(95, 'Pacific Rim', 2013, 131, 'Action,Adventure,Sci-Fi', 'Guillermo del Toro', 'Charlie Hunnam, Diego Klattenhoff, Idris Elba, Rinko Kikuchi', 'As a war between humankind and monstrous sea creatures wages on, a former pilot and a trainee are paired up to drive a seemingly obsolete special weapon in a desperate effort to save the world from the apocalypse.', 'https://images-na.ssl-images-amazon.com/images/M/MV5BMTY3MTI5NjQ4Nl5BMl5BanBnXkFtZTcwOTU1OTU0OQ@@._V1_SX300.jpg'),
(96, 'Kiss Kiss Bang Bang', 2005, 103, 'Comedy,Crime,Mystery', 'Shane Black', 'Robert Downey Jr., Val Kilmer, Michelle Monaghan, Corbin Bernsen', 'A murder mystery brings together a private eye, a struggling actress, and a thief masquerading as an actor.', 'http://ia.media-imdb.com/images/M/MV5BMTY5NDExMDA3M15BMl5BanBnXkFtZTYwNTc2MzA3._V1_SX300.jpg'),
(97, 'The Quiet American', 2002, 101, 'Drama,Mystery,Romance', 'Phillip Noyce', 'Michael Caine, Brendan Fraser, Do Thi Hai Yen, Rade Serbedzija', 'An older British reporter vies with a young U.S. doctor for the affections of a beautiful Vietnamese woman.', 'http://ia.media-imdb.com/images/M/MV5BMjE2NTUxNTE3Nl5BMl5BanBnXkFtZTYwNTczMTg5._V1_SX300.jpg'),
(98, 'Cloud Atlas', 2012, 172, 'Drama,Sci-Fi', 'Tom Tykwer, Lana Wachowski, Lilly Wachow', 'Tom Hanks, Halle Berry, Jim Broadbent, Hugo Weaving', 'An exploration of how the actions of individual lives impact one another in the past, present and future, as one soul is shaped from a killer into a hero, and an act of kindness ripples across centuries to inspire a revolution.', 'https://images-na.ssl-images-amazon.com/images/M/MV5BMTczMTgxMjc4NF5BMl5BanBnXkFtZTcwNjM5MTA2OA@@._V1_SX300.jpg'),
(99, 'The Impossible', 2012, 114, 'Drama,Thriller', 'J.A. Bayona', 'Naomi Watts, Ewan McGregor, Tom Holland, Samuel Joslin', 'The story of a tourist family in Thailand caught in the destruction and chaotic aftermath of the 2004 Indian Ocean tsunami.', 'https://images-na.ssl-images-amazon.com/images/M/MV5BMjA5NTA3NzQ5Nl5BMl5BanBnXkFtZTcwOTYxNjY0OA@@._V1_SX300.jpg'),
(100, 'All Quiet on the Western Front', 1930, 136, 'Drama,War', 'Lewis Milestone', 'Louis Wolheim, Lew Ayres, John Wray, Arnold Lucy', 'A young soldier faces profound disillusionment in the soul-destroying horror of World War I.', 'https://images-na.ssl-images-amazon.com/images/M/MV5BNTM5OTg2NDY1NF5BMl5BanBnXkFtZTcwNTQ4MTMwNw@@._V1_SX300.jpg'),
(101, 'The English Patient', 1996, 162, 'Drama,Romance,War', 'Anthony Minghella', 'Ralph Fiennes, Juliette Binoche, Willem Dafoe, Kristin Scott Thomas', 'At the close of WWII, a young nurse tends to a badly-burned plane crash victim. His past is shown in flashbacks, revealing an involvement in a fateful love affair.', 'https://images-na.ssl-images-amazon.com/images/M/MV5BNDg2OTcxNDE0OF5BMl5BanBnXkFtZTgwOTg2MDM0MDE@._V1_SX300.jpg'),
(102, 'Dallas Buyers Club', 2013, 117, 'Biography,Drama', 'Jean-Marc Vallée', 'Matthew McConaughey, Jennifer Garner, Jared Leto, Denis O\'Hare', 'In 1985 Dallas, electrician and hustler Ron Woodroof works around the system to help AIDS patients get the medication they need after he is diagnosed with the disease.', 'https://images-na.ssl-images-amazon.com/images/M/MV5BMTYwMTA4MzgyNF5BMl5BanBnXkFtZTgwMjEyMjE0MDE@._V1_SX300.jpg'),
(103, 'Frida', 2002, 123, 'Biography,Drama,Romance', 'Julie Taymor', 'Salma Hayek, Mía Maestro, Alfred Molina, Antonio Banderas', 'A biography of artist Frida Kahlo, who channeled the pain of a crippling injury and her tempestuous marriage into her work.', 'http://ia.media-imdb.com/images/M/MV5BMTMyODUyMDY1OV5BMl5BanBnXkFtZTYwMDA2OTU3._V1_SX300.jpg'),
(104, 'Before Sunrise', 1995, 105, 'Drama,Romance', 'Richard Linklater', 'Ethan Hawke, Julie Delpy, Andrea Eckert, Hanno Pöschl', 'A young man and woman meet on a train in Europe, and wind up spending one evening together in Vienna. Unfortunately, both know that this will probably be their only night together.', 'https://images-na.ssl-images-amazon.com/images/M/MV5BMTQyMTM3MTQxMl5BMl5BanBnXkFtZTcwMDAzNjQ4Mg@@._V1_SX300.jpg'),
(105, 'The Rum Diary', 2011, 120, 'Comedy,Drama', 'Bruce Robinson', 'Johnny Depp, Aaron Eckhart, Michael Rispoli, Amber Heard', 'American journalist Paul Kemp takes on a freelance job in Puerto Rico for a local newspaper during the 1960s and struggles to find a balance between island culture and the expatriates who live there.', 'https://images-na.ssl-images-amazon.com/images/M/MV5BMTM5ODA4MjYxM15BMl5BanBnXkFtZTcwMTM3NTE5Ng@@._V1_SX300.jpg'),
(106, 'The Last Samurai', 2003, 154, 'Action,Drama,History', 'Edward Zwick', 'Ken Watanabe, Tom Cruise, William Atherton, Chad Lindberg', 'An American military advisor embraces the Samurai culture he was hired to destroy after he is captured in battle.', 'http://ia.media-imdb.com/images/M/MV5BMzkyNzQ1Mzc0NV5BMl5BanBnXkFtZTcwODg3MzUzMw@@._V1_SX300.jpg'),
(107, 'Chinatown', 1974, 130, 'Drama,Mystery,Thriller', 'Roman Polanski', 'Jack Nicholson, Faye Dunaway, John Huston, Perry Lopez', 'A private detective hired to expose an adulterer finds himself caught up in a web of deceit, corruption and murder.', 'https://images-na.ssl-images-amazon.com/images/M/MV5BN2YyNDE5NzItMjAwNC00MGQxLTllNjktZGIzMWFkZjA3OWQ0XkEyXkFqcGdeQXVyNDk3NzU2MTQ@._V1_SX300.jpg'),
(108, 'Calvary', 2014, 102, 'Comedy,Drama', 'John Michael McDonagh', 'Brendan Gleeson, Chris O\'Dowd, Kelly Reilly, Aidan Gillen', 'After he is threatened during a confession, a good-natured priest must battle the dark forces closing in around him.', 'https://images-na.ssl-images-amazon.com/images/M/MV5BMTc3MjQ1MjE2M15BMl5BanBnXkFtZTgwNTMzNjE4MTE@._V1_SX300.jpg'),
(109, 'Before Sunset', 2004, 80, 'Drama,Romance', 'Richard Linklater', 'Ethan Hawke, Julie Delpy, Vernon Dobtcheff, Louise Lemoine Torrès', 'Nine years after Jesse and Celine first met, they encounter each other again on the French leg of Jesse\'s book tour.', 'http://ia.media-imdb.com/images/M/MV5BMTQ1MjAwNTM5Ml5BMl5BanBnXkFtZTYwNDM0MTc3._V1_SX300.jpg'),
(110, 'Spirited Away', 2001, 125, 'Animation,Adventure,Family', 'Hayao Miyazaki', 'Rumi Hiiragi, Miyu Irino, Mari Natsuki, Takashi Naitô', 'During her family\'s move to the suburbs, a sullen 10-year-old girl wanders into a world ruled by gods, witches, and spirits, and where humans are changed into beasts.', 'https://images-na.ssl-images-amazon.com/images/M/MV5BMjYxMDcyMzIzNl5BMl5BanBnXkFtZTYwNDg2MDU3._V1_SX300.jpg'),
(111, 'Indochine', 1992, 159, 'Drama,Romance', 'Régis Wargnier', 'Catherine Deneuve, Vincent Perez, Linh Dan Pham, Jean Yanne', 'This story is set in 1930, at the time when French colonial rule in Indochina is ending. A widowed French woman who works in the rubber fields, raises a Vietnamese princess as if she was ...', 'https://images-na.ssl-images-amazon.com/images/M/MV5BMTM1MTkzNzA3NF5BMl5BanBnXkFtZTYwNTI2MzU5._V1_SX300.jpg'),
(112, 'Birdman or (The Unexpected Virtue of Ignorance)', 2014, 119, 'Comedy,Drama,Romance', 'Alejandro G. Iñárritu', 'Michael Keaton, Emma Stone, Kenny Chin, Jamahl Garrison-Lowe', 'Illustrated upon the progress of his latest Broadway play, a former popular actor\'s struggle to cope with his current life as a wasted actor is shown.', 'https://images-na.ssl-images-amazon.com/images/M/MV5BODAzNDMxMzAxOV5BMl5BanBnXkFtZTgwMDMxMjA4MjE@._V1_SX300.jpg'),
(113, 'Boyhood', 2014, 165, 'Drama', 'Richard Linklater', 'Ellar Coltrane, Patricia Arquette, Elijah Smith, Lorelei Linklater', 'The life of Mason, from early childhood to his arrival at college.', 'https://images-na.ssl-images-amazon.com/images/M/MV5BMTYzNDc2MDc0N15BMl5BanBnXkFtZTgwOTcwMDQ5MTE@._V1_SX300.jpg'),
(114, '12 Angry Men', 1957, 96, 'Crime,Drama', 'Sidney Lumet', 'Martin Balsam, John Fiedler, Lee J. Cobb, E.G. Marshall', 'A jury holdout attempts to prevent a miscarriage of justice by forcing his colleagues to reconsider the evidence.', 'https://images-na.ssl-images-amazon.com/images/M/MV5BODQwOTc5MDM2N15BMl5BanBnXkFtZTcwODQxNTEzNA@@._V1_SX300.jpg'),
(115, 'The Imitation Game', 2014, 114, 'Biography,Drama,Thriller', 'Morten Tyldum', 'Benedict Cumberbatch, Keira Knightley, Matthew Goode, Rory Kinnear', 'During World War II, mathematician Alan Turing tries to crack the enigma code with help from fellow mathematicians.', 'https://images-na.ssl-images-amazon.com/images/M/MV5BNDkwNTEyMzkzNl5BMl5BanBnXkFtZTgwNTAwNzk3MjE@._V1_SX300.jpg'),
(116, 'Interstellar', 2014, 169, 'Adventure,Drama,Sci-Fi', 'Christopher Nolan', 'Ellen Burstyn, Matthew McConaughey, Mackenzie Foy, John Lithgow', 'A team of explorers travel through a wormhole in space in an attempt to ensure humanity\'s survival.', 'https://images-na.ssl-images-amazon.com/images/M/MV5BMjIxNTU4MzY4MF5BMl5BanBnXkFtZTgwMzM4ODI3MjE@._V1_SX300.jpg'),
(117, 'Big Nothing', 2006, 86, 'Comedy,Crime,Thriller', 'Jean-Baptiste Andrea', 'David Schwimmer, Simon Pegg, Alice Eve, Natascha McElhone', 'A frustrated, unemployed teacher joining forces with a scammer and his girlfriend in a blackmailing scheme.', 'https://images-na.ssl-images-amazon.com/images/M/MV5BMTY5NTc2NjYwOV5BMl5BanBnXkFtZTcwMzk5OTY0MQ@@._V1_SX300.jpg'),
(118, 'Das Boot', 1981, 149, 'Adventure,Drama,Thriller', 'Wolfgang Petersen', 'Jürgen Prochnow, Herbert Grönemeyer, Klaus Wennemann,\" Hubertus Bengsch', '\"\"The claustrophobic world of a WWII German U-boat ; boredom\", filth,\" and sheer terror.\"\"', 'https://images-na.ssl-images-amazon.com/images/M/MV5BMjE5Mzk5OTQ0Nl5BMl5BanBnXkFtZTYwNzUwMTQ5._V1_SX300.jpg\",,,,'),
(119, 'Shrek 2', 2004, 93, 'Animation,Adventure,Comedy', 'Andrew Adamson, Kelly Asbury, Conrad Ver', 'Mike Myers, Eddie Murphy, Cameron Diaz, Julie Andrews', 'Princess Fiona\'s parents invite her and Shrek to dinner to celebrate her marriage. If only they knew the newlyweds were both ogres.', 'https://images-na.ssl-images-amazon.com/images/M/MV5BMTk4MTMwNjI4M15BMl5BanBnXkFtZTcwMjExMzUyMQ@@._V1_SX300.jpg,,,,');
INSERT INTO `films` (`id`, `title`, `year`, `runtime`, `genres`, `director`, `actors`, `plot`, `posterUrl`) VALUES
(120, 'Sin City', 2005, 124, 'Crime,Thriller', 'Frank Miller, Robert Rodriguez, Quentin ', 'Jessica Alba, Devon Aoki, Alexis Bledel, Powers Boothe', 'A film that explores the dark and miserable town, Basin City, and tells the story of three different people, all caught up in violent corruption.', 'https://images-na.ssl-images-amazon.com/images/M/MV5BODZmYjMwNzEtNzVhNC00ZTRmLTk2M2UtNzE1MTQ2ZDAxNjc2XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_SX300.jpg,,'),
(121, 'Nebraska', 2013, 115, 'Adventure,Comedy,Drama', 'Alexander Payne', 'Bruce Dern, Will Forte, June Squibb, Bob Odenkirk', 'An aging, booze-addled father makes the trip from Montana to Nebraska with his estranged son in order to claim a million-dollar Mega Sweepstakes Marketing prize.', 'https://images-na.ssl-images-amazon.com/images/M/MV5BMTU2Mjk2NDkyMl5BMl5BanBnXkFtZTgwNTk0NzcyMDE@._V1_SX300.jpg,,,,,'),
(122, 'Shrek', 2001, 90, 'Animation,Adventure,Comedy', 'Andrew Adamson, Vicky Jenson', 'Mike Myers, Eddie Murphy, Cameron Diaz, John Lithgow', 'After his swamp is filled with magical creatures, an ogre agrees to rescue a princess for a villainous lord in order to get his land back.', 'https://images-na.ssl-images-amazon.com/images/M/MV5BMTk2NTE1NTE0M15BMl5BanBnXkFtZTgwNjY4NTYxMTE@._V1_SX300.jpg,,,,'),
(123, 'Mr. & Mrs. Smith', 2005, 120, 'Action,Comedy,Crime', 'Doug Liman', 'Brad Pitt, Angelina Jolie, Vince Vaughn, Adam Brody', 'A bored married couple is surprised to learn that they are both assassins hired by competing agencies to kill each other.', 'https://images-na.ssl-images-amazon.com/images/M/MV5BMTUxMzcxNzQzOF5BMl5BanBnXkFtZTcwMzQxNjUyMw@@._V1_SX300.jpg,,,,,,'),
(124, 'Original Sin', 2001, 116, 'Drama,Mystery,Romance', 'Michael Cristofer', 'Antonio Banderas, Angelina Jolie, Thomas Jane, Jack Thompson', 'A woman along with her lover, plan to con a rich man by marrying him and on earning his trust running away with all his money. Everything goes as planned until she actually begins to fall in love with him.', 'https://images-na.ssl-images-amazon.com/images/M/MV5BODg3Mjg0MDY4M15BMl5BanBnXkFtZTcwNjY5MDQ2NA@@._V1_SX300.jpg,,,,,'),
(125, 'Shrek Forever After', 2010, 93, 'Animation,Adventure,Comedy', 'Mike Mitchell', 'Mike Myers, Eddie Murphy, Cameron Diaz, Antonio Banderas', 'Rumpelstiltskin tricks a mid-life crisis burdened Shrek into allowing himself to be erased from existence and cast in a dark alternate timeline where Rumpel rules supreme.', 'http://ia.media-imdb.com/images/M/MV5BMTY0OTU1NzkxMl5BMl5BanBnXkFtZTcwMzI2NDUzMw@@._V1_SX300.jpg,,,,,,'),
(126, 'Before Midnight', 2013, 109, 'Drama,Romance', 'Richard Linklater', 'Ethan Hawke, Julie Delpy, Seamus Davey-Fitzpatrick, Jennifer Prior', 'We meet Jesse and Celine nine years on in Greece. Almost two decades have passed since their first meeting on that train bound for Vienna.', 'http://ia.media-imdb.com/images/M/MV5BMjA5NzgxODE2NF5BMl5BanBnXkFtZTcwNTI1NTI0OQ@@._V1_SX300.jpg,,,,,,,'),
(127, 'Despicable Me', 2010, 95, 'Animation,Adventure,Comedy', 'Pierre Coffin, Chris Renaud', 'Steve Carell, Jason Segel, Russell Brand, Julie Andrews', 'When a criminal mastermind uses a trio of orphan girls as pawns for a grand scheme, he finds their love is profoundly changing him for the better.', 'https://images-na.ssl-images-amazon.com/images/M/MV5BMTY3NjY0MTQ0Nl5BMl5BanBnXkFtZTcwMzQ2MTc0Mw@@._V1_SX300.jpg,,,,'),
(128, 'Troy', 2004, 163, 'Adventure', 'Wolfgang Petersen', 'Julian Glover, Brian Cox, Nathan Jones, Adoni Maropis', 'An adaptation of Homer\'s great epic, the film follows the assault on Troy by the united Greek forces and chronicles the fates of the men involved.', 'http://ia.media-imdb.com/images/M/MV5BMTk5MzU1MDMwMF5BMl5BanBnXkFtZTcwNjczODMzMw@@._V1_SX300.jpg,,,,,,,'),
(129, 'The Hobbit: An Unexpected Journey', 2012, 169, 'Adventure,Fantasy', 'Peter Jackson', 'Ian McKellen, Martin Freeman, Richard Armitage, Ken Stott', 'A reluctant hobbit, Bilbo Baggins, sets out to the Lonely Mountain with a spirited group of dwarves to reclaim their mountain home - and the gold within it - from the dragon Smaug.', 'https://images-na.ssl-images-amazon.com/images/M/MV5BMTcwNTE4MTUxMl5BMl5BanBnXkFtZTcwMDIyODM4OA@@._V1_SX300.jpg,,,,,'),
(130, 'The Great Gatsby', 2013, 143, 'Drama,Romance', 'Baz Luhrmann', 'Lisa Adam, Frank Aldridge, Amitabh Bachchan, Steve Bisley', 'A writer and wall street trader, Nick, finds himself drawn to the past and lifestyle of his millionaire neighbor, Jay Gatsby.', 'https://images-na.ssl-images-amazon.com/images/M/MV5BMTkxNTk1ODcxNl5BMl5BanBnXkFtZTcwMDI1OTMzOQ@@._V1_SX300.jpg,,,,'),
(131, 'Ice Age', 2002, 81, 'Animation,Adventure,Comedy', 'Chris Wedge, Carlos Saldanha', 'Ray Romano, John Leguizamo, Denis Leary, Goran Visnjic', 'Set during the Ice Age, a sabertooth tiger, a sloth, and a wooly mammoth find a lost human infant, and they try to return him to his tribe.', 'https://images-na.ssl-images-amazon.com/images/M/MV5BMjEyNzI1ODA0MF5BMl5BanBnXkFtZTYwODIxODY3._V1_SX300.jpg,'),
(132, 'The Lord of the Rings: The Fellowship of the Ring', 2001, 178, 'Action,Adventure,Drama', 'Peter Jackson', 'Alan Howard, Noel Appleby, Sean Astin, Sala Baker', 'A meek Hobbit from the Shire and eight companions set out on a journey to destroy the powerful One Ring and save Middle Earth from the Dark Lord Sauron.', 'https://images-na.ssl-images-amazon.com/images/M/MV5BNTEyMjAwMDU1OV5BMl5BanBnXkFtZTcwNDQyNTkxMw@@._V1_SX300.jpg,,,,,,'),
(133, 'The Lord of the Rings: The Two Towers', 2002, 179, 'Action,Adventure,Drama', 'Peter Jackson', 'Bruce Allpress, Sean Astin, John Bach, Sala Baker', 'While Frodo and Sam edge closer to Mordor with the help of the shifty Gollum, the divided fellowship makes a stand against Sauron\'s new ally, Saruman, and his hordes of Isengard.', 'https://images-na.ssl-images-amazon.com/images/M/MV5BMTAyNDU0NjY4NTheQTJeQWpwZ15BbWU2MDk4MTY2Nw@@._V1_SX300.jpg,,,'),
(134, 'Ex Machina', 2015, 108, 'Drama,Mystery,Sci-Fi', 'Alex Garland', 'Domhnall Gleeson, Corey Johnson, Oscar Isaac, Alicia Vikander', 'A young programmer is selected to participate in a ground-breaking experiment in synthetic intelligence by evaluating the human qualities of a breath-taking humanoid A.I.', 'https://images-na.ssl-images-amazon.com/images/M/MV5BMTUxNzc0OTIxMV5BMl5BanBnXkFtZTgwNDI3NzU2NDE@._V1_SX300.jpg,,,,,,'),
(135, 'The Theory of Everything', 2014, 123, 'Biography,Drama,Romance', 'James Marsh', 'Eddie Redmayne, Felicity Jones, Tom Prior, Sophie Perry', 'A look at the relationship between the famous physicist Stephen Hawking and his wife.', 'https://images-na.ssl-images-amazon.com/images/M/MV5BMTAwMTU4MDA3NDNeQTJeQWpwZ15BbWU4MDk4NTMxNTIx._V1_SX300.jpg,,,,,,'),
(136, 'Shogun', 1980, 60, 'Adventure,Drama,History', 'N/A', 'Richard Chamberlain, Toshirô Mifune, Yôko Shimada, Furankî Sakai', 'A English navigator becomes both a player and pawn in the complex political games in feudal Japan.', 'https://images-na.ssl-images-amazon.com/images/M/MV5BMTY1ODI4NzYxMl5BMl5BanBnXkFtZTcwNDA4MzUxMQ@@._V1_SX300.jpg,,,,,,'),
(137, 'Spotlight', 2015, 128, 'Biography,Crime,Drama', 'Tom McCarthy', 'Mark Ruffalo, Michael Keaton, Rachel McAdams, Liev Schreiber', 'The true story of how the Boston Globe uncovered the massive scandal of child molestation and cover-up within the local Catholic Archdiocese, shaking the entire Catholic Church to its core.', 'https://images-na.ssl-images-amazon.com/images/M/MV5BMjIyOTM5OTIzNV5BMl5BanBnXkFtZTgwMDkzODE2NjE@._V1_SX300.jpg,,,,,'),
(138, 'Vertigo', 1958, 128, 'Mystery,Romance,Thriller', 'Alfred Hitchcock', 'James Stewart, Kim Novak, Barbara Bel Geddes, Tom Helmore', 'A San Francisco detective suffering from acrophobia investigates the strange activities of an old friend\'s wife, all the while becoming dangerously obsessed with her.', 'http://ia.media-imdb.com/images/M/MV5BNzY0NzQyNzQzOF5BMl5BanBnXkFtZTcwMTgwNTk4OQ@@._V1_SX300.jpg,,,,,'),
(139, 'Whiplash', 2014, 107, 'Drama,Music', 'Damien Chazelle', 'Miles Teller, J.K. Simmons, Paul Reiser, Melissa Benoist', 'A promising young drummer enrolls at a cut-throat music conservatory where his dreams of greatness are mentored by an instructor who will stop at nothing to realize a student\'s potential.', 'https://images-na.ssl-images-amazon.com/images/M/MV5BMTU4OTQ3MDUyMV5BMl5BanBnXkFtZTgwOTA2MjU0MjE@._V1_SX300.jpg,,,,,,,'),
(140, 'The Lives of Others', 2006, 137, 'Drama,Thriller', 'Florian Henckel von Donnersmarck', 'Martina Gedeck, Ulrich Mühe, Sebastian Koch, Ulrich Tukur', 'In 1984 East Berlin, an agent of the secret police, conducting surveillance on a writer and his lover, finds himself becoming increasingly absorbed by their lives.', 'http://ia.media-imdb.com/images/M/MV5BNDUzNjYwNDYyNl5BMl5BanBnXkFtZTcwNjU3ODQ0MQ@@._V1_SX300.jpg,,,,'),
(141, 'Hotel Rwanda', 2004, 121, 'Drama,History,War', 'Terry George', 'Xolani Mali, Don Cheadle, Desmond Dube, Hakeem Kae-Kazim', 'Paul Rusesabagina was a hotel manager who housed over a thousand Tutsi refugees during their struggle against the Hutu militia in Rwanda.', 'https://images-na.ssl-images-amazon.com/images/M/MV5BMTI2MzQyNTc1M15BMl5BanBnXkFtZTYwMjExNjc3._V1_SX300.jpg,,,,,,'),
(142, 'The Martian', 2015, 144, 'Adventure,Drama,Sci-Fi', 'Ridley Scott', 'Matt Damon, Jessica Chastain, Kristen Wiig, Jeff Daniels', 'An astronaut becomes stranded on Mars after his team assume him dead, and must rely on his ingenuity to find a way to signal to Earth that he is alive.', 'https://images-na.ssl-images-amazon.com/images/M/MV5BMTc2MTQ3MDA1Nl5BMl5BanBnXkFtZTgwODA3OTI4NjE@._V1_SX300.jpg,,,,,'),
(143, 'To Kill a Mockingbird', 1962, 129, 'Crime,Drama', 'Robert Mulligan', 'Gregory Peck, John Megna, Frank Overton, Rosemary Murphy', 'Atticus Finch, a lawyer in the Depression-era South, defends a black man against an undeserved rape charge, and his kids against prejudice.', 'http://ia.media-imdb.com/images/M/MV5BMjA4MzI1NDY2Nl5BMl5BanBnXkFtZTcwMTcyODc5Mw@@._V1_SX300.jpg,,,,'),
(144, 'The Hateful Eight', 2015, 187, 'Crime,Drama,Mystery', 'Quentin Tarantino', 'Samuel L. Jackson, Kurt Russell, Jennifer Jason Leigh, Walton Goggins', 'In the dead of a Wyoming winter, a bounty hunter and his prisoner find shelter in a cabin currently inhabited by a collection of nefarious characters.', 'https://images-na.ssl-images-amazon.com/images/M/MV5BMjA1MTc1NTg5NV5BMl5BanBnXkFtZTgwOTM2MDEzNzE@._V1_SX300.jpg,,,,,'),
(145, 'A Separation', 2011, 123, 'Drama,Mystery', 'Asghar Farhadi', 'Peyman Moaadi, Leila Hatami, Sareh Bayat, Shahab Hosseini', 'A married couple are faced with a difficult decision - to improve the life of their child by moving to another country or to stay in Iran and look after a deteriorating parent who has Alzheimer\'s disease.', 'http://ia.media-imdb.com/images/M/MV5BMTYzMzU4NDUwOF5BMl5BanBnXkFtZTcwMTM5MjA5Ng@@._V1_SX300.jpg,,,,,,,'),
(146, 'The Big Short', 2015, 130, 'Biography,Comedy,Drama', 'Adam McKay', 'Ryan Gosling, Rudy Eisenzopf, Casey Groves, Charlie Talbert', 'Four denizens in the world of high-finance predict the credit and housing bubble collapse of the mid-2000s, and decide to take on the big banks for their greed and lack of foresight.', 'https://images-na.ssl-images-amazon.com/images/M/MV5BNDc4MThhN2EtZjMzNC00ZDJmLThiZTgtNThlY2UxZWMzNjdkXkEyXkFqcGdeQXVyNDk3NzU2MTQ@._V1_SX300.jpg,,,,,');

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `nom` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`nom`) VALUES
('Action'),
('Adventure'),
('Animation'),
('Biography'),
('Comedy'),
('Crime'),
('Drama'),
('Family'),
('Fantasy'),
('Film-Noir'),
('History'),
('Horror'),
('Music'),
('Musical'),
('Mystery'),
('Romance'),
('Sci-Fi'),
('Sport\n'),
('Thriller'),
('War'),
('Western');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `films`
--
ALTER TABLE `films`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`nom`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `films`
--
ALTER TABLE `films`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Dumping data for table `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'server', 'filmsBD', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"db_select[]\":[\"e23mabdfilms\",\"phpmyadmin\",\"test\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@SERVER@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_columns\":\"something\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Structure of table @TABLE@\",\"latex_structure_continued_caption\":\"Structure of table @TABLE@ (continued)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Content of table @TABLE@\",\"latex_data_continued_caption\":\"Content of table @TABLE@ (continued)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"yaml_structure_or_data\":\"data\",\"\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_simple_view_export\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"e23mabdfilms\",\"table\":\"films\"},{\"db\":\"e23mabdfilms\",\"table\":\"genres\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'e23mabdfilms', 'films', '[]', '2023-08-11 22:45:35');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2023-08-13 01:59:22', '{\"Console\\/Mode\":\"show\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
