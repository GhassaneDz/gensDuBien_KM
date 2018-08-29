
INSERT INTO `address` (`id`, `city`, `country`, `mainLine`, `optionalLine`, `postalCode`) VALUES
(1, 'Paris', 'France', '01 Rue Victor Hugo', NULL, '75018'),
(2, 'Paris', 'France', '02 Rue Molière', NULL, '75019'),
(3, 'Paris', 'France', '03 Rue de Rome', NULL, '75020'),
(4, 'Paris', 'France', '04 rue Alesia', NULL, '75020'),
(5, 'Paris', 'France ', ' rue de la Sorbonne ', NULL, '75018'),
(6, 'Paris', 'France', '06 rue jessieu', NULL, '75010'),
(7, 'Paris', 'France', '07 rue Lisbonne', NULL, '75019');



INSERT INTO `beneficiary` (`id`, `beneficiaryNumber`, `birthDate`, `firstname`, `lastname`, `memberFamilyNumber`, `tel`, `id_address`) VALUES
(1, '20180001', '1965-04-17', 'Mathilde', 'LILI', '4', '07220001', 3),
(2, '20180002', '1965-02-17', 'Sarah', 'FIFI', '5', '07123456', 1);



INSERT INTO `event` (`id`, `eventDate`, `eventNumber`, `type`, `id_volunteer`) VALUES
(1, '2018-09-01', '20180235', 'Collecte', 2),
(2, '2018-09-13', '20180236', 'Distribution', 1);



INSERT INTO `product` (`id`, `expirationDate`, `name`, `numberLots`, `productNumber`, `receptionDate`, `section`, `id_beneficiary`) VALUES
(1, '2018-08-20', 'riz', 2, '3', '2018-07-20', 'pates ', 2),
(2, '2018-08-01', 'orange', 2, '42', '2018-07-26', 'fruit', 1);



INSERT INTO `volunteer` (`id`, `birthDate`, `email`, `firstname`, `lastname`, `login`, `password`, `tel`, `volunteerNumber`, `address_id`) VALUES
(1, '1985-04-17', 'momo@gmail.com', 'Mohammed', 'MOMO', 'Mohammed', '$2a$10$9xRP44XK1dNTtzLBE5Ww6.UhoQ4WcEhyPc5xD9BpUTJbh9XJk6pnO', '06111111', '20180001', 5),
(2, '1975-02-17', 'fofo@gmail.com', 'Frederic', 'FOFO', 'Frederic', '$2a$10$EMPf5H1sI7uJIlkysBgiV.ZNJr.PohPbRJMqhgx7QkSpha7NQU.fi', '06222222', '20180002', 1);
