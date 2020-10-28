
# phase 1 Build stage

from node:alpine as builder
workdir '/app'

copy package.json .
run npm install

copy . .
run npm run build


# phase 2 Run stage

from nginx

COPY --from=builder /app/build /usr/share/nginx/html