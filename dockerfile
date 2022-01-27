FROM mcr.microsoft.com/dotnet/aspnet:6.0 AS base
WORKDIR /app

FROM mcr.microsoft.com/dotnet/sdk:6.0 AS build
WORKDIR /src
COPY ["HelloWorldAPI.fsproj", "Api/"]
RUN dotnet restore "Api/HelloWorldAPI.fsproj"
COPY . ./Api
WORKDIR "/src/Api"
RUN dotnet build "HelloWorldAPI.fsproj" -c Release -o /app/build

FROM build AS publish
RUN dotnet publish "HelloWorldAPI.fsproj" -c Release -o /app/publish

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "HelloWorldAPI.dll"]