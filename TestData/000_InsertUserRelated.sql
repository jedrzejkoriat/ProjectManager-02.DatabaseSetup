USE ProjectManagerDB;

-- Projects
INSERT INTO Projects(Id, Name, [Key], CreatedAt) VALUES 
('94e4c030-7ae2-46fd-b458-f80f9fbdefde', 'testproject', 'TST', '2025-06-07'),
('5105a434-7727-4e0e-b4c2-92976ea94109', 'devproject', 'DEV', '2025-06-07')

-- Users (Password: password)
INSERT INTO Users (Id, UserName, PasswordHash, Email, CreatedAt) VALUES
('95f86aee-8678-4dc1-bc87-6c15377620b7', 'adminn', '$2a$12$PkBn5ZmGX/qkqUos1YPVD.rFb.S46Nogz8mkcbFQ10MOARWculDCW', 'adminn@test.com', '2025-06-07'),
('a32453c2-dda5-472d-b0e6-172244ddd13c', 'superuser', '$2a$12$PkBn5ZmGX/qkqUos1YPVD.rFb.S46Nogz8mkcbFQ10MOARWculDCW', 'superuser@test.com', '2025-06-07'), 
('8f5b69c5-afe8-49a4-b5f7-9c71e92e4f42', 'zerouser', '$2a$12$PkBn5ZmGX/qkqUos1YPVD.rFb.S46Nogz8mkcbFQ10MOARWculDCW', 'zerouser@test.com', '2025-06-07')

-- Roles
INSERT INTO UserRoles (UserId, RoleId) VALUES
('95f86aee-8678-4dc1-bc87-6c15377620b7' ,'bdc9fd77-60f0-4c4a-97c2-2647e11831b7'),
('a32453c2-dda5-472d-b0e6-172244ddd13c','48cc34f2-5d53-4e9b-83a8-457e5ec80c7a'),
('8f5b69c5-afe8-49a4-b5f7-9c71e92e4f42','48cc34f2-5d53-4e9b-83a8-457e5ec80c7a')

-- ProjectRoles
INSERT INTO ProjectRoles (Id, ProjectId, Name) VALUES
('1cf24607-8488-43ce-a80e-a8905d637d01', '94e4c030-7ae2-46fd-b458-f80f9fbdefde', 'superuser'),
('f5fd6c71-f166-4d02-b7f8-06695c435885', '94e4c030-7ae2-46fd-b458-f80f9fbdefde', 'zerouser')

-- ProjectRolePermissions
INSERT INTO ProjectRolePermissions (ProjectRoleId, PermissionId) VALUES
('1cf24607-8488-43ce-a80e-a8905d637d01', '4f03786f-6c4e-4b2a-82db-d3ac6aabc144'),
('1cf24607-8488-43ce-a80e-a8905d637d01', 'a4e8f3a1-5df7-4d48-9f02-693a2cdd1d8f'),
('1cf24607-8488-43ce-a80e-a8905d637d01', '021b5b70-45ce-4ea4-94ad-87fd32c5dc73'),
('1cf24607-8488-43ce-a80e-a8905d637d01', 'd9c1f858-4d46-47b0-8c2e-79e4ec1b4a93'),
('1cf24607-8488-43ce-a80e-a8905d637d01', '9b46c73c-70de-4d51-a5b0-99ef2c5cb37a'),
('1cf24607-8488-43ce-a80e-a8905d637d01', 'fc408726-8cc4-4d5e-9e1e-e0d1c19c7b37'),
('1cf24607-8488-43ce-a80e-a8905d637d01', 'ab81b6cf-c901-412f-bd0a-f3d385d2e46b'),
('1cf24607-8488-43ce-a80e-a8905d637d01', '5e91c771-54ff-4e2c-a40c-f88d7297e2de'),
('1cf24607-8488-43ce-a80e-a8905d637d01', '32c3ddfa-ef1b-419a-9e77-01563f148326'),
('1cf24607-8488-43ce-a80e-a8905d637d01', 'c1826e4a-7699-4d51-bc57-cae06e3ed8c4'),
('1cf24607-8488-43ce-a80e-a8905d637d01', 'eb2ea011-3438-495f-820f-9a5e4de8d6e7'),
('1cf24607-8488-43ce-a80e-a8905d637d01', '3efebff2-7542-4742-8325-0cbb353bc13d');

-- ProjectUserRoles
INSERT INTO ProjectUserRoles (Id, ProjectId, ProjectRoleId, UserId) VALUES
('2b1d73f6-abcc-4b7e-a04d-67c3a6fa9d96', '94e4c030-7ae2-46fd-b458-f80f9fbdefde', '1cf24607-8488-43ce-a80e-a8905d637d01', 'a32453c2-dda5-472d-b0e6-172244ddd13c'),
('9dbc31f4-9a45-4728-a1b0-d1bb75a98c3d', '5105a434-7727-4e0e-b4c2-92976ea94109', 'f5fd6c71-f166-4d02-b7f8-06695c435885', '8f5b69c5-afe8-49a4-b5f7-9c71e92e4f42')