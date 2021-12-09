FROM postgres:11
VOLUME postgres_volume:/var/lib/postgresql/data
ENV POSTGRES_USER=pguser
ENV POSTGRES_PASSWORD=pgpwd  
EXPOSE 5432