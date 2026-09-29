FROM node:20-bookworm-slim AS base
RUN corepack enable && corepack prepare pnpm@9 --activate
WORKDIR /app
RUN pnpm --version
FROM base AS runner
CMD ["node", "--version"]
