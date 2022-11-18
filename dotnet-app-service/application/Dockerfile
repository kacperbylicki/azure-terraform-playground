FROM mcr.microsoft.com/dotnet/aspnet:6.0 AS base
WORKDIR /app
ENV PORT 8080
ENV ASPNETCORE_URLS "http://*:${PORT}"
EXPOSE ${PORT}

FROM mcr.microsoft.com/dotnet/sdk:6.0 AS build
WORKDIR /src
COPY ["application.csproj", "./"]
RUN dotnet restore "application.csproj"
COPY . .
WORKDIR "/src/"
RUN dotnet build "application.csproj" -c Release -o /app/build

FROM build AS publish
RUN dotnet publish "application.csproj" -c Release -o /app/publish

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "application.dll"]
