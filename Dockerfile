# see https://docs.docker.com/engine/reference/builder/#understand-how-arg-and-from-interact
ARG NODE_VERSION=node:current-alpine3.17
ARG ENV=production

# Stage 1: Build the project
# FROM NODE_VERSION AS builder
# I fixed this error by referencing "NODE_VERSION" as variable ($NODE_VERSION)
FROM $NODE_VERSION AS builder

# Set the working directory
WORKDIR /app

# Copy All
# COPY .
#I fixed this error by adding "." ie "adding a destination"
COPY . . 

# Install project dependencies and build the project
# I fixed this error by adding "&&"
RUN npm ci \
    npm run build && \
    ls

# Stage 2: Create a minimal production image
# FROM NODE_VERSION AS deploy
# I fixed this error by adding "$" to "NODE_VERSION" ie referencing it as a variable ($NODE_VERSION)
FROM $NODE_VERSION AS deploy

# Set the working directory
WORKDIR /app

# set the environment variable
#ENV NODE_ENV=${ENVIRONMENT}
# I fixed code error by replacing "${ENVIRONMENT}" with "$ENV"
ENV NODE_ENV=$ENV

# Copy next.js static files
COPY package*.json ./

# Install only production dependencies
RUN npm ci

# Copy only the build artifacts from the previous stage
# I fixed the 1st code error by correcting the typo "bullder instead of builder"
COPY --from=builder /app/dist ./dist

# I fixed the 2nd error, "failed to compute cache key" (ERROR: failed to solve: failed to compute cache key: failed to calculate checksum of ref 699fa630-7b4c-43d7-9b0b-3d59d7f0350e::ozre9a80objd2sd8jg3u4rgat: "/app/dist": not found) by running the build manually 
# "npm ci " 
# "npm run build" 

RUN ls
#Expose the port your application listens on (if needed)
EXPOSE 8000

# Start your application
CMD ["npm","run", "start"]

# REPEATINF STEP 4 and 5
# I mapped port "8001" on the host machine to the container's port "8000" 
# and also changed the container's name to "running-container4" to avoid "name conflict" and "bind fail" errors,
# since the first conatainer was named "running-container" and was mapped to port "8000" on the host machineWORKDIR /app