package devops

import scala.concurrent.duration._

import io.gatling.core.Predef._
import io.gatling.http.Predef._
import io.gatling.jdbc.Predef._

class DevOpsSimulation extends Simulation {

  private val httpProtocol = http
    .baseUrl("https://devops-project-kvjm.onrender.com")
    .inferHtmlResources(AllowList(), DenyList(""".*\.js""", """.*\.css""", """.*\.gif""", """.*\.jpeg""", """.*\.jpg""", """.*\.ico""", """.*\.woff""", """.*\.woff2""", """.*\.(t|o)tf""", """.*\.png""", """.*\.svg""", """.*detectportal\.firefox\.com.*"""))
    .acceptHeader("text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7")
    .acceptEncodingHeader("gzip, deflate, br")
    .acceptLanguageHeader("en-GB,en;q=0.9,en-US;q=0.8,he;q=0.7")
    .contentTypeHeader("application/x-www-form-urlencoded")
    .doNotTrackHeader("1")
    .originHeader("https://devops-project-kvjm.onrender.com")
    .upgradeInsecureRequestsHeader("1")
    .userAgentHeader("Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0")
  
  private val headers_0 = Map(
  		"pragma" -> "no-cache",
  		"priority" -> "u=0, i",
  		"sec-ch-ua" -> """Microsoft Edge";v="143", "Chromium";v="143", "Not A(Brand";v="24""",
  		"sec-ch-ua-mobile" -> "?0",
  		"sec-ch-ua-platform" -> "Windows",
  		"sec-fetch-dest" -> "document",
  		"sec-fetch-mode" -> "navigate",
  		"sec-fetch-site" -> "same-origin",
  		"sec-fetch-user" -> "?1"
  )


  private val scn = scenario("DevOpsSimulation")
    .exec(
      http("request_0")
        .post("/")
        .headers(headers_0)
        .formParam("username", "Shalev")
    )

	setUp(scn.inject(rampUsersPerSec(1).to(500).during(5.minutes))).protocols(httpProtocol)
}
