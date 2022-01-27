namespace HelloWorldAPI.Controllers

open Microsoft.AspNetCore.Mvc
open Microsoft.Extensions.Logging

[<ApiController>]
[<Route("[controller]")>]
type HelloWorldController(logger: ILogger<HelloWorldController>) =
    inherit ControllerBase()

    [<HttpGet>]
    member _.Get() : string = "hello world!"