# n8n-self-hosted
A simple Docker setup for self-hosting n8n automation platform.

## Overview
This project provides a straightforward Docker Compose configuration for running n8n as a self-hosted instance.

n8n is a workflow automation tool that allows you to connect various services and applications.

## Prerequisites

- Docker and Docker Compose installed on your system
- Basic understanding of Docker concepts
- Git (optional, for cloning the repository)

## Configuration

The project uses environment variables for configuration:

- `N8N_PORT`: The default port for n8n (set to 5678)
- You can override this and other settings by creating a `.env.local` file

## File Structure

- `docker-compose.yml`: Defines the n8n service container configuration
- `.env`: Contains default environment variables
- `Makefile`: Provides convenient commands for managing the Docker container

## Usage
### Starting the Service

```bash
  make up
```
This command will:
- Create a merged environment file (.env.merged) from .env and .env.local (if it exists)
- Start the n8n container in detached mode

### Stopping the Service

```bash
  make down
```

### Restarting the Service

```bash
  make restart
```

### Viewing Logs

```bash
  make logs
```

### Customization

You can customize the configuration by creating a `.env.local` file. Any settings in this file will override the defaults in `.env`.

Example `.env.local`:

```bash
  N8N_PORT_LOCAL=8080
```

### Persistent Data
The setup uses a Docker volume (`n8n_data`) to persist your workflows and data between container restarts.

### Security Considerations

Note that this setup has `N8N_SECURE_COOKIE=false`. In a production environment, you might want to adjust security settings based on your needs.

### License
This project is released under the terms of the LICENSE file included in the repository.
