USE ProjectManagerDB;

-- Initial admin

-- User (Password: Password123!)
INSERT INTO Users (Id, UserName, PasswordHash, Email, CreatedAt) VALUES
('10d925ff-a5bc-49d4-8a05-38899693d358', 'Admin', '$2a$12$YhpmK6nQp/t9a1gvogEXEeio8DFdpgbuG6mwLq53uV6nrFqndSIK.', 'admin@initial.com', '2025-06-07');

-- UserRole
INSERT INTO UserRoles (UserId, RoleId) VALUES
('10d925ff-a5bc-49d4-8a05-38899693d358' ,'bdc9fd77-60f0-4c4a-97c2-2647e11831b7')