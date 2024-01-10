# Stage 1: Build Rust application
FROM rust:latest as builder

# Set the working directory
WORKDIR /app

# Copy the Rust project files
COPY . .

# Build your Rust application
RUN cargo build --release

# Stage 2: Create an extremely minimal container
FROM debian:bookworm-slim

# Set the working directory
WORKDIR /app

# Copy the compiled Rust application from the builder stage
COPY --from=builder /app/target/release/rustnobel .
COPY static ./static
COPY templates ./templates

# Set the entry point for your app
CMD ["./rustnobel"]

EXPOSE 8080
