
# phase 1 Build stage

from node:alpine
workdir '/app'

copy package*.json ./
run npm install

copy . .
run npm run build


# phase 2 Run stage

from nginx
EXPOSE 80
COPY --from=0 /app/build /usr/share/nginx/html