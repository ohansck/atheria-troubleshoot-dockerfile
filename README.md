# NexaScale Troubleshooting Tuesday Docker Challenge

Welcome to the NexaScale Troubleshooting Tuesday Docker Challenge! This challenge is designed to test your Docker skills by identifying and rectifying intentional errors in a Dockerfile. It's a great opportunity to enhance your troubleshooting abilities, learn more about Docker, and engage with the community.

## Challenge Overview

In this repository, you will find a project with a Dockerfile deliberately containing errors. Your task is to identify these errors, fix them, and successfully build the Docker image. Your corrected Dockerfile should run without any issues and produce the desired output.

#### Note: These errors are independent of the programming language the program was written with.

## Getting Started

1. **Fork the Repository**: Start by forking this repository to your GitHub account.

2. **Clone the Repository**: Clone the forked repository to your local machine.
   ```bash
   git clone https://github.com/ohansck/atheria-troubleshoot-dockerfile.git
   ```

3. **Identify and Rectify Errors**: Open the `Dockerfile` in the project directory. Carefully review the contents, identify the errors, and make the necessary corrections.

4. **Build the Docker Image**: Once you have fixed the errors, build the Docker image.
   ```bash
   docker build -t docker-challenge-app .
   ```

5. **Run the Docker Container**: Run the Docker container to verify that the application runs successfully.
   ```bash
   docker run -p 8000:8000 --name running-container docker-challenge-app
   ```

6. **Successful**: If successful, visit the root of your endpoint, for example <code>http://localhost:8000/</code>. You should receive the following message.
   ```json
   { message: "Challenge complete", status: "ok" }
   ```

7. **Play With Docker**: If you do not have docker installed locally, you can visit [Play With Docker](https://labs.play-with-docker.com/) to use their free docker labs. To test your correction, run the following commands in the virtual instance. 
   ```bash
   git clone https://github.com/your-github-username/atheria-troubleshoot-dockerfile.git challenge
   cd challenge
   ```
    Repeat steps 4 and 5, then click on the blue highlighted port number at the top of the page to visit your root endpoint.

## Guidelines

- Ensure that your Dockerfile adheres to best practices.
- Document the errors you found and the solutions you implemented in your pull request.
- Engage with the community! Feel free to discuss challenges, ask questions, and help fellow participants.

## Resources

- [Docker Documentation](https://docs.docker.com/)
- [Dockerfile Reference](https://docs.docker.com/engine/reference/builder/)

## Community

Join our vibrant cloud community. [Join NexaScale](https://nexascale.org) to connect with other participants, share your experiences, and learn from one another. Collaboration and knowledge sharing are key aspects of our community!

Best Regards,

Kingsley Ohaneme,
Technical Coordinator,
NexaScale Cloud Engineering Group