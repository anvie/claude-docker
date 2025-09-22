FROM node:current-alpine

RUN apk add --no-cache git ripgrep bash

RUN apk add --no-cache python3 py3-pip

# Create a non-root user and group (e.g., "claude")
RUN addgroup -S claude && adduser -S claude -G claude

ENV PIP_NO_CACHE_DIR=1

WORKDIR /app

RUN npm install -g @anthropic-ai/claude-code && claude --version

USER claude

CMD ["/bin/bash"]
