# My dotnet grpc

This is my sample gRPC app with dotnet.

## Build

```sh
docker build -t my-dotnet-grpc .
```

You can not start ASP.Net Core gRPC app on macOS.

> // Additional configuration is required to successfully run gRPC on macOS.
> // For instructions on how to configure Kestrel and gRPC clients on macOS, visit https://go.microsoft.com/fwlink/?linkid=2099682

## Run

```sh
docker run -p 50051:80 my-dotnet-grpc
```

## Check

Install [grpcurl](https://github.com/fullstorydev/grpcurl) before checking.

```sh
grpcurl -proto Protos/greet.proto -plaintext -d '{"name": "kemokemo"}' localhost:50051 greet.Greeter/SayHello
```

Expected result:

```json
{
  "message": "Hello kemokemo"
}
```

