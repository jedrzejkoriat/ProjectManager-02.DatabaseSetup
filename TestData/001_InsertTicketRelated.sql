BEGIN TRANSACTION

-- Tags
INSERT INTO Tags (Id, ProjectId, Name) VALUES
('11111111-1111-1111-1111-111111111111', '94e4c030-7ae2-46fd-b458-f80f9fbdefde', 'UI'),
('22222222-2222-2222-2222-222222222222', '94e4c030-7ae2-46fd-b458-f80f9fbdefde', 'Backend'),
('33333333-3333-3333-3333-333333333333', '5105a434-7727-4e0e-b4c2-92976ea94109', 'API'),
('44444444-4444-4444-4444-444444444444', '5105a434-7727-4e0e-b4c2-92976ea94109', 'Docs');

-- Tickets
INSERT INTO Tickets (
    Id, ProjectId, PriorityId, AssigneeId, ReporterId, Status, Resolution, TicketType, TicketNumber, Title, Description, Version, CreatedAt)
VALUES
('55555555-5555-5555-5555-555555555555', '94e4c030-7ae2-46fd-b458-f80f9fbdefde', '9fcb12a4-25de-4e5f-b3e2-17e1ea3cd8e9', 'a32453c2-dda5-472d-b0e6-172244ddd13c', 'a32453c2-dda5-472d-b0e6-172244ddd13c', 0, 0, 0, 1, 'Fix login bug', 'Login fails on empty password', '1.0', '2025-06-07'),
('66666666-6666-6666-6666-666666666666', '94e4c030-7ae2-46fd-b458-f80f9fbdefde', 'b7d8f22e-bc89-456a-9f90-48c211f60a3e', 'a32453c2-dda5-472d-b0e6-172244ddd13c', 'a32453c2-dda5-472d-b0e6-172244ddd13c', 1, 1, 1, 2, 'Add user profile', 'User profiles page', '1.1', '2025-06-07'),
('77777777-7777-7777-7777-777777777777', '5105a434-7727-4e0e-b4c2-92976ea94109', 'd2fc7c7c-c509-4d50-93d4-7dfbf262e06f', '8f5b69c5-afe8-49a4-b5f7-9c71e92e4f42', '8f5b69c5-afe8-49a4-b5f7-9c71e92e4f42', 0, 0, 2, 1, 'Document API', 'Write API docs', '1.0', '2025-06-07'),
('88888888-8888-8888-8888-888888888888', '5105a434-7727-4e0e-b4c2-92976ea94109', 'c5d8d5e2-d5fd-4e67-ae56-d77b1efcf174', NULL, '8f5b69c5-afe8-49a4-b5f7-9c71e92e4f42', 4, 0, 3, 2, 'Improve docs', 'Add examples', '1.2', '2025-06-07');

-- TicketTags
INSERT INTO TicketTags (TagId, TicketId) VALUES
('11111111-1111-1111-1111-111111111111', '55555555-5555-5555-5555-555555555555'),
('22222222-2222-2222-2222-222222222222', '66666666-6666-6666-6666-666666666666'),
('33333333-3333-3333-3333-333333333333', '77777777-7777-7777-7777-777777777777'),
('44444444-4444-4444-4444-444444444444', '88888888-8888-8888-8888-888888888888');

-- TicketRelations
INSERT INTO TicketRelations (Id, SourceId, TargetId, RelationType) VALUES
('99999999-9999-9999-9999-999999999999', '55555555-5555-5555-5555-555555555555', '66666666-6666-6666-6666-666666666666', 0), -- Blocks
('aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '77777777-7777-7777-7777-777777777777', '88888888-8888-8888-8888-888888888888', 1); -- Relates

-- Comments
INSERT INTO Comments (Id, TicketId, UserId, Content, CreatedAt) VALUES
('bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbbbbbb', '55555555-5555-5555-5555-555555555555', 'a32453c2-dda5-472d-b0e6-172244ddd13c', 'This bug is critical!', '2025-06-07'),
('cccccccc-cccc-cccc-cccc-cccccccccccc', '66666666-6666-6666-6666-666666666666', 'a32453c2-dda5-472d-b0e6-172244ddd13c', 'Need to add profile picture.', '2025-06-07'),
('dddddddd-dddd-dddd-dddd-dddddddddddd', '77777777-7777-7777-7777-777777777777', '8f5b69c5-afe8-49a4-b5f7-9c71e92e4f42', 'Docs look good.', '2025-06-07'),
('eeeeeeee-eeee-eeee-eeee-eeeeeeeeeeee', '88888888-8888-8888-8888-888888888888', '8f5b69c5-afe8-49a4-b5f7-9c71e92e4f42', 'Added examples section.', '2025-06-07');


COMMIT TRANSACTION