USE ProjectManagerDB;

-- Tags
INSERT INTO Tags (Id, ProjectId, Name) VALUES
('11111111-1111-1111-1111-111111111111', '94e4c030-7ae2-46fd-b458-f80f9fbdefde', 'UI'),
('22222222-2222-2222-2222-222222222222', '94e4c030-7ae2-46fd-b458-f80f9fbdefde', 'Backend'),
('33333333-3333-3333-3333-333333333333', '5105a434-7727-4e0e-b4c2-92976ea94109', 'API'),
('44444444-4444-4444-4444-444444444444', '5105a434-7727-4e0e-b4c2-92976ea94109', 'Docs'),
('aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaa1', '94e4c030-7ae2-46fd-b458-f80f9fbdefde', 'Performance'),
('aaaaaaa2-aaaa-aaaa-aaaa-aaaaaaaaaaa2', '94e4c030-7ae2-46fd-b458-f80f9fbdefde', 'Security'),
('aaaaaaa3-aaaa-aaaa-aaaa-aaaaaaaaaaa3', '5105a434-7727-4e0e-b4c2-92976ea94109', 'DevOps'),
('aaaaaaa4-aaaa-aaaa-aaaa-aaaaaaaaaaa4', '5105a434-7727-4e0e-b4c2-92976ea94109', 'Refactor'),
('aaaaaaa5-aaaa-aaaa-aaaa-aaaaaaaaaaa5', '94e4c030-7ae2-46fd-b458-f80f9fbdefde', 'UX');

-- Tickets
INSERT INTO Tickets (
    Id, ProjectId, PriorityId, AssigneeId, ReporterId, Status, Resolution, TicketType, TicketNumber, Title, Description, Version, CreatedAt)
VALUES
('55555555-5555-5555-5555-555555555555', '94e4c030-7ae2-46fd-b458-f80f9fbdefde', '9fcb12a4-25de-4e5f-b3e2-17e1ea3cd8e9', 'a32453c2-dda5-472d-b0e6-172244ddd13c', 'a32453c2-dda5-472d-b0e6-172244ddd13c', 0, 0, 0, 1, 'Fix login bug', 'Login fails on empty password', '1.0', '2025-06-07'),
('66666666-6666-6666-6666-666666666666', '94e4c030-7ae2-46fd-b458-f80f9fbdefde', 'b7d8f22e-bc89-456a-9f90-48c211f60a3e', 'a32453c2-dda5-472d-b0e6-172244ddd13c', 'a32453c2-dda5-472d-b0e6-172244ddd13c', 1, 1, 1, 2, 'Add user profile', 'User profiles page', '1.1', '2025-06-07'),
('77777777-7777-7777-7777-777777777777', '5105a434-7727-4e0e-b4c2-92976ea94109', 'd2fc7c7c-c509-4d50-93d4-7dfbf262e06f', '8f5b69c5-afe8-49a4-b5f7-9c71e92e4f42', '8f5b69c5-afe8-49a4-b5f7-9c71e92e4f42', 0, 0, 2, 1, 'Document API', 'Write API docs', '1.0', '2025-06-07'),
('88888888-8888-8888-8888-888888888888', '5105a434-7727-4e0e-b4c2-92976ea94109', 'c5d8d5e2-d5fd-4e67-ae56-d77b1efcf174', NULL, '8f5b69c5-afe8-49a4-b5f7-9c71e92e4f42', 4, 0, 3, 2, 'Improve docs', 'Add examples', '1.2', '2025-06-07'),
('99999991-9999-9999-9999-999999999991', '94e4c030-7ae2-46fd-b458-f80f9fbdefde', '9fcb12a4-25de-4e5f-b3e2-17e1ea3cd8e9', NULL, 'a32453c2-dda5-472d-b0e6-172244ddd13c', 0, 0, 0, 3, 'Optimize homepage', 'Improve homepage performance', '1.2', '2025-06-08'),
('99999992-9999-9999-9999-999999999992', '94e4c030-7ae2-46fd-b458-f80f9fbdefde', 'b7d8f22e-bc89-456a-9f90-48c211f60a3e', 'a32453c2-dda5-472d-b0e6-172244ddd13c', 'a32453c2-dda5-472d-b0e6-172244ddd13c', 1, 0, 1, 4, 'Add 2FA', 'Implement two-factor authentication', '1.3', '2025-06-08'),
('99999993-9999-9999-9999-999999999993', '5105a434-7727-4e0e-b4c2-92976ea94109', 'd2fc7c7c-c509-4d50-93d4-7dfbf262e06f', '8f5b69c5-afe8-49a4-b5f7-9c71e92e4f42', '8f5b69c5-afe8-49a4-b5f7-9c71e92e4f42', 2, 0, 2, 3, 'CI/CD Setup', 'Configure pipelines', '2.0', '2025-06-08'),
('99999994-9999-9999-9999-999999999994', '5105a434-7727-4e0e-b4c2-92976ea94109', 'c5d8d5e2-d5fd-4e67-ae56-d77b1efcf174', NULL, '8f5b69c5-afe8-49a4-b5f7-9c71e92e4f42', 4, 1, 3, 4, 'Refactor auth module', 'Clean up authentication code', '2.1', '2025-06-08'),
('99999995-9999-9999-9999-999999999995', '94e4c030-7ae2-46fd-b458-f80f9fbdefde', 'b7d8f22e-bc89-456a-9f90-48c211f60a3e', 'a32453c2-dda5-472d-b0e6-172244ddd13c', 'a32453c2-dda5-472d-b0e6-172244ddd13c', 0, 0, 1, 5, 'Improve onboarding UX', 'Streamline registration flow', '1.4', '2025-06-08');

-- TicketTags
INSERT INTO TicketTags (TagId, TicketId) VALUES
('11111111-1111-1111-1111-111111111111', '55555555-5555-5555-5555-555555555555'),
('22222222-2222-2222-2222-222222222222', '66666666-6666-6666-6666-666666666666'),
('33333333-3333-3333-3333-333333333333', '77777777-7777-7777-7777-777777777777'),
('44444444-4444-4444-4444-444444444444', '88888888-8888-8888-8888-888888888888'),
('aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaa1', '99999991-9999-9999-9999-999999999991'),
('aaaaaaa2-aaaa-aaaa-aaaa-aaaaaaaaaaa2', '99999992-9999-9999-9999-999999999992'),
('aaaaaaa3-aaaa-aaaa-aaaa-aaaaaaaaaaa3', '99999993-9999-9999-9999-999999999993'),
('aaaaaaa4-aaaa-aaaa-aaaa-aaaaaaaaaaa4', '99999994-9999-9999-9999-999999999994'),
('aaaaaaa5-aaaa-aaaa-aaaa-aaaaaaaaaaa5', '99999995-9999-9999-9999-999999999995'),
('11111111-1111-1111-1111-111111111111', '99999991-9999-9999-9999-999999999991'),
('22222222-2222-2222-2222-222222222222', '99999992-9999-9999-9999-999999999992'),
('33333333-3333-3333-3333-333333333333', '99999993-9999-9999-9999-999999999993'),
('44444444-4444-4444-4444-444444444444', '99999994-9999-9999-9999-999999999994'),
('aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaa1', '99999995-9999-9999-9999-999999999995');

-- TicketRelations
INSERT INTO TicketRelations (Id, SourceId, TargetId, RelationType) VALUES
('99999999-9999-9999-9999-999999999999', '55555555-5555-5555-5555-555555555555', '66666666-6666-6666-6666-666666666666', 0),
('aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '77777777-7777-7777-7777-777777777777', '88888888-8888-8888-8888-888888888888', 1),
('ffffffff-ffff-ffff-ffff-fffffffffff1', '99999991-9999-9999-9999-999999999991', '99999995-9999-9999-9999-999999999995', 1), 
('ffffffff-ffff-ffff-ffff-fffffffffff2', '99999992-9999-9999-9999-999999999992', '99999993-9999-9999-9999-999999999993', 0); 

-- Comments
INSERT INTO Comments (Id, TicketId, UserId, Content, CreatedAt) VALUES
('bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbbbbbb', '55555555-5555-5555-5555-555555555555', 'a32453c2-dda5-472d-b0e6-172244ddd13c', 'This bug is critical!', '2025-06-07'),
('cccccccc-cccc-cccc-cccc-cccccccccccc', '66666666-6666-6666-6666-666666666666', 'a32453c2-dda5-472d-b0e6-172244ddd13c', 'Need to add profile picture.', '2025-06-07'),
('dddddddd-dddd-dddd-dddd-dddddddddddd', '77777777-7777-7777-7777-777777777777', '8f5b69c5-afe8-49a4-b5f7-9c71e92e4f42', 'Docs look good.', '2025-06-07'),
('eeeeeeee-eeee-eeee-eeee-eeeeeeeeeeee', '88888888-8888-8888-8888-888888888888', '8f5b69c5-afe8-49a4-b5f7-9c71e92e4f42', 'Added examples section.', '2025-06-07'),
('1111aaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '99999991-9999-9999-9999-999999999991', 'a32453c2-dda5-472d-b0e6-172244ddd13c', 'Consider using lazy loading.', '2025-06-08'),
('2222aaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '99999992-9999-9999-9999-999999999992', 'a32453c2-dda5-472d-b0e6-172244ddd13c', '2FA backend ready.', '2025-06-08'),
('3333aaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '99999993-9999-9999-9999-999999999993', '8f5b69c5-afe8-49a4-b5f7-9c71e92e4f42', 'CI pipeline green.', '2025-06-08'),
('4444aaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '99999994-9999-9999-9999-999999999994', '8f5b69c5-afe8-49a4-b5f7-9c71e92e4f42', 'Auth module outdated.', '2025-06-08'),
('5555aaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '99999995-9999-9999-9999-999999999995', 'a32453c2-dda5-472d-b0e6-172244ddd13c', 'Signup feels too long.', '2025-06-08'),
('6666aaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '99999991-9999-9999-9999-999999999991', 'a32453c2-dda5-472d-b0e6-172244ddd13c', 'Tested on mobile.', '2025-06-08'),
('7777aaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '99999992-9999-9999-9999-999999999992', 'a32453c2-dda5-472d-b0e6-172244ddd13c', 'UI for 2FA is pending.', '2025-06-08'),
('8888aaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '99999993-9999-9999-9999-999999999993', '8f5b69c5-afe8-49a4-b5f7-9c71e92e4f42', 'Missing notifications step.', '2025-06-08'),
('9999aaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '99999994-9999-9999-9999-999999999994', '8f5b69c5-afe8-49a4-b5f7-9c71e92e4f42', 'Code duplication in services.', '2025-06-08'),
('0000aaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '99999995-9999-9999-9999-999999999995', 'a32453c2-dda5-472d-b0e6-172244ddd13c', 'Consider tooltips for form fields.', '2025-06-08');