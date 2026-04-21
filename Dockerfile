FROM oven/bun:latest
WORKDIR /app
COPY . .
RUN bun install
RUN bun run build

# Check the package.json for the specific production start command
# Usually 'bun run start' or serving the /dist folder
CMD ["bun", "run", "dev"]
