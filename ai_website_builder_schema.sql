-- =========================================================
-- AI Website Builder - PostgreSQL Database Schema
-- =========================================================

CREATE TABLE IF NOT EXISTS project_files (
    id SERIAL PRIMARY KEY,
    session_id VARCHAR(255) NOT NULL,
    file_path TEXT NOT NULL,
    file_content TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT NOW(),
    updated_at TIMESTAMP DEFAULT NOW(),

    CONSTRAINT unique_session_file
    UNIQUE(session_id, file_path)
);

CREATE INDEX IF NOT EXISTS idx_project_files_session
ON project_files(session_id);

CREATE INDEX IF NOT EXISTS idx_project_files_updated
ON project_files(updated_at);

-- =========================================================
-- Conversations Table
-- =========================================================

CREATE TABLE IF NOT EXISTS conversations (
    id SERIAL PRIMARY KEY,
    session_id VARCHAR(255) NOT NULL,
    role VARCHAR(50) NOT NULL,
    message TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT NOW()
);

CREATE INDEX IF NOT EXISTS idx_conversations_session
ON conversations(session_id);

CREATE INDEX IF NOT EXISTS idx_conversations_created
ON conversations(created_at);

-- =========================================================
-- Sample Queries
-- =========================================================

/*
SELECT * FROM project_files;
SELECT * FROM conversations;
*/
