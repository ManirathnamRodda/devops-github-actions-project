# Base image
FROM node:18

# App directory
WORKDIR /app

# Copy files
COPY package*.json ./
RUN npm install

COPY . .

# Expose and run
EXPOSE 3000
CMD ["npm", "start"]

