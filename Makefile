gen-openapi:
	openapi-generator generate -i api/openapi.yml -g openapi-yaml -o ./api/generated
	openapi-generator generate -i api/openapi.yml -g dart-dio -o ./api/client
	cd api/client; fvm flutter pub get; fvm flutter packages pub run build_runner build --delete-conflicting-outputs
