# Health Check App Database Migration with Flyway

This repository contains the database migration setup for the Health Check application using Flyway and PostgreSQL.

## Prerequisites

Ensure you have the following installed:
- Docker
- Jenkins (for CI/CD)
- PostgreSQL database

## Folder Structure

The repository includes:
- A `migrations` folder containing SQL migration scripts.
- A `flyway.conf` file for Flyway configuration.
- A `Dockerfile` to create a Flyway migration container.
- `Jenkinsfile` for CI/CD pipeline.
- `Jenkinsfile.commitlint` for enforcing commit message conventions.

## Configuration

The `flyway.conf` file is environment-variable based, allowing flexibility in deployment.
Ensure you set the necessary environment variables before running Flyway migrations.

## Deployment

This migration setup will be used as an init container in a Kubernetes cluster on GKE.
The Go-based Health Check application will be deployed as the main container,
and the Flyway migration will run before the main application starts, ensuring the database schema is correctly set up.

## CI/CD Pipeline

- `Jenkinsfile` defines the pipeline to build and publish the Flyway Docker image.
- `Jenkinsfile.commitlint` enforces conventional commit messages.

## Usage

1. Ensure your PostgreSQL database is running.
2. Set environment variables for database credentials.
3. Deploy the application and migration containers to the GKE cluster.

## References

- [Flyway Documentation](https://flywaydb.org/documentation/)
- [PostgreSQL Official Documentation](https://www.postgresql.org/docs/)
- [Docker Official Documentation](https://docs.docker.com/)
- [Google Kubernetes Engine (GKE)](https://cloud.google.com/kubernetes-engine/docs/)

