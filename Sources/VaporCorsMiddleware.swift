import Foundation
import Vapor
import HTTP

public class VaporCorsMiddleware: Middleware {
    public init(){}
    public func respond(to request: Request, chainingTo next: Responder) throws -> Response {
        let response = try next.respond(to: request)

        for header in request.headers{
            if header.key.key == "Origin" {
                response.headers["Access-Control-Allow-Origin"] = header.value
            }
            if header.key.key == "Access-Control-Request-Headers" {
                response.headers["Access-Control-Allow-Headers"] = header.value
            }
        }

        return response
    }
}
