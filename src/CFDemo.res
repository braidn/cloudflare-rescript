type event
type response
type eventResponse
type responseData = {hello: string}
type responseHeaders = {headers: {"Content-Type": string}}

@val external addEventListener: (string, event => eventResponse) => unit = "addEventListener"
@new external createResponse: (option<string>, responseHeaders) => response = "Response"
@send external respondWith: (event, response) => eventResponse = "respondWith"

addEventListener("fetch", event => {
  let jsonRawData = {hello: "WORLD"}
  let jsonData = Js.Json.stringifyAny(jsonRawData)
  let respHeaders = {
    headers: {
      "Content-Type": "application/json;charset=UTF-8",
    },
  }

  respondWith(event, createResponse(jsonData, respHeaders))
})
