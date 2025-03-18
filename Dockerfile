FROM node:22-bookworm-slim

ENV DEBIAN_FRONTEND noninteractive

COPY index.ts /project/index.ts
COPY tsconfig.json /project/tsconfig.json
COPY package.json /project/package.json

WORKDIR /project

RUN npm install && npm run build

ENTRYPOINT ["node", "dist/index.js"]