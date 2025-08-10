# Step 1: Build the react app
FROM registry.redhat.io/ubi9/nodejs-20-minimal

# Set working directory
WORKDIR /app

# Copy the package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the entire app into the container
COPY . .

# Build the app
RUN npm run build

EXPOSE 8080

CMD ["npm","run","start"]