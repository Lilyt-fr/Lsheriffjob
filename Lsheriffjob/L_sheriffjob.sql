INSERT INTO `addon_account` (name, label, shared) VALUES
	('society_sheriff', 'sheriff', 1)
;

INSERT INTO `datastore` (name, label, shared) VALUES
	('society_sheriff', 'sheriff', 1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
	('society_sheriff', 'sheriff', 1)
;

INSERT INTO `jobs` (name, label) VALUES
	('sheriff', 'sheriff')
;

INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
(NULL, 'sheriff', 0, 'recruit', 'Cadet', 100, '{}', '{}'),
(NULL, 'sheriff', 1, 'officer', 'Officier', 150, '{}', '{}'),
(NULL, 'sheriff', 2, 'sergeant', 'Sergent', 170, '{}', '{}'),
(NULL, 'sheriff', 3, 'sergeant', 'Sergent-Formateur', 170, '{}', '{}'),
(NULL, 'sheriff', 4, 'sergeant', 'Sergent-Chef', 190, '{}', '{}'),
(NULL, 'sheriff', 5, 'lieutenant', 'Lieutenant', 200, '{}', '{}'),
(NULL, 'sheriff', 6, 'lieutenant', 'Capitaine', 250, '{}', '{}'),
(NULL, 'sheriff', 7, 'boss', 'Commandant', 400, '{}', '{}');

CREATE TABLE `adr` (
  `id` int(11) NOT NULL,
  `author` text NOT NULL,
  `date` text NOT NULL,
  `firstname` text NOT NULL,
  `lastname` text NOT NULL,
  `reason` text NOT NULL,
  `dangerosity` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

ALTER TABLE `adr`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `adr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

CREATE TABLE `cj` (
  `id` int(11) NOT NULL,
  `author` text NOT NULL,
  `date` text NOT NULL,
  `firstname` text NOT NULL,
  `lastname` text NOT NULL,
  `reason` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

ALTER TABLE `cj`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `cj`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;
