-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 28, 2025 at 01:53 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laboratory`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `ADMIN_ID` int(12) NOT NULL,
  `ADMIN_UNAME` varchar(50) NOT NULL,
  `ADMIN_EMAIL` varchar(100) NOT NULL,
  `ADMIN_MOBILE` varchar(12) NOT NULL,
  `ADMIN_PASS` varchar(50) NOT NULL,
  `ADMIN_UDATE` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`ADMIN_ID`, `ADMIN_UNAME`, `ADMIN_EMAIL`, `ADMIN_MOBILE`, `ADMIN_PASS`, `ADMIN_UDATE`) VALUES
(1, 'admin', 'admin@laboratory.com', '9095630190', '4321', '2025-01-19 22:37:54');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `CATEGORY_ID` int(12) NOT NULL,
  `CATEGORY` varchar(100) NOT NULL,
  `CATEGORY_UDATE` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`CATEGORY_ID`, `CATEGORY`, `CATEGORY_UDATE`) VALUES
(4, 'Physics', '2025-02-26 06:44:55'),
(5, 'chemistry', '2025-02-26 06:45:11'),
(6, 'Botony', '2025-02-26 06:45:19'),
(7, 'Zoology', '2025-02-26 06:45:26'),
(8, 'Environmental Science', '2025-03-10 01:47:13');

-- --------------------------------------------------------

--
-- Table structure for table `experiments`
--

CREATE TABLE `experiments` (
  `id` int(11) NOT NULL,
  `category` varchar(255) NOT NULL,
  `sub_category` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `video_link` varchar(255) DEFAULT NULL,
  `author_details` text NOT NULL,
  `instruments` text DEFAULT NULL,
  `advantages` text DEFAULT NULL,
  `disadvantages` text DEFAULT NULL,
  `pros` text DEFAULT NULL,
  `cons` text DEFAULT NULL,
  `instrument_explanations` text DEFAULT NULL,
  `instrument_usage` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `experiments`
--

INSERT INTO `experiments` (`id`, `category`, `sub_category`, `title`, `description`, `image_path`, `video_link`, `author_details`, `instruments`, `advantages`, `disadvantages`, `pros`, `cons`, `instrument_explanations`, `instrument_usage`, `created_at`) VALUES
(9, 'Physics', 'Gravitation', 'Free-Fall Motion', 'This experiment demonstrates how objects fall freely under the influence of gravity, experiencing uniform acceleration. By dropping an object from a known height and measuring the time taken to reach the ground, one can calculate the acceleration due to gravity (g).', 'uploads/free_fall_experiment.jpg', 'https://www.youtube.com/embed/5EOOL58Td0s?si=pN8W332WCcxekL2P', 'Name: Galileo Galilei\r\nAffiliation: University of Pisa, Italy\r\nExpertise: Physics, Astronomy, Mechanics\r\nContribution: Conducted experiments on falling bodies, disproved Aristotelian motion theories, and established that all objects fall at the same rate regardless of mass in the absence of air resistance.', '<ol>  <li>Stopwatch</li>  <li>Measuring scale</li>  <li>Small solid object (e.g., metal ball)</li>  <li>High platform (to drop the object)</li></ol>', '<ol>  <li>Provides experimental proof of uniform acceleration due to gravity</li>  <li>Helps in understanding the concept of free-fall motion</li>  <li>Easy to perform with simple equipment</li></ol>', '<ol>  <li>Air resistance can affect results.</li>  <li>Easy to perform with simple equipment.</li>  <li>Helps in understanding the concept of free-fall motion.</li></ol>', '<ol>  <li>Demonstrates fundamental gravitational concepts.</li>  <li>Helps in verifying Newton’s equations of motion.</li>  <li>Can be conducted with minimal resources.</li></ol>', '<ol>  <li>Not applicable in real-world scenarios where air resistance plays a role.</li>  <li>Requires repeated trials for accuracy.</li>  <li>External disturbances (like wind) can affect results.</li></ol>', '<ol>  <li>Stopwatch: Provides precise time measurement for the fall duration.</li>  <li>Measuring Scale: Ensures accurate height measurement to calculate acceleration.</li></ol>', NULL, '2025-02-27 01:48:50'),
(10, 'Physics', 'Gravitation', 'Simple Pendulum', 'A simple pendulum consists of a small mass (bob) attached to a string, oscillating back and forth. By measuring the time period for multiple oscillations and varying the length of the string, one can determine the acceleration due to gravity (g).', 'uploads/pendulum_experiment.jpg', 'https://www.youtube.com/embed/IKAzjiMv5_4?si=gjqLEpasVyv0zbjq', 'Name: Christiaan Huygens\r\nAffiliation: Dutch Mathematician and Physicist\r\nExpertise: Mechanics, Optics, Astronomy\r\nContribution: Developed the mathematical formula for the period of a pendulum and contributed to the understanding of timekeeping using pendulums.\r\n', '<ol>\r\n  <li> String or thread</li>\r\n  <li>  Small metallic bob</li>\r\n  <li>  Stopwatch</li>\r\n  <li>  Clamp stand</li>\r\n  <li> Measuring scale</li>\r\n</ol>\r\n', '<ol>\r\n  <li>Provides an experimental method to determine the acceleration due to gravity.</li>\r\n  <li>It helps in understanding harmonic motion.</li>\r\n<li>Simple and inexpensive setup.</li>\r\n</ol>\r\n', '<ol>\r\n  <li>Requires precise measurements for accurate results.</li>\r\n  <li>Air resistance and friction can affect oscillations.</li>\r\n  <li>Assumption of small-angle approximation may introduce errors.</li>\r\n</ol>\r\n', '<ol>\r\n <li> Demonstrates periodic motion principles.</li>\r\n  <li>It helps in timekeeping and clock calibration studies.</li>\r\n<li>Provides a practical application of Newton’s laws.</li>\r\n</ol>\r\n', '<ol>\r\n <li>Requires a stable environment to avoid unwanted disturbances.</li>\r\n<li>External factors like air resistance and damping affect accuracy.</li>\r\n <li>Length measurement should be exact for precise calculations.</li>\r\n</ol>\r\n', '<ol>\r\n<li>String: Should be lightweight and inextensible to reduce experimental errors.</li>\r\n<li>Stopwatch: Ensures precise measurement of time for multiple oscillations.</li>\r\n</ol>\r\n', NULL, '2025-02-27 01:55:13'),
(11, 'Physics', 'Gravitation', 'Inclined Plane Motion', 'This experiment explores how objects move on an inclined plane under the influence of gravity. By measuring the time taken for an object to travel down different inclinations, one can determine acceleration and verify kinematic equations.', 'uploads/weight_variation_experiment.jpg', 'https://www.youtube.com/embed/pD_ZkUyrxi0?si=dGVkLDXLV0PwB9QB', 'Name: Galileo Galilei\r\nAffiliation: University of Padua, Italy\r\nExpertise: Physics, Mechanics, Mathematics\r\nContribution: Used inclined planes to study uniformly accelerated motion, leading to the discovery of the laws of motion and laying the foundation for Newtonian mechanics.', '<ol>\r\n<li>Wooden or metal inclined plane</li> <li>Small rolling object (ball or cart)</li><li> Protractor (to measure incline angle)</li><li> Stopwatch </li><li>Measuring scale</li></ol>', '<ol>\r\n  <li>Helps in understanding Newton’s laws of motion.</li>\r\n  <li>Allows study of acceleration in a controlled manner.</li>\r\n  <li>Can be used to verify kinematic equations.</li>\r\n</ol>\r\n\r\n', '<ol>\r\n  <li>Surface friction may affect results.</li>\r\n  <li>Requires precise angle measurement for accuracy.</li>\r\n  <li>External disturbances can introduce errors.</li>\r\n</ol>\r\n', '<ol>\r\n  <li>Demonstrates real-world applications of physics concepts.</li>\r\n  <li>Provides insight into motion on slopes and ramps.</li>\r\n  <li>Helps in learning about friction and its effects on motion.</li>\r\n</ol>\r\n', '<ol>\r\n  <li>Results depend on the smoothness of the surface.</li>\r\n  <li>Requires repeated trials for precision.</li>\r\n  <li>Angle measurement errors can impact calculations.</li>\r\n</ol>\r\n', '<ol>\r\n  <li>Inclined Plane: Controls the angle of descent and influences acceleration.</li>\r\n  <li>Stopwatch: Used for precise time measurements to calculate acceleration.</li>\r\n</ol>\r\n', NULL, '2025-02-27 01:58:43'),
(12, 'chemistry', 'Analytical Chemistry', 'Conductometric Titration', 'This experiment determines the endpoint of a titration using conductivity measurements instead of an indicator. The conductivity of the solution changes as an acid reacts with a base, and the endpoint is found by plotting conductivity vs. volume of titrant added.', 'uploads/Conductometric_Titration.jpg', 'https://www.youtube.com/embed/Nw2ipM5cgAQ?si=vwFvj_AzjGfnufuo', 'Name: Friedrich Kohlrausch\r\nAffiliation: German Physicist and Chemist\r\nExpertise: Electrochemistry, Conductivity Studies\r\nContribution: Developed the concept of electrical conductivity in solutions and conductometric titration techniques.', '<ol>\r\n  <li>Conductivity meter</li>\r\n  <li>Electrodes</li>\r\n  <li>Beaker</li>\r\n  <li>Standard solution (e.g., NaOH)</li>\r\n  <li>Unknown solution (e.g., HCl)</li>\r\n  <li>Burette</li>\r\n  <li>Stirrer</li>\r\n</ol>\r\n', '<ol>\r\n  <li>Works even for colorless solutions where indicators fail.</li>\r\n  <li>More precise than traditional titration.</li>\r\n  <li>No need for visual endpoint detection.</li>\r\n</ol>\r\n', '<ol>\r\n  <li>Requires a conductivity meter.</li>\r\n  <li>Sensitive to impurities in the solution.</li>\r\n  <li>Needs careful calibration for accuracy.</li>\r\n</ol>\r\n', '<ol>\r\n  <li>Can be used for weak acid-weak base titrations.</li>\r\n  <li>More accurate for industrial applications.</li>\r\n  <li>Provides real-time measurement of reaction progress.</li>\r\n</ol>\r\n', '<ol>\r\n  <li>Expensive compared to regular titration.</li>\r\n  <li>Requires training to interpret conductivity curves.</li>\r\n  <li>Electrode contamination can affect results.</li>\r\n</ol>\r\n', 'Electrodes: Measure ion movement in solution.\r\nConductivity Curve: Plots conductivity vs. volume to find the equivalence point.', NULL, '2025-02-27 02:30:13'),
(13, 'chemistry', 'Analytical Chemistry', 'Chromatography for Food Dye Separation', 'This experiment uses paper chromatography to separate and identify different dyes in food coloring. The process relies on the different solubilities of dyes in a solvent as they move through a paper strip.', 'uploads/Chromatography_Food_Dye_Separation.jpg', 'https://www.youtube.com/embed/GDROkh1zlr8?si=SyIGHUvOIhbCgxNB', 'Name: Mikhail Tsvet\r\nAffiliation: Russian Scientist\r\nExpertise: Chromatography, Plant Pigment Separation\r\nContribution: Invented chromatography in 1901 for separating plant pigments.', '<ol>\r\n  <li>Chromatography paper</li>\r\n  <li>Beaker</li>\r\n  <li>Water or ethanol as solvent</li>\r\n  <li>Food dye samples</li>\r\n  <li>Pencil and ruler</li>\r\n</ol>\r\n', '<ol>\r\n  <li>Simple and easy to perform.</li>\r\n  <li>Requires minimal equipment.</li>\r\n  <li>Can analyze multiple samples simultaneously.</li>\r\n</ol>\r\n', '<ol>\r\n  <li>Limited to water-soluble substances.</li>\r\n  <li>Can be affected by environmental factors like humidity.</li>\r\n  <li>Not highly precise for complex mixtures.</li>\r\n</ol>\r\n', '<ol>\r\n  <li>Good for quick qualitative analysis.</li>\r\n  <li>Inexpensive and requires minimal chemicals.</li>\r\n  <li>Can be used in forensic and food testing.</li>\r\n</ol>\r\n', '<ol>\r\n  <li>Cannot determine exact chemical composition.</li>\r\n  <li>Some dyes may not separate well.</li>\r\n  <li>Needs careful handling to avoid smudging.</li>\r\n</ol>\r\n', '<ol>\r\n  <li>Capillary Action: Moves solvent upward, separating dyes.</li>\r\n  <li>Retention Factor (Rf): Used to identify each dye based on its travel distance.</li>\r\n</ol>\r\n', NULL, '2025-02-27 02:37:07'),
(14, 'chemistry', 'Analytical Chemistry', ' UV-Vis Spectroscopy for Protein Analysis', 'This experiment uses UV-Visible Spectroscopy to analyze protein concentration in a sample. A UV spectrophotometer measures the absorbance of light at a specific wavelength to determine the amount of protein present.\r\n', 'uploads/UV_Vis_Spectroscopy.jpg', '\"https://www.youtube.com/embed/cmwOFn67Jqg?si=KS4pCLuc4JL1IcFs\"', 'Name: Arnold Beckman\r\nAffiliation: American Chemist and Inventor\r\nExpertise: Spectroscopy, Instrumentation\r\nContribution: Developed the first commercial UV-Vis spectrophotometer in 1940.', '<ol>\r\n  <li>UV-Vis Spectrophotometer</li>\r\n  <li>Cuvettes</li>\r\n  <li>Protein samples</li>\r\n  <li>Buffer solution</li>\r\n  <li>Pipettes</li>\r\n</ol>\r\n', '<ol>\r\n  <li>Highly accurate for detecting protein concentration.</li>\r\n  <li>Rapid and non-destructive analysis.</li>\r\n  <li>Used in pharmaceutical and biological research.</li>\r\n</ol>\r\n', '<ol>\r\n  <li>Requires a UV-Vis spectrophotometer.</li>\r\n  <li>Some proteins do not absorb UV light efficiently.</li>\r\n  <li>Samples must be carefully prepared to avoid errors.</li>\r\n</ol>\r\n', '<ol>\r\n  <li>Provides precise and reproducible results.</li>\r\n  <li>Can detect very low concentrations of proteins.</li>\r\n  <li>Used in medicine, food science, and chemistry research.</li>\r\n</ol>\r\n', '<ol>\r\n  <li>Expensive equipment needed.</li>\r\n  <li>Requires specialized knowledge to interpret results.</li>\r\n  <li>Sample contamination can affect accuracy.</li>\r\n</ol>\r\n', '<ol>\r\n  <li>Absorbance vs. Concentration: Based on Beer-Lambert’s Law.</li>\r\n  <li>Wavelength Selection: Proteins absorb at 280 nm in the UV region.</li>\r\n</ol>\r\n', NULL, '2025-02-27 02:41:40'),
(15, 'Botony', 'Photosynthesis process', 'Photosynthesis and Light Intensity', 'This experiment aims to study the effect of light intensity on the rate of photosynthesis in plants. By measuring the oxygen production of a plant under different light conditions, students can determine how light intensity affects photosynthesis.', 'uploads/DALL·E 2025-03-09 21.00.48 - A scientific experiment setup showing a plant (Elodea) in a beaker filled with water, placed under an adjustable light source. A gas collection appara.webp', 'https://www.youtube.com/embed/D2Y_eEaxrYo?si=_zgZN9YsT-5n5BOA', 'Discovered by: Jan Ingenhousz (1779)\r\nContribution: Demonstrated that plants produce oxygen in the presence of light, proving the role of light in photosynthesis.', ' <ol>                     <li>Light source</li>                     <li>Plant (e.g., Elodea or aquatic plant)</li>                     <li>Gas collection apparatus</li>                     <li>Ruler or measuring tape</li>                     <li>Stopwatch</li>                 </ol>', ' <ol>                     <li>Demonstrates the process of photosynthesis</li>                     <li>Helps in understanding the factors affecting photosynthesis</li>                     <li>Simple and engaging experiment</li>                 </ol>', '  <ol>                     <li>Requires controlled light conditions</li>                     <li>Human error in measurement</li>                 </ol>', ' <ol>                     <li>Easy to perform with minimal equipment</li>                     <li>Provides hands-on experience with plant biology</li>                 </ol>', '  <ol>                     <li>Assumes ideal conditions for photosynthesis</li>                     <li>Errors may occur due to variations in light intensity</li>                 </ol>', '', NULL, '2025-03-09 15:38:40'),
(16, 'Botony', '6', 'Effect of Soil pH on Plant Growth', 'This experiment aims to study the effect of different soil pH levels on plant growth. By growing plants in soils with varying pH levels, students can observe the impact of soil pH on plant health and growth rate.', 'uploads/DALL·E 2025-03-09 21.41.55 - A laboratory experiment setup showing multiple potted plants growing in different soil samples with varying pH levels. A scientist is measuring plant .webp', 'https://www.youtube.com/embed/MkgdGdyJYac?si=-52q8I6FIxPeKuOn', 'Key Contributor: Robert Warington (1892)\r\nContribution: Studied the impact of soil pH and nutrient availability on plant growth, contributing to modern soil chemistry.', '   <ol>             <li>Soil samples with different pH levels</li>             <li>Plant seeds (e.g., beans or other fast-growing plants)</li>             <li>Pots or containers</li>             <li>pH meter or pH test kit</li>             <li>Ruler or measuring tape</li>         </ol>', ' <ol>             <li>Demonstrates the importance of soil pH in plant growth</li>             <li>Helps in understanding the factors affecting plant health</li>             <li>Simple and straightforward experiment</li>         </ol>', '    <ol>             <li>Requires accurate pH measurement</li>             <li>Human error in planting and measurement</li>         </ol>', ' <ol>             <li>Provides practical experience with soil science</li>             <li>Engaging and hands-on experiment</li>         </ol>', '  <ol>             <li>Assumes uniform soil conditions</li>             <li>Errors may occur due to variations in soil pH</li>         </ol>', '   <ol>\r\n            <li><strong>pH Meter:</strong> Measures the pH level of the soil</li>\r\n            <li><strong>Ruler:</strong> Measures the growth of plants</li>\r\n            <li><strong>Pots:</strong> Contain the soil and plants</li>\r\n        </ol>', NULL, '2025-03-09 16:19:51'),
(17, 'Botony', '6', 'Transpiration Rate in Different Plant Species', 'This experiment aims to compare the transpiration rates of different plant species by measuring water loss through evaporation. By placing plants in controlled environments, students can determine the rate of transpiration for each species.', 'uploads/DALL·E 2025-03-09 21.52.11 - A scientific experiment setup comparing the transpiration rates of different plant species. Several potted plants, including a fern, a cactus, and a b.webp', 'https://www.youtube.com/embed/DfO65MGQTsU?si=B-z_PkMwz4k4RU8O', 'Discovered by: Stephen Hales (1727)\r\nContribution: First measured plant transpiration and water movement, laying the foundation for plant physiology.\r\n', ' <ol>             <li>Plant species (e.g., fern, cactus, bean plant)</li>             <li>Potometer or other water loss measurement method</li>             <li>Controlled environment (e.g., greenhouse or lab)</li>             <li>Ruler or measuring tape</li>         </ol>', ' <ol>             <li>Demonstrates the process of transpiration</li>             <li>Helps in understanding water loss in plants</li>             <li>Simple and engaging experiment</li>         </ol>', '<ol>             <li>Requires controlled environmental conditions</li>             <li>Human error in measurement</li>         </ol>', ' <ol>             <li>Easy to perform with minimal equipment</li>             <li>Provides hands-on experience with plant physiology</li>         </ol>', ' <ol>             <li>Assumes uniform environmental conditions</li>             <li>Errors may occur due to variations in plant species</li>         </ol>', ' <ol>\r\n            <li><strong>Potometer:</strong> Measures water loss through transpiration</li>\r\n            <li><strong>Ruler:</strong> Measures the growth of plants</li>\r\n            <li><strong>Controlled Environment:</strong> Ensures consistent conditions</li>\r\n        </ol>', NULL, '2025-03-09 16:26:54'),
(18, 'Zoology', '7', 'Observation of Animal Behavior', 'This experiment aims to observe and record the behavior of different animals in their natural habitat or a controlled environment. By systematically recording their activities, students can gain insights into animal behavior patterns and social interactions.', 'uploads/DALL·E 2025-03-09 22.13.22 - A scientist observing animal behavior in a natural habitat. The scientist is using binoculars to watch animals such as birds, deer, or small mammals i.webp', 'https://www.youtube.com/embed/EyyDq19Mi3A?si=F54hXQ3xCLUpwxiu', 'Inventor: Konrad Lorenz (1903–1989)\r\nContribution: Konrad Lorenz, an Austrian zoologist and ethologist, is considered one of the pioneers of animal behavior studies. He introduced the concept of imprinting in animals and laid the foundation for modern ethology.', '   <ol>                     <li>Observation sheets or behavior recording software</li>                     <li>Binoculars (for distant observation)</li>                     <li>Camera (optional, for recording behavior)</li>                     <li>Notebook or tablet (for taking notes)</li>                 </ol>', '<ol>                     <li>Provides hands-on experience with animal behavior</li>                     <li>Helps in understanding social interactions and patterns</li>                     <li>Engaging and informative experiment</li>                 </ol>', '  <ol>                     <li>Requires patience and careful observation</li>                     <li>Human presence may affect animal behavior</li>                 </ol>', '  <ol>                     <li>Easy to perform with minimal equipment</li>                     <li>Enhances understanding of animal behavior</li>                 </ol>', '<ol>                     <li>Assumes consistent behavior in observed animals</li>                     <li>Errors may occur due to observer bias</li>                 </ol>', ' <ol>\r\n                    <li>Observation Sheets: Record behavior systematically</li>\r\n                    <li>Binoculars: Aid in observing animals from a distance</li>\r\n                    <li>Camera: Optionally records behavior for detailed analysis</li>\r\n                </ol>', NULL, '2025-03-09 16:51:39'),
(19, 'Zoology', '7', 'Dissection of a Frog', 'This experiment aims to explore the internal anatomy of a frog by performing a dissection. By examining the major organs and systems, students can learn about the structure and function of various body parts.', 'uploads/images.jfif', 'https://www.youtube.com/embed/9Y8Ysek4Vac?si=BzTf1XDFWPf09I0E', 'Inventor: Galen (129–216 AD) and Andreas Vesalius (1514–1564)\r\nContribution: The practice of dissection dates back to ancient times. Galen, a Roman physician, performed early dissections on animals to study anatomy. Later, Andreas Vesalius, a Renaissance anatomist, made significant advancements in human and animal dissections, establishing modern anatomy.', ' <ol>             <li>Soil samples with different pH levels.</li>             <li>Plant seeds (e.g., beans or other fast-growing plants).</li>             <li>Pots or containers.</li>             <li>pH meter or pH test kit.</li>             <li>Ruler or measuring tape.</li>         </ol>', ' <ol>             <li>Demonstrates the importance of soil pH in plant growth.</li>             <li>Helps in understanding the factors affecting plant health.</li>             <li>Simple and straightforward experiment.</li>         </ol>', ' <ol>             <li>Requires accurate pH measurement.</li>             <li>Human error in planting and measurement.</li>         </ol>', ' <ol>             <li>Provides practical experience with soil science.</li>             <li>Engaging and hands-on experiment.</li>         </ol>', ' <ol>             <li>Assumes uniform soil conditions.</li>             <li>Errors may occur due to variations in soil pH.</li>         </ol>', ' <ol>\r\n            <li><strong>pH Meter:</strong> Should be calibrated for accurate pH measurement.</li>\r\n            <li><strong>Ruler:</strong> Should be used consistently to measure plant growth.</li>\r\n        </ol>', NULL, '2025-03-09 17:01:29'),
(20, 'Zoology', '7', ' Study of Invertebrate Diversity', '  <ol>\r\n            <li>This experiment aims to study the diversity of invertebrates in a specific habitat.</li>\r\n            <li>By collecting and identifying different invertebrate species, students can learn about their variety and ecological roles.</li>\r\n        </ol>', 'uploads/DALL·E 2025-03-09 22.33.44 - A scientist studying invertebrate diversity in a natural environment. The scientist is using a magnifying glass and identification keys to examine col.webp', 'https://www.youtube.com/embed/TtWNlpxcyis?si=fTXD1Zu3Wjtg-bQO', 'Inventor: Jean-Baptiste Lamarck (1744–1829) and Carl Linnaeus (1707–1778)\r\nContribution: Carl Linnaeus developed the binomial nomenclature system, classifying invertebrates scientifically. Jean-Baptiste Lamarck made extensive studies on invertebrate diversity and introduced early evolutionary ideas about their adaptation.', ' <ol>             <li>Pitfall traps.</li>             <li>Sweep nets.</li>             <li>Collection jars.</li>             <li>Identification keys or charts.</li>             <li>Notebook or tablet (for recording data).</li>         </ol>', '<ol>             <li>Provides hands-on experience with biodiversity.</li>             <li>Helps in understanding the ecological roles of invertebrates.</li>             <li>Simple and engaging experiment.</li>         </ol>', ' <ol>             <li>Requires careful handling of specimens.</li>             <li>Human presence may affect invertebrate behavior.</li>         </ol>', '<ol>             <li>Easy to perform with minimal equipment.</li>             <li>Enhances understanding of invertebrate diversity.</li>         </ol>', ' <ol>             <li>Assumes accurate identification of species.</li>             <li>Errors may occur due to variations in collection methods.</li>         </ol>', '  <ol>\r\n            <li><strong>Pitfall Traps:</strong> Should be properly set up to avoid harm to collected invertebrates.</li>\r\n            <li><strong>Identification Keys:</strong> Should be accurate and easy to use for effective identification.</li>\r\n        </ol>', NULL, '2025-03-09 17:10:51'),
(21, 'Environmental Science', '8', 'Water Purification using Natural Filters', 'This experiment demonstrates how natural materials like sand, charcoal, and gravel can act as effective water filters. It highlights the importance of simple, cost-effective purification methods for areas with limited access to clean drinking water. By using easily available resources, this method provides a practical way to remove impurities and improve water quality.', 'uploads/NvoJ1jk7aceqKEynXsKzmahaS2CfD2WaK-jn4juQHIw.webp', 'https://www.youtube.com/embed/froQFWyOm0Q?si=fYUDWF5VVbfo6yc_', '', '<li><strong>Materials Required:</strong> Sand, gravel, charcoal, cotton cloth, plastic bottle, contaminated water.</li>             <li><strong>Procedure:</strong>', '<ul>                     <li>Provides an affordable and accessible method for water purification.</li>                     <li>Removes sediments, odors, and some chemical contaminants.</li>                     <li>Uses natural materials, making it eco-friendly.</li>                 </ul>', ' <ul>                     <li>Does not remove all bacteria and viruses effectively.</li>                     <li>Requires frequent cleaning and maintenance.</li>                     <li>Filtration speed is slow, limiting large-scale use.</li>                 </ul>', '  <li><strong>Pros:</strong> Low-cost, easy to implement, sustainable solution.</li>', '<li><strong>Cons:</strong> Limited purification capacity, requires additional boiling or chemical treatment for complete purification.</li>', ' <ul>\r\n                    <li><strong>Sand and Gravel:</strong> Remove large and medium-sized particles from the water.</li>\r\n                    <li><strong>Activated Charcoal:</strong> Absorbs harmful chemicals and odors, improving water purity.</li>\r\n                    <li><strong>Cotton Cloth:</strong> Acts as a preliminary filter to trap larger debris.</li>\r\n                </ul>', NULL, '2025-03-10 02:01:45'),
(22, 'Environmental Science', '8', 'Air Quality Monitoring using Simple Sensors', 'This experiment involves monitoring air quality using the MQ-135 gas sensor and an Arduino board. The sensor detects harmful gases such as CO₂, NH₃, and benzene, providing real-time data on air pollution levels. The experiment aims to highlight the significance of air quality monitoring in urban and industrial areas.', 'uploads/DIY-Arduino-Air-Quality-Monitor-Circuit-Diagram-How-It-Works.png', 'https://www.youtube.com/embed/70kswgyW8vs?si=R-P6U0VbjRBYi1mP', 'Mikhael Semenovich Tswett (1865–1919) – Developed early gas detection techniques related to air monitoring.\r\nMQ Sensor Series (including MQ-135): Created by Hanwei Electronics (a Chinese company) to detect gases like CO₂ and NH₃.\r\nArduino (2005, Italy): Developed by Massimo Banzi, David Cuartielles, and others to provide open-source electronics for projects like air monitoring.', '<li>Arduino board, MQ-135 air quality sensor, jumper wires, breadboard, laptop with Arduino IDE.</li>', '<ul>                     <li>Provides real-time data on air pollution levels.</li>                     <li>Helps identify pollution sources and trends.</li>                     <li>Low-cost and easy to set up with basic electronics knowledge.</li>                 </ul>', ' <ul>                     <li>Accuracy may be affected by temperature and humidity.</li>                     <li>Requires calibration for precise readings.</li>                     <li>Limited detection range compared to professional air quality monitors.</li>                 </ul>', ' <li><strong>Pros:</strong> Cost-effective, simple to implement, provides useful environmental data.</li>', '<li><strong>Cons:</strong> Not highly precise, needs frequent calibration, does not detect all air pollutants.</li>', ' <ul>\r\n                    <li><strong>MQ-135 Sensor:</strong> Detects air pollutants like ammonia, benzene, and carbon dioxide.</li>\r\n                    <li><strong>Arduino Board:</strong> Processes sensor data and sends it to a display or serial monitor.</li>\r\n                    <li><strong>Jumper Wires and Breadboard:</strong> Used for easy circuit connections.</li>\r\n                </ul>', NULL, '2025-03-10 02:09:05'),
(23, 'Environmental Science', '8', 'Measures soil moisture levels using electronic sensors to optimize irrigation and prevent overwatering', '<li>Measures soil moisture levels using electronic sensors to optimize irrigation and prevent overwatering.</li>', 'uploads/soil-moisture-sensor.webp', 'https://www.youtube.com/embed/YCMvnoFqgb8?si=WCpy0GdrtHuvqLIJ', 'John Bose (1860s), Agricultural Research Service (ARS, USDA)', ' <ol>                     <li>Soil moisture sensor (e.g., FC-28)</li>                     <li>Arduino board (or any microcontroller)</li>                     <li>Jumper wires</li>                     <li>Breadboard</li>                     <li>Power supply (e.g., 9V battery or USB)</li>                 </ol>', ' <ol>                     <li>Helps in efficient water usage in farming</li>                     <li>Prevents overwatering and underwatering of plants</li>                     <li>Useful for precision agriculture and smart irrigation systems</li>                     <li>Low-cost and easy-to-use technology</li>                 </ol>', ' <ol>                     <li>Sensor degradation over time due to soil exposure</li>                     <li>Requires periodic calibration for accuracy</li>                     <li>Sensitive to soil type and composition</li>                 </ol>', ' <ol>                             <li>Enables automated watering systems</li>                             <li>Helps conserve water by avoiding unnecessary irrigation</li>                             <li>Simple and cost-effective for small-scale agricultural use</li>                         </ol>', ' <ol>                             <li>May not work accurately in soil with high salinity</li>                             <li>Sensor electrodes corrode over time</li>                             <li>Limited accuracy without proper calibration</li>                         </ol>', '<li>The soil moisture sensor detects water content by measuring electrical resistance or capacitance.</li>\r\n            ', NULL, '2025-03-10 02:19:26'),
(24, 'Environmental Science', '9', 'Renewable Energy from Wind using Mini Wind Turbines', 'Renewable energy from wind is harnessed using wind turbines that convert the kinetic energy of moving air into mechanical energy and then into electricity. This experiment demonstrates how a mini wind turbine can generate electricity when exposed to wind or a simulated airflow (such as from a fan). The generated electricity can power small devices like LEDs, showcasing the practical application of wind power as a renewable energy source.', 'uploads/wind-03-00024-g003.webp', 'https://www.youtube.com/embed/oz1BzQjw0GM?si=tWLixn87HZfZ82Qx', '', ' <ol>                     <li>Mini wind turbine (or DIY with DC motor and blades)</li>                     <li>Multimeter to measure voltage and current</li>                     <li>Wires and connectors</li>                     <li>LED light (to demonstrate power output)</li>                     <li>Small fan (to simulate wind)</li>                 </ol>', ' <ol>                     <li>Demonstrates clean and renewable energy production</li>                     <li>Helps understand wind power principles</li>                     <li>Encourages sustainable energy solutions</li>                     <li>Cost-effective and practical for small-scale applications</li>                 </ol>', '  <ol>                     <li>Requires consistent wind flow for efficiency</li>                     <li>Small-scale turbines generate limited power</li>                     <li>Efficiency varies based on blade design and wind speed</li>                 </ol>', '<ol>                             <li>Utilizes renewable energy, reducing carbon footprint</li>                             <li>Encourages the development of sustainable energy solutions</li>                             <li>Easy to demonstrate the conversion of kinetic energy into electrical energy</li>                         </ol>', '<ol>                             <li>Not effective in low-wind areas</li>                             <li>Blade design and wind speed impact efficiency</li>                             <li>Small-scale models do not generate enough power for practical applications</li>                         </ol>', 'A wind turbine converts kinetic energy from wind into electrical energy using a generator', NULL, '2025-03-10 02:25:29'),
(25, 'Environmental Science', '', 'Solar Energy Generation using Photovoltaic Cells', 'This experiment demonstrates how photovoltaic (PV) cells convert sunlight into electrical energy through the photovoltaic effect. The solar panel consists of semiconductor materials (usually silicon) that absorb photons from sunlight. When photons strike the surface, they excite electrons, creating an electric current. This direct current (DC) can be used to power small devices or stored in batteries.\r\n\r\nThe efficiency of solar panels depends on several factors, such as sunlight intensity, panel orientation, temperature, and shading effects. In this experiment, we measure the output voltage and current of a solar panel under different lighting conditions (direct sunlight, artificial light, or shade) to understand its efficiency.\r\n\r\nAdditionally, the experiment highlights real-world applications such as solar-powered streetlights, rooftop solar installations, solar water heaters, and large-scale solar farms that contribute to sustainable energy solutions.', 'uploads/Working-on-solar-energy-D-Modeling-Of-PV-Panel-Solar-Cell-Photovoltaic-Cell-It.png', 'https://youtu.be/Yxt72aDjFgY?si=V922bXUzuOU3GxqI', '<li><strong>Inventor:</strong> Edmond Becquerel (Photovoltaic Effect), Russell Ohl (Silicon Solar Cell)</li>', '<ol>           <li>Solar Panel (PV Cell)</li>           <li>Multimeter</li>           <li>LED Light/Battery</li>           <li>Wires and Connectors</li>           <li>Adjustable Light Source (if indoors)</li>         </ol>', ' <ol>           <li>Unlimited Energy Source</li>           <li>No Pollution</li>           <li>Low Maintenance</li>           <li>Scalable Technology</li>         </ol>', '<ol>           <li>Sunlight Dependency</li>           <li>Expensive Initial Cost</li>           <li>Efficiency Variations</li>         </ol>', '  <ol>               <li>Sustainable & Eco-Friendly</li>               <li>Reliable in Sunny Areas</li>               <li>Low Operational Costs</li>             </ol>', ' <ol>               <li>Weather Dependency</li>               <li>Energy Storage Needed</li>               <li>Space Requirement</li>             </ol>', '<ol>    <li><strong>Solar Panel (Photovoltaic Cell):</strong> Converts sunlight into electricity using the photovoltaic effect. Made of silicon semiconductors.</li>    <li><strong>Multimeter:</strong> Measures voltage, current, and resistance of the solar panel output to analyze efficiency.</li>    <li><strong>Battery (Optional):</strong> Stores electricity for later use. Common types include Lithium-ion, Lead-acid, and Nickel-Cadmium (NiCd).</li>    <li><strong>Load (LED Bulb / Small Fan):</strong> Demonstrates real-world applications of solar power.</li>    <li><strong>Connecting Wires:</strong> Transfers electricity between components while ensuring proper insulation.</li>    <li><strong>Variable Light Source (Optional):</strong> A lamp or flashlight to simulate different light intensities for testing.</li></ol>', NULL, '2025-03-10 02:34:33'),
(26, 'Environmental Science', '9', 'Hydroelectric Power Generation using a Mini Water Turbine', 'This experiment illustrates how kinetic energy from flowing water can be converted into electrical energy using a miniature hydroelectric turbine. The turbine consists of blades connected to a rotating shaft, which is linked to a generator. When water flows over the blades, it applies force, making the turbine rotate. This rotation drives a generator, producing electrical power.\r\n\r\nIn real-world applications, dams and hydropower plants use similar principles on a larger scale to supply electricity to cities and industries. The efficiency of the turbine depends on factors like water flow rate, height of water drop (hydraulic head), and turbine design.\r\n\r\nThis experiment helps in understanding the significance of hydroelectric power as a renewable, clean, and consistent energy source that does not rely on fossil fuels. However, it also introduces discussions on environmental impacts, such as the effects on aquatic ecosystems and potential disruptions to natural water flow.\r\n', 'uploads/energies-14-07961-g001.webp', 'https://youtu.be/KEsrAmM07fs?si=Nz23QCLJdkmF3RFo', 'James Francis (Modern Water Turbine), Lester Pelton (Pelton Wheel)', ' <ol>           <li>Mini Water Turbine (Pelton Wheel or Propeller Type)</li>           <li>Water Source (Flowing Water or Container with Poured Water)</li>           <li>Multimeter</li>           <li>LED Light/Battery</li>           <li>Pipes or Funnel</li>         </ol>', ' <ol>           <li>Reliable Energy Source</li>           <li>No Fuel Required</li>           <li>High Energy Conversion Efficiency</li>         </ol>', '<ol>           <li>Requires Water Flow</li>           <li>Scaling Issues</li>           <li>Environmental Impact</li>         </ol>', '<ol>               <li>Constant Energy Generation</li>               <li>No Greenhouse Gas Emissions</li>               <li>Efficient Power Production</li>             </ol>', ' <ol>               <li>Water Dependency</li>               <li>Possible Environmental Disruption</li>               <li>Maintenance Issues</li>             </ol>', '<ol>\r\n    <li><strong>Mini Water Turbine (Pelton/Kaplan Wheel):</strong> Converts kinetic energy of flowing water into rotational energy.</li>\r\n    <li><strong>Generator (DC/AC Alternator):</strong> Converts rotational energy into electricity using electromagnetic induction.</li>\r\n    <li><strong>Water Source / Pump:</strong> Provides flowing water to turn the turbine. Can be a water tank or natural source.</li>\r\n    <li><strong>Multimeter:</strong> Measures output voltage, current, and resistance to evaluate efficiency.</li>\r\n    <li><strong>Load (LED Bulb / Small Fan / Battery):</strong> Utilizes generated electricity for a visible demonstration.</li>\r\n    <li><strong>Connecting Wires & Switches:</strong> Transfers electricity between the generator and the load.</li>\r\n    <li><strong>Water Flow Regulator (Valve/Pipe):</strong> Controls the speed and pressure of water entering the turbine.</li>\r\n</ol>\r\n', NULL, '2025-03-10 09:03:34');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `experiment_id` int(11) NOT NULL,
  `rating` int(11) DEFAULT NULL CHECK (`rating` between 1 and 5),
  `comment` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `user_id`, `experiment_id`, `rating`, `comment`, `created_at`) VALUES
(1, 1, 1, 4, 'test', '2025-03-28 00:36:22'),
(2, 1, 1, 3, 'test', '2025-03-28 00:52:57'),
(3, 1, 13, 2, 'test', '2025-03-28 00:53:42');

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `SUBCAT_ID` int(12) NOT NULL,
  `CATEGORY` varchar(100) NOT NULL,
  `SUBCATEGORY` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`SUBCAT_ID`, `CATEGORY`, `SUBCATEGORY`) VALUES
(4, 'Physics', 'Gravitation'),
(5, 'chemistry', 'Analytical Chemistry'),
(6, 'Botony', 'Photosynthesis process'),
(7, 'Zoology', 'Anatomy and physiological functions '),
(8, 'Environmental Science', 'Environmental Monitoring & Sustainability'),
(9, 'Environmental Science', 'Renewable energy');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_type` enum('CBSE','SSLC','HSC','UG','PG') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `mobile`, `email`, `password`, `created_at`, `user_type`) VALUES
(1, 'Test', '9095630190', 'ak@gmail.com', '1234', '2025-02-21 08:01:33', 'CBSE'),
(2, 'srithaksha', '8610987286', 'kooksha07@gamil.com', '1234', '2025-03-21 10:46:55', 'CBSE');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `experiment_id` int(11) NOT NULL,
  `added_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `user_id`, `experiment_id`, `added_at`) VALUES
(1, 1, 10, '2025-03-28 00:39:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ADMIN_ID`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`CATEGORY_ID`);

--
-- Indexes for table `experiments`
--
ALTER TABLE `experiments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`SUBCAT_ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `ADMIN_ID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `CATEGORY_ID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `experiments`
--
ALTER TABLE `experiments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `SUBCAT_ID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
