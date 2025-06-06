USE ProjectManagerDB;

INSERT INTO Permissions (Id, Name) VALUES
('4f03786f-6c4e-4b2a-82db-d3ac6aabc144', 'ReadComment'),
('a4e8f3a1-5df7-4d48-9f02-693a2cdd1d8f', 'WriteComment'),
('021b5b70-45ce-4ea4-94ad-87fd32c5dc73', 'ReadProject'),
('d9c1f858-4d46-47b0-8c2e-79e4ec1b4a93', 'ReadTag'),
('9b46c73c-70de-4d51-a5b0-99ef2c5cb37a', 'WriteTag'),
('fc408726-8cc4-4d5e-9e1e-e0d1c19c7b37', 'ReadTicket'),
('ab81b6cf-c901-412f-bd0a-f3d385d2e46b', 'WriteTicket'),
('5e91c771-54ff-4e2c-a40c-f88d7297e2de', 'DeleteTicket'),
('32c3ddfa-ef1b-419a-9e77-01563f148326', 'ReadTicketRelation'),
('c1826e4a-7699-4d51-bc57-cae06e3ed8c4', 'WriteTicketRelation'),
('eb2ea011-3438-495f-820f-9a5e4de8d6e7', 'ReadTicketTag'),
('3efebff2-7542-4742-8325-0cbb353bc13d', 'WriteTicketTag');

INSERT INTO Priorities (Id, Name, Level) VALUES
('9fcb12a4-25de-4e5f-b3e2-17e1ea3cd8e9', 'Undefined', 0),
('b7d8f22e-bc89-456a-9f90-48c211f60a3e', 'Lowest', 1),
('8b9d2e8a-bb27-40be-a12f-f63d91aa2aef', 'Low', 2),
('d2fc7c7c-c509-4d50-93d4-7dfbf262e06f', 'Medium', 3),
('c5d8d5e2-d5fd-4e67-ae56-d77b1efcf174', 'High', 4),
('69cf2f1a-ea70-4ce0-802d-fc9a498d2d5a', 'Highest', 5);

INSERT INTO Roles (Id, Name) VALUES
('bdc9fd77-60f0-4c4a-97c2-2647e11831b7', 'Admin'),
('48cc34f2-5d53-4e9b-83a8-457e5ec80c7a', 'User');
