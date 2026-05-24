## AI Website Builder Agent 🚀

AI-powered React website generator and conversational website editor built using n8n, OpenAI, PostgreSQL, React, and Vite.

This project enables users to:

Generate complete React websites using natural language prompts
Update existing websites conversationally
Persist website memory using PostgreSQL
Automatically preserve and evolve existing UI/components
Generate production-ready React TSX code dynamically

## ✨ Features

- 🤖 AI-powered website generation
- 🧠 Conversational memory using PostgreSQL
- 🔄 Intelligent website updates without overwriting UI
- ⚡ Dynamic React + TypeScript code generation
- 🏗️ Create and update website workflows
- 🧹 Automatic markdown/code cleanup
- 📂 Session-based project persistence
- 🔀 Intelligent create vs update routing
- 🎨 Modern responsive UI generation
- 🛠️ n8n automation workflow architecture

---

## 🧱 Architecture

Webhook
   │
   ▼
IF Node
 ├── Create New Website Flow
 │        │
 │        ▼
 │   AI Website Generator
 │
 └── Update Existing Website Flow
          │
          ▼
   Load Existing Memory
          │
          ▼
   Format Existing Code
          │
          ▼
   AI Website Updater

          │
          ▼
   Common Code Formatter
          │
          ▼
   PostgreSQL Persistence
          │
          ▼
     Webhook Response

##  🛠️ **Tech Stack**

| Technology | Purpose |
|------------|----------|
| n8n | Workflow orchestration |
| OpenAI | AI code generation |
| PostgreSQL | Persistent memory |
| React | Frontend UI |
| Vite | Frontend tooling |
| Bolt.new | Live code preview/testing |

## **Setup Instructions**

1. Clone Repository
git clone https://github.com/Rajseetharam/AI-Website-Builder-Agent.git
cd AI-Website-Builder-Agent

2.Setup PostgreSQL

Create database:

CREATE DATABASE ai_website_builder;

Run schema:

psql -U postgres -d ai_website_builder -f ai_website_builder_schema.sql

3. Import n8n Workflow
Open n8n
Import workflow.json
Configure credentials:
OpenAI
PostgreSQL

## 🚀 **API Usage**
**Create New Website**

{
  "sessionId": "user_101",
  "message": "Create modern fintech landing page"
}

**Update Existing Website**

{
  "sessionId": "user_101",
  "message": "Add testimonials section and dark mode"
}

## 🧠 **How Memory Works**

The system stores:

Generated React TSX files
User conversations
Session-based website history

This enables the AI to:

✅ preserve existing UI
✅ update only requested sections
✅ avoid overwriting previous code
✅ maintain conversational context

👨‍💻 **Author**

Built with AI automation, React engineering, and workflow orchestration using OpenAI + n8n.

