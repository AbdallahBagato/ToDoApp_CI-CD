FROM node:lts-bookworm  as Java
## Create The work DIR and Move to it
WORKDIR /app
COPY ./package.json .
RUN npm install . && npm cache clean --force
COPY . .
ENTRYPOINT ["node"]
CMD ["src/index.js"] 
EXPOSE 3000
