FROM node:current-alpine

RUN apk add --no-cache git ripgrep bash

# Create a non-root user and group (e.g., "claude")
RUN addgroup -S claude && adduser -S claude -G claude

WORKDIR /app

RUN npm install -g @anthropic-ai/claude-code && claude --version

USER claude

CMD ["/bin/bash"]
