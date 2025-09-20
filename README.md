# DOCKER IMAGE FOR CLAUDE CODE

A secure Docker container setup for running Claude Code in an isolated environment, perfect for safely executing agentic AI tasks.

## Overview

This Docker setup provides a sandboxed environment for Claude Code, ensuring that all AI operations occur in a controlled, isolated container. This approach enhances security by limiting system access and preventing unintended side effects on your host machine.

## Prerequisites

- Docker installed on your system
- 8GB+ RAM recommended for AI workloads
- 20GB+ free disk space

## Basic Usage


```bash
docker run --rm -it -v "$(PWD):/app" --name claude anvie/claude
```

## Building the Docker Image

1. Clone this repository:
```bash
git clone https://github.com/anvie/claude-docker
cd claude-docker
```

2. Build the Docker image:
```bash
docker build -t claude-code:latest .
```

## Security Considerations

- The container runs as a non-root user
- Network access is restricted by default
- Filesystem is read-only when using security flags
- All capabilities are dropped for maximum isolation
- Resource limits prevent system overload

## Troubleshooting

If you encounter permission issues with volumes:
```bash
docker run -it --rm \
  -v $(pwd)/data:/app/data:z \
  claude-code:latest
```

For GPU support (if needed):
```bash
docker run -it --rm \
  --gpus all \
  claude-code:latest
```

[] Robin Syihab
