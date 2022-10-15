# flutter_openapi_sandbox

This is a sample of starting up a mock server from openapi (yaml file) and calling it from flutter app.

## Getting Started

This project uses fvm. Install from https://fvm.app/

### Run flutter app

```sh
$ fvm flutter pub get
$ fvm flutter run
```

### Serve mock api server

```sh
$ docker-compose up
```

running on

> http://localhost:8082

opening swagger ui

> http://localhost:8080

## Generate By openapi-generator

generate domain model and api call interfaces for dart. Install openapi-generator from https://github.com/OpenAPITools/openapi-generator

```sh
$ openapi-generator generate -i openapi.yaml -g dart -o lib/openapi
$ openapi-generator generate -i api/openapi.yml -g dart-dio -o ./api/client
$ cd api/client; fvm flutter pub get; fvm flutter packages pub run build_runner build --delete-conflicting-outputs
```
