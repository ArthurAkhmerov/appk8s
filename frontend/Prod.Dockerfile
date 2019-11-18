#step 1: build
FROM microsoft/dotnet:sdk AS build-stage
RUN mkdir app
WORKDIR /app
COPY frontend.csproj .
RUN dotnet restore
COPY ./src .
RUN dotnet publish -c Release -o out
#step 2: run
FROM microsoft/dotnet:aspnetcore-runtime
WORKDIR /app
COPY --from=build-stage /app/out .
#ENV SQLSERVER_CONNECTIONSTRING = 'Server=sqlserver; Database=myapp; User=sa; Password=Password_123; MultipleActiveResultSets=true;'
ENTRYPOINT dotnet frontend.dll
