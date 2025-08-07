# Step 1: Build the nuxt app
FROM node:20

# Set working directory
WORKDIR /app

# Copy the package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install && npm cache clean --force

# Copy the entire app into the container
COPY . .

# Build the app
RUN npm run build

EXPOSE 8080

CMD ["npm","run","start"]