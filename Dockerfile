FROM mcr.microsoft.com/dotnet/sdk:6.0 AS Build
COPY . /app
WORKDIR /app
RUN dotnet build -o output

FROM mcr.microsoft.com/dotnet/aspnet:6.0 AS Runtime
COPY --from=Build /app/output .
ENTRYPOINT ["dotnet", "my-dotnet-grpc.dll"]

