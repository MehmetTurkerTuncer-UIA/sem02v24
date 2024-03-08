# Bruk grunnbilde basert på Ubuntu 24.04
FROM ubuntu:24.04

# Oppdater pakkelisten
RUN apt-get update 

# Installer nødvendige pakker
RUN apt-get install -y build-essential  # Nødvendige kompilatorverktøy for C og C++
RUN apt-get install -y openjdk-11-jdk  # Installer Java utviklingskit
RUN apt-get install -y python3 python3-pip  # Installer Python og Python pip
RUN apt-get install -y rustc  # Installer Rust-kompilatoren

# Rengjør etter installasjon
RUN rm -rf /var/lib/apt/lists/*  

# .NET Core SDK installasjon
# Microsoft paket deposundan uygun paket deposu bilgilerini ekleyin
RUN apt-get update
RUN    apt-get install -y apt-transport-https
RUN    apt-get update

# Sett arbeidskatalogen
WORKDIR /app