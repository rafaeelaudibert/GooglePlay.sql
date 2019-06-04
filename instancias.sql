-- Item insertion (we generate the UUID manually to properly insert the foreign_keys later) 
-- Items which will be Apps
INSERT INTO Item VALUES ('786f5057-d2b3-4785-8b12-28f8db97c4a1', 'WhatsApp Messenger', to_date('18-10-2010', 'DD-MM-YYYY'), NULL, false, NULL, 'Simples. Pessoal. Instantaneo.', 'app');
INSERT INTO Item VALUES ('17c7b274-ef54-4214-8458-dd474abdb46c', 'Snapchat', to_date('29-10-2012', 'DD-MM-YYYY'), NULL, false, NULL, 'Filtros e lentes para fotos e stories criativos.', 'app');
INSERT INTO Item VALUES ('ebc0098e-938d-4d46-b514-a98a38d62b94', 'The Room', to_date('05-04-2013', 'DD-MM-YYYY'), 3.99, false, NULL, 'A melhor experiência com quebra-cabeças.', 'app');
INSERT INTO Item VALUES ('cb6fb9a2-7c60-4187-a714-77dc79603171', 'The House of Da Vinci', to_date('25-08-2017', 'DD-MM-YYYY'), 16.99, true, 11.00, 'Entre em The House of Da Vinci, um novo e imperdível jogo de aventura com quebra-cabeças 3D.', 'app');
INSERT INTO Item VALUES ('4911d529-039d-45f8-aa67-d9445529ab33', 'Brawl Stars', to_date('25-04-2018', 'DD-MM-YYYY'), NULL, false, NULL, 'Batalhas agitadas multijogador dos mesmos criadores de Clash of Clans, Clash Royale e Boom Beach!', 'app');

-- Items which will be Movies
INSERT INTO Item VALUES ('dadee630-21f3-4feb-a30b-9156b6ddf5f2', 'A morte te dá parabéns 2', to_date('02-2019', 'MM-YYYY'), 42.90, false, 32.90, 'Acontece tudo de novo com Tree Gelbman, a sarcástica universitária que solucionou seu próprio assassinato, revivendo sua morte repetidamente.', 'movie');
INSERT INTO Item VALUES ('510d33f9-248f-412d-b09b-02b18e9750f5', 'A Mula', to_date('12-2018', 'MM-YYYY'), 60.90, false, NULL, 'Eastwood interpreta Earl Stone, um senhor de 80 anos que está falido, sozinho e enfrentando o fechamento de seu negócio quando recebe uma oferta de emprego cuja única responsabilidade é dirigir.', 'movie');
INSERT INTO Item VALUES ('06e68225-fbb3-47c5-9f76-48b818870c69', 'Como treinar o seu dragão 3', to_date('01-2019', 'MM-YYYY'), 42.90, false, NULL, 'Da DreamWorks Animation chega este surpreendente conto sobre amadurecer, encontrar coragem para enfrentar o desconhecido... e saber que nada nunca nos prepara para as perdas.', 'movie');
INSERT INTO Item VALUES ('aa268ae6-b8c8-49cc-aa90-f59a07822e0e', 'Aquaman', to_date('12-2018', 'MM-YYYY'), 39.90, false, NULL, 'Uma aventura cheia de ação que apresenta o vasto e extraordinário mundo subaquático dos sete mares, "Aquaman" conta a história da origem do meio-homem e meio-atlante Arthur Curry, e o leva na jornada da sua vida, que não apenas o forçará a encarar quem realmente é, mas também descobrir se é digno do que nasceu para ser: um rei.', 'movie');
INSERT INTO Item VALUES ('7d348c82-5226-49bb-8dda-8383c2d6a279', 'Vingadores: Guerra Infinita', to_date('04-2018', 'MM-YYYY'), 36.90, false, NULL, 'Thanos enfim chega à Terra, disposto a reunir as Joias do Infinito.', 'movie');

-- Items which will be Books
INSERT INTO Item VALUES ('cf323144-045e-42e1-acfb-97663575c32f', 'A Arte da Guerra de Sun Tzu', to_date('2009', 'YYYY'), 1.99, false, NULL, 'A Arte da Guerra foi escrito pelo grande general chinês Sun Tzu a mais de 2.500 anos.', 'book');
INSERT INTO Item VALUES ('ebff8ca1-8d1b-4946-bac4-b2193a6143d1', 'A Barraca do Beijo', to_date('12-06-2018', 'DD-MM-YYYY'), 17.45, true, 2.62, 'ELLE EVANS é o que toda garota quer ser: bonita e popular. Mas ela nunca foi beijada.', 'book');
INSERT INTO Item VALUES ('9b9cf827-8ae3-4d16-98d5-406d416815ac', 'O poder do Hábito', to_date('01-10-2012', 'DD-MM-YYYY'), 29.90, true, 14.95, 'Charles Duhigg, repórter investigativo do New York Times, mostra que a chave para o sucesso é entender como os hábitos funcionam - e como podemos transformá-los.', 'book');
INSERT INTO Item VALUES ('0c4ddaad-bece-4178-9223-4bd64de7bbbb', 'Insurgente', to_date('01-04-2013', 'DD-MM-YYYY'), 25.50, false, 24.22, 'Uma escolha pode te destruir Na Chicago futurista criada por Veronica Roth em Divergente, as facções estão desmoronando.', 'book');
INSERT INTO Item VALUES ('b93ae5d4-4d70-45d1-8368-ab40ac42cf67', 'A pŕoxima porta', to_date('13-09-2018', 'DD-MM-YYYY'), 0.99, false, NULL, 'Chloe sente que a vida está finalmente perfeita quando volta para sua cidade natal, em uma nova casa, com seu noivo. Sua carreira no FBI parece promissora, e seu casamento está por vir.', 'book');

-- Items which will be Albums
INSERT INTO Item VALUES ('3619aea0-6ff7-44f9-a346-e10666b36169', 'Trench', to_date('10-2018', 'MM-YYYY'), 42.99, false, NULL, 'Quinto álbum do duo norte-americano Twenty One Pilots.', 'album');
INSERT INTO Item VALUES ('80abca97-5772-4ff8-bb9d-31549907a225', 'Delta', to_date('16-09-2018', 'DD-MM-YYYY'), 23.90, false, NULL, '', 'album');
INSERT INTO Item VALUES ('fc38ed4f-4ca7-4681-8406-1869968117a2', 'Cleopatra', to_date('16-10-2016', 'DD-MM-YYYY'), 21.90, false, NULL, 'Aguardado álbum do The Lumineers, em que as músicas contam uma linda história.', 'album');
INSERT INTO Item VALUES ('19ac9daa-c187-49f5-a741-ca23d42b21ee', '?', to_date('16-03-2018', 'DD-MM-YYYY'), 21.99, false, NULL, 'Último álbum de XXXTENTACION :(', 'album');
INSERT INTO Item VALUES ('8fcda5a6-e6fe-47c5-9e86-2c731188df7f', 'My Head is an Animal', to_date('20-09-2011', 'DD-MM-YYYY'), 21.99, true, 13.99, '', 'album');

-- SELECT * from Item; 	-- Helper to display all Item instances
-- DELETE FROM Item; 	-- Helper to delete all Item instances

----
-- Attachment insertion 
INSERT INTO Attachment VALUES ('attachments/001.png', '786f5057-d2b3-4785-8b12-28f8db97c4a1', 'WhatsAppImage01', 'imagem', 'png');
INSERT INTO Attachment VALUES ('attachments/002.png', '786f5057-d2b3-4785-8b12-28f8db97c4a1', 'WhatsAppImage02', 'imagem', 'png');
INSERT INTO Attachment VALUES ('attachments/003.mp4', '786f5057-d2b3-4785-8b12-28f8db97c4a1', 'WhatsAppVideo01', 'video', 'mp4');
INSERT INTO Attachment VALUES ('attachments/004.jpg', 'cb6fb9a2-7c60-4187-a714-77dc79603171', 'HDVImage', 'imagem', 'jpg');
INSERT INTO Attachment VALUES ('attachments/005.png', '3619aea0-6ff7-44f9-a346-e10666b36169', 'AlbumImage01', 'imagem', 'png');

-- SELECT * from Attachment; 	-- Helper to display all Attachment instances
-- DELETE FROM Attachment; 	-- Helper to delete all Attachment instances

----
-- User insertion 
INSERT INTO "User" VALUES ('rbaudibert@inf.ufrgs.br', 'Rafael Baldasso Audibert', '146bab340544fbb8cb312f85693e6df151b08be92ada86c1f4cb85393c5ae40184684e914ccb0a7a99e0dc050d8314b8b543057c2e4572d8f878a81ecd24c72e', '11111111111', to_date('27-02-2000', 'DD-MM-YYYY'));
INSERT INTO "User" VALUES ('acpagnoncelli@inf.ufrgs.br', 'Ana Carolina Pagnoncelli', 'd6f360ab62d3ed9860f6556d3b84f78facc3dd0896c8e8e76261b1705552278a532bfed1973f50b8d48ac10de9202150add653120c99a16d2d379a8b219e43ff', '22222222222', to_date('27-02-2000', 'DD-MM-YYYY'));
INSERT INTO "User" VALUES ('kbecker@inf.ufrgs.br', 'Karin Becker', '0b047b85b4a788de2cb671de8572924337cf446b5ec91954f8666e887acab0fa93a104ac150538a72915f552306289ee6d09410c8a8ab872d5f71632d0ad39a6', '33333333333', to_date('01-01-1985', 'DD-MM-YYYY'));
INSERT INTO "User" VALUES ('olpcarvalho@inf.ufrgs.br', 'Olavo Luiz Pimentel de Carvalho', 'c61df0b0a5c45eaf86bf5ca5cfe2b8b253ea45ed284adb9c9f6044e6798545288c8538290be01b3167b13d80573100fd414bf48bfea415c5a82a8e8858ad1d56', '44444444444', to_date('29-04-1947', 'DD-MM-YYYY'));
INSERT INTO "User" VALUES ('prnfreire@inf.ufrgs.br', 'Paulo Reglus Neves Freire', 'c0405e733d368bffedcb392eef810e1b3e10479ecee270402e9f7068a2bdbddc8989925db1fae0a3c264a2d8246cadbaff0ea004aaf7610423dee20f3fc52db7', '55555555555', to_date('19-09-1921', 'DD-MM-YYYY'));
-- SELECT * from "User"; 	-- Helper to display all "User" instances
-- DELETE FROM "User"; 		-- Helper to delete all "User" instances

----
-- CreditCard insertion 
INSERT INTO CreditCard VALUES ('1111222233334444', 'rbaudibert@inf.ufrgs.br', 'Rafael Baldasso Audibert', to_date('08-2025', 'MM-YYYY'));
INSERT INTO CreditCard VALUES ('2222333344445555', 'rbaudibert@inf.ufrgs.br', 'Rafael Audibert', to_date('10-2020', 'MM-YYYY'));
INSERT INTO CreditCard VALUES ('3333444455556666', 'acpagnoncelli@inf.ufrgs.br', 'Ana Pagnoncelli', to_date('07-2019', 'MM-YYYY'));
INSERT INTO CreditCard VALUES ('4444555566667777', 'kbecker@inf.ufrgs.br', 'Karin Becker', to_date('12-2022', 'MM-YYYY'));
INSERT INTO CreditCard VALUES ('5555666677778888', 'prnfreire@inf.ufrgs.br', 'Paulo Reglus Neves Freire', to_date('01-2027', 'MM-YYYY'));
-- SELECT * from CreditCard; 	-- Helper to display all CreditCard instances
-- DELETE FROM CreditCard;	-- Helper to delete all CreditCard instances

----
-- WishList insertion 
INSERT INTO WishList VALUES ('rbaudibert@inf.ufrgs.br', '786f5057-d2b3-4785-8b12-28f8db97c4a1', to_date('31-05-2019', 'DD-MM-YYYY'));
INSERT INTO WishList VALUES ('rbaudibert@inf.ufrgs.br', '17c7b274-ef54-4214-8458-dd474abdb46c', to_date('28-05-2019', 'DD-MM-YYYY'));
INSERT INTO WishList VALUES ('rbaudibert@inf.ufrgs.br', 'cb6fb9a2-7c60-4187-a714-77dc79603171', to_date('30-05-2019', 'DD-MM-YYYY'));
INSERT INTO WishList VALUES ('acpagnoncelli@inf.ufrgs.br', '786f5057-d2b3-4785-8b12-28f8db97c4a1', to_date('31-05-2019', 'DD-MM-YYYY'));
INSERT INTO WishList VALUES ('acpagnoncelli@inf.ufrgs.br', '3619aea0-6ff7-44f9-a346-e10666b36169', to_date('31-05-2019', 'DD-MM-YYYY'));
-- SELECT * from WishList; 	-- Helper to display all WishList instances
-- DELETE FROM WishList;	-- Helper to delete all WishList instances

----
-- Review insertion 
INSERT INTO Review VALUES ('rbaudibert@inf.ufrgs.br', 'ebc0098e-938d-4d46-b514-a98a38d62b94', NULL, to_date('31-05-2019', 'DD-MM-YYYY'), 4);
INSERT INTO Review VALUES ('rbaudibert@inf.ufrgs.br', 'cf323144-045e-42e1-acfb-97663575c32f', 'Não gostei, não recomendo', to_date('28-05-2019', 'DD-MM-YYYY'), 2);
INSERT INTO Review VALUES ('acpagnoncelli@inf.ufrgs.br', 'cb6fb9a2-7c60-4187-a714-77dc79603171', 'Excelente jogo, vale totalmente a pena pagar por ele', to_date('30-05-2019', 'DD-MM-YYYY'), 5);
INSERT INTO Review VALUES ('acpagnoncelli@inf.ufrgs.br', '786f5057-d2b3-4785-8b12-28f8db97c4a1', NULL, to_date('31-05-2019', 'DD-MM-YYYY'), 5);
INSERT INTO Review VALUES ('acpagnoncelli@inf.ufrgs.br', '3619aea0-6ff7-44f9-a346-e10666b36169', NULL, to_date('31-05-2019', 'DD-MM-YYYY'), 3);
-- SELECT * from Review; 	-- Helper to display all Review instances
-- DELETE FROM Review;		-- Helper to delete all Review instances

----
-- Download insertion 
INSERT INTO Download VALUES ('rbaudibert@inf.ufrgs.br', '3619aea0-6ff7-44f9-a346-e10666b36169', '1111222233334444', to_date('22-12-2018', 'DD-MM-YYYY'), to_date('22-12-2018', 'DD-MM-YYYY'), true);
INSERT INTO Download VALUES ('rbaudibert@inf.ufrgs.br', 'cb6fb9a2-7c60-4187-a714-77dc79603171', '2222333344445555', to_date('22-01-2019', 'DD-MM-YYYY'), to_date('24-05-2019', 'DD-MM-YYYY'), true);
INSERT INTO Download VALUES ('acpagnoncelli@inf.ufrgs.br', 'cb6fb9a2-7c60-4187-a714-77dc79603171', '3333444455556666', to_date('15-06-2018', 'DD-MM-YYYY'), to_date('15-06-2018', 'DD-MM-YYYY'), false);
INSERT INTO Download VALUES ('acpagnoncelli@inf.ufrgs.br', '786f5057-d2b3-4785-8b12-28f8db97c4a1', '3333444455556666', to_date('17-10-2018', 'DD-MM-YYYY'), to_date('22-12-2018', 'DD-MM-YYYY'), false);
INSERT INTO Download VALUES ('kbecker@inf.ufrgs.br', '3619aea0-6ff7-44f9-a346-e10666b36169', '4444555566667777', to_date('22-05-2019', 'DD-MM-YYYY'), to_date('22-05-2019', 'DD-MM-YYYY'), true);
-- SELECT * from Download; 	-- Helper to display all Download instances
-- DELETE FROM Download;	-- Helper to delete all Download instances

----
-- Language insertion 
INSERT INTO Language VALUES ('Português');
INSERT INTO Language VALUES ('Inglês');
INSERT INTO Language VALUES ('Espanhol');
INSERT INTO Language VALUES ('Alemão');
INSERT INTO Language VALUES ('Italiano');
INSERT INTO Language VALUES ('Francês');
INSERT INTO Language VALUES ('Russo');
INSERT INTO Language VALUES ('Japonês');
INSERT INTO Language VALUES ('Islandês');
INSERT INTO Language VALUES ('Norueguês');
INSERT INTO Language VALUES ('Sueco');
INSERT INTO Language VALUES ('Coreano');
-- SELECT * from Language; 	-- Helper to display all Language instances
-- DELETE FROM Language;	-- Helper to delete all Language instances

----
-- Developer insertion 
INSERT INTO Developer VALUES ('android@support.whatsapp.com', 'WhatsApp Inc.', '1601 Willow Road Menlo Park, CA 94025', '513ddfc7dfaee9352b3d4be6bf25d4f09c9fed36c3ff5b5dcaf4f022658fa0f34e03f5b8b12b29e058587571eae74072705c900ce24a50afe0790db08353f5d6');
INSERT INTO Developer VALUES ('snapchat@snap.com', 'Snap Inc', '63 Market St. Venice CA, 90291', '2fc09ba0e915e41a19a22e479714ea653a867b35c1b61dfcabbc3a1a3e401cd8252fa77daed87a97e08b0170370fadf049e6b19fda03315b412ec6eaf529f769');
INSERT INTO Developer VALUES ('info@fireproofgames.com', 'Fireproof Games', 'Hays House Millmead, Guildford GU2 4HJ, United Kingdom', '1c4c6176fe05d94bc9f21d835e286228f533f1387832a69863f3dfb0feef209ea4c703996a26c7a604af22ba3d55bf2c9961a66de99d286cc5392ded06b501f7');
INSERT INTO Developer VALUES ('davinci@bluebraingames.com', 'Blue Brain Games s.r.o', 'Sabinovska 8 821 02, Bratislava, Slovak Republic', '9a8303a7da396a114932c119f896daa2d6446faef48142e13f77ff0533ba571fc44b161a1ad1eec166daed5e816e8eed2a0f4f7d47b1342c0e05cfdded45de60');
INSERT INTO Developer VALUES ('gp-info@supercell.com', 'Supercell', 'Itamerenkatu 11-13, 00180, Helsinki, Finland', 'ed9394b00015aeb5830b28a1266c679f948d6c1f895bd8992387b265a676e422833493760471c19496063d5cec776393da400b20dfed6e77c4299620d0d73be3');
-- SELECT * from Developer; 	-- Helper to display all Developer instances
-- DELETE FROM Developer; 	-- Helper to delete all Developer instances

----
-- Artist insertion 
INSERT INTO Artist VALUES ('Twenty One Pilots');
INSERT INTO Artist VALUES ('Mumford & Sons');
INSERT INTO Artist VALUES ('The Lumineers');
INSERT INTO Artist VALUES ('XXXTENTACION');
INSERT INTO Artist VALUES ('Of Monsters and Men');
-- SELECT * from Artist; 	-- Helper to display all Artist instances
-- DELETE FROM Artist;		-- Helper to delete all Artist instances

----
-- Author insertion 
INSERT INTO Author VALUES ('Sun Tzu');
INSERT INTO Author VALUES ('Beth Reekles');
INSERT INTO Author VALUES ('Charles Duhigg');
INSERT INTO Author VALUES ('Veronica Roth');
INSERT INTO Author VALUES ('Blake Pierce');
-- SELECT * from Author; 	-- Helper to display all Author instances
-- DELETE FROM Author;		-- Helper to delete all Author instances

----
-- "Cast" insertion 
INSERT INTO "Cast" VALUES ('Jessica Rothe');
INSERT INTO "Cast" VALUES ('Steve Zissis');
INSERT INTO "Cast" VALUES ('Cristopher Landon');
INSERT INTO "Cast" VALUES ('Scott Lodbel');
INSERT INTO "Cast" VALUES ('Alison Eastwood');
INSERT INTO "Cast" VALUES ('Nick Schenk');
INSERT INTO "Cast" VALUES ('America Ferrera');
INSERT INTO "Cast" VALUES ('Dean DeBlois');
INSERT INTO "Cast" VALUES ('Jason Momoa');
INSERT INTO "Cast" VALUES ('Will Beal');
INSERT INTO "Cast" VALUES ('Joe Russo');
-- SELECT * from "Cast"; 	-- Helper to display all "Cast" instances
-- DELETE FROM "Cast";		-- Helper to delete all "Cast" instances

----
-- Category insertion 
INSERT INTO Category VALUES ('Arte e Design', 'app');
INSERT INTO Category VALUES ('Carro e Veículos', 'app');
INSERT INTO Category VALUES ('Beleza', 'app');
INSERT INTO Category VALUES ('Esportes', 'app');
INSERT INTO Category VALUES ('Negócio', 'app');
INSERT INTO Category VALUES ('Tempo', 'app');
INSERT INTO Category VALUES ('Comunicação', 'app');
INSERT INTO Category VALUES ('Namoro', 'app');
INSERT INTO Category VALUES ('Educação', 'app');
INSERT INTO Category VALUES ('Entretenimento', 'app');
INSERT INTO Category VALUES ('Eventos', 'app');
INSERT INTO Category VALUES ('Família', 'app');
INSERT INTO Category VALUES ('Finanças', 'app');
INSERT INTO Category VALUES ('Social', 'app');
INSERT INTO Category VALUES ('Viagens', 'app');
INSERT INTO Category VALUES ('Saúde e Ginástica', 'app');
INSERT INTO Category VALUES ('Mapas e Navegação', 'app');
INSERT INTO Category VALUES ('Fotografia', 'app');
INSERT INTO Category VALUES ('Ação e Aventura', 'filme');
INSERT INTO Category VALUES ('Animação', 'filme');
INSERT INTO Category VALUES ('Comédia', 'filme');
INSERT INTO Category VALUES ('Crime', 'filme');
INSERT INTO Category VALUES ('Documentário', 'filme');
INSERT INTO Category VALUES ('Drama', 'filme');
INSERT INTO Category VALUES ('Família', 'filme');
INSERT INTO Category VALUES ('Terror', 'filme');
INSERT INTO Category VALUES ('Mistério', 'filme');
INSERT INTO Category VALUES ('Suspense', 'filme');
INSERT INTO Category VALUES ('Ficção Científica', 'filme');
INSERT INTO Category VALUES ('Fantasia', 'filme');
INSERT INTO Category VALUES ('Esportes', 'filme');
INSERT INTO Category VALUES ('Arte', 'livro');
INSERT INTO Category VALUES ('Terror', 'livro');
INSERT INTO Category VALUES ('Biografias', 'livro');
INSERT INTO Category VALUES ('Finanças', 'livro');
INSERT INTO Category VALUES ('Cozinha', 'livro');
INSERT INTO Category VALUES ('Educação', 'livro');
INSERT INTO Category VALUES ('Ficção', 'livro');
INSERT INTO Category VALUES ('História', 'livro');
INSERT INTO Category VALUES ('Humor', 'livro');
INSERT INTO Category VALUES ('Psicologia', 'livro');
INSERT INTO Category VALUES ('Religião', 'livro');
INSERT INTO Category VALUES ('Romance', 'livro');
INSERT INTO Category VALUES ('Fantasia', 'livro');
INSERT INTO Category VALUES ('Auto-ajuda', 'livro');
INSERT INTO Category VALUES ('Alterativa', 'album');
INSERT INTO Category VALUES ('Blues', 'album');
INSERT INTO Category VALUES ('MPB', 'album');
INSERT INTO Category VALUES ('Infantil', 'album');
INSERT INTO Category VALUES ('Clássica', 'album');
INSERT INTO Category VALUES ('Country', 'album');
INSERT INTO Category VALUES ('Eletrônica', 'album');
INSERT INTO Category VALUES ('Folk', 'album');
INSERT INTO Category VALUES ('Rap', 'album');
INSERT INTO Category VALUES ('Jazz', 'album');
INSERT INTO Category VALUES ('Metal', 'album');
INSERT INTO Category VALUES ('Pop', 'album');
INSERT INTO Category VALUES ('Reggae', 'album');
INSERT INTO Category VALUES ('Rock', 'album');
INSERT INTO Category VALUES ('Sertanejo', 'album');
INSERT INTO Category VALUES ('Samba', 'album');
INSERT INTO Category VALUES ('Rock Nacional', 'album');
INSERT INTO Category VALUES ('Indie', 'album');
-- SELECT * from Category; 	-- Helper to display all Category instances
-- DELETE FROM Category;	-- Helper to delete all Category instances

----
-- Categorization insertion 
INSERT INTO Categorization VALUES ('786f5057-d2b3-4785-8b12-28f8db97c4a1', 'Comunicação', 'app');
INSERT INTO Categorization VALUES ('17c7b274-ef54-4214-8458-dd474abdb46c', 'Social', 'app');
INSERT INTO Categorization VALUES ('dadee630-21f3-4feb-a30b-9156b6ddf5f2', 'Terror', 'filme');
INSERT INTO Categorization VALUES ('dadee630-21f3-4feb-a30b-9156b6ddf5f2', 'Suspense', 'filme');
INSERT INTO Categorization VALUES ('19ac9daa-c187-49f5-a741-ca23d42b21ee', 'Rap', 'album');
-- SELECT * from Categorization; 	-- Helper to display all Categorization instances
-- DELETE FROM Categorization;		-- Helper to delete all Categorization instances

----
-- App insertion (specification from Items which belong to the App category)
INSERT INTO App VALUES ('786f5057-d2b3-4785-8b12-28f8db97c4a1', 'android@support.whatsapp.com', 2000000, '2.1.5');
INSERT INTO App VALUES ('17c7b274-ef54-4214-8458-dd474abdb46c', 'snapchat@snap.com', 10244968, '1.0.4');
INSERT INTO App VALUES ('ebc0098e-938d-4d46-b514-a98a38d62b94', 'info@fireproofgames.com', 4800002400, '2.4.2019');
INSERT INTO App VALUES ('cb6fb9a2-7c60-4187-a714-77dc79603171', 'davinci@bluebraingames.com', 10000002, '1.0.0');
INSERT INTO App VALUES ('4911d529-039d-45f8-aa67-d9445529ab33', 'gp-info@supercell.com', 24567890123, '4.5.6');
-- SELECT * from App JOIN Item ON (App.item_id = Item.id); 	-- Helper to display all App instances
-- DELETE FROM App;						-- Helper to delete all App instances

----
-- Album insertion (specification from Items which belong to the Album category)
INSERT INTO Album VALUES ('3619aea0-6ff7-44f9-a346-e10666b36169', 'Twenty One Pilots');
INSERT INTO Album VALUES ('80abca97-5772-4ff8-bb9d-31549907a225', 'Mumford & Sons');
INSERT INTO Album VALUES ('fc38ed4f-4ca7-4681-8406-1869968117a2', 'The Lumineers');
INSERT INTO Album VALUES ('19ac9daa-c187-49f5-a741-ca23d42b21ee', 'XXXTENTACION');
INSERT INTO Album VALUES ('8fcda5a6-e6fe-47c5-9e86-2c731188df7f', 'Of Monsters and Men');
-- SELECT * from Album JOIN Item ON (Album.item_id = Item.id); 	-- Helper to display all Album instances
-- DELETE FROM Album;						-- Helper to delete all Album instances

----
-- Track insertion 
INSERT INTO Track VALUES ('Jumpsuit', '3619aea0-6ff7-44f9-a346-e10666b36169', 238);
INSERT INTO Track VALUES ('Levitate', '3619aea0-6ff7-44f9-a346-e10666b36169', 145);
INSERT INTO Track VALUES ('Delta', '80abca97-5772-4ff8-bb9d-31549907a225', 376);
INSERT INTO Track VALUES ('Ophelia', 'fc38ed4f-4ca7-4681-8406-1869968117a2', 160);
INSERT INTO Track VALUES ('Cleopatra', 'fc38ed4f-4ca7-4681-8406-1869968117a2', 201);
INSERT INTO Track VALUES ('Angela', 'fc38ed4f-4ca7-4681-8406-1869968117a2', 201);
INSERT INTO Track VALUES ('SAD!', '19ac9daa-c187-49f5-a741-ca23d42b21ee', 166);
INSERT INTO Track VALUES ('Dirty Paws', '8fcda5a6-e6fe-47c5-9e86-2c731188df7f', 278);
-- SELECT * from Track; 	-- Helper to display all Track instances
-- DELETE FROM Track;		-- Helper to delete all Album instances

----
-- Book insertion (specification from Items which belong to the Book category)
INSERT INTO Book VALUES ('cf323144-045e-42e1-acfb-97663575c32f', 'Sun Tzu', 'Português', '9780486425573', 139);
INSERT INTO Book VALUES ('ebff8ca1-8d1b-4946-bac4-b2193a6143d1', 'Beth Reekles', 'Português', '9788582467480', 336);
INSERT INTO Book VALUES ('9b9cf827-8ae3-4d16-98d5-406d416815ac', 'Charles Duhigg', 'Islandês', '9788539004256', 408);
INSERT INTO Book VALUES ('0c4ddaad-bece-4178-9223-4bd64de7bbbb', 'Veronica Roth', 'Japonês', '9788581222233', 512);
INSERT INTO Book VALUES ('b93ae5d4-4d70-45d1-8368-ab40ac42cf67', 'Blake Pierce', 'Russo', '9781640296008', 250);
-- SELECT * from Book JOIN Item ON (Book.item_id = Item.id); 	-- Helper to display all Book instances
-- DELETE FROM Book;						-- Helper to delete all Book instances

----
-- Movie insertion (specification from Items which belong to the Movie category)
INSERT INTO Movie VALUES ('dadee630-21f3-4feb-a30b-9156b6ddf5f2', 99);
INSERT INTO Movie VALUES ('510d33f9-248f-412d-b09b-02b18e9750f5', 116);
INSERT INTO Movie VALUES ('06e68225-fbb3-47c5-9f76-48b818870c69', 104);
INSERT INTO Movie VALUES ('aa268ae6-b8c8-49cc-aa90-f59a07822e0e', 143);
INSERT INTO Movie VALUES ('7d348c82-5226-49bb-8dda-8383c2d6a279', 149);
-- SELECT * from Movie JOIN Item ON (Movie.item_id = Item.id); 	-- Helper to display all Movie instances
-- DELETE FROM Movie;						-- Helper to delete all Movie instances

----
-- Movie_Language insertion
INSERT INTO Movie_Language VALUES ('dadee630-21f3-4feb-a30b-9156b6ddf5f2', 'Português', 'audio');
INSERT INTO Movie_Language VALUES ('dadee630-21f3-4feb-a30b-9156b6ddf5f2', 'Inglês', 'audio');
INSERT INTO Movie_Language VALUES ('dadee630-21f3-4feb-a30b-9156b6ddf5f2', 'Português', 'legenda');
INSERT INTO Movie_Language VALUES ('510d33f9-248f-412d-b09b-02b18e9750f5', 'Russo', 'audio');
INSERT INTO Movie_Language VALUES ('510d33f9-248f-412d-b09b-02b18e9750f5', 'Português', 'legenda');
INSERT INTO Movie_Language VALUES ('06e68225-fbb3-47c5-9f76-48b818870c69', 'Português', 'audio');
INSERT INTO Movie_Language VALUES ('aa268ae6-b8c8-49cc-aa90-f59a07822e0e', 'Inglês', 'audio');
INSERT INTO Movie_Language VALUES ('7d348c82-5226-49bb-8dda-8383c2d6a279', 'Português', 'audio');
INSERT INTO Movie_Language VALUES ('7d348c82-5226-49bb-8dda-8383c2d6a279', 'Coreano', 'legenda');
-- SELECT * from Movie_Language; 	-- Helper to display all Movie_Language instances
-- DELETE FROM Movie_Language;		-- Helper to delete all Movie_Language instances

----
-- Movie_Cast insertion
INSERT INTO Movie_Cast VALUES ('dadee630-21f3-4feb-a30b-9156b6ddf5f2', 'Jessica Rothe', 'ator');
INSERT INTO Movie_Cast VALUES ('dadee630-21f3-4feb-a30b-9156b6ddf5f2', 'Steve Zissis', 'ator');
INSERT INTO Movie_Cast VALUES ('dadee630-21f3-4feb-a30b-9156b6ddf5f2', 'Cristopher Landon', 'diretor');
INSERT INTO Movie_Cast VALUES ('dadee630-21f3-4feb-a30b-9156b6ddf5f2', 'Will Beal', 'diretor');
INSERT INTO Movie_Cast VALUES ('dadee630-21f3-4feb-a30b-9156b6ddf5f2', 'Scott Lodbel', 'escritor');
INSERT INTO Movie_Cast VALUES ('510d33f9-248f-412d-b09b-02b18e9750f5', 'Alison Eastwood', 'ator');
INSERT INTO Movie_Cast VALUES ('510d33f9-248f-412d-b09b-02b18e9750f5', 'Nick Schenk', 'produtor');
INSERT INTO Movie_Cast VALUES ('06e68225-fbb3-47c5-9f76-48b818870c69', 'America Ferrera', 'ator');
INSERT INTO Movie_Cast VALUES ('06e68225-fbb3-47c5-9f76-48b818870c69', 'Dean DeBlois', 'escritor');
INSERT INTO Movie_Cast VALUES ('aa268ae6-b8c8-49cc-aa90-f59a07822e0e', 'Jason Momoa', 'ator');
INSERT INTO Movie_Cast VALUES ('aa268ae6-b8c8-49cc-aa90-f59a07822e0e', 'Will Beal', 'produtor');
INSERT INTO Movie_Cast VALUES ('7d348c82-5226-49bb-8dda-8383c2d6a279', 'Jason Momoa', 'ator');
INSERT INTO Movie_Cast VALUES ('7d348c82-5226-49bb-8dda-8383c2d6a279', 'Joe Russo', 'diretor');
-- SELECT * from Movie_Cast; 	-- Helper to display all Movie_Cast instances
-- DELETE FROM Movie_Cast;	-- Helper to delete all Movie_Cast instances
