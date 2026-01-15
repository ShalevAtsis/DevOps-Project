package devops

import scala.concurrent.duration._
import io.gatling.core.Predef._
import io.gatling.http.Predef._

class DevOpsSimulationLoad extends Simulation {

  private val httpProtocol = http
    .baseUrl("https://devops-project-kvjm.onrender.com")
    .acceptHeader("text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8")
    .userAgentHeader("Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36")

  private val scn = scenario("DevOps Load Test")
    .exec(
      http("POST Home")
        .post("/")
        .formParam("username", "Shalev")
        .check(status.is(200)) 
    )
    .pause(60.seconds) 

    setUp(
    scn.inject(
      rampConcurrentUsers(0).to(200).during(30.seconds),
      
      constantConcurrentUsers(200).during(2.minutes),
      
      rampConcurrentUsers(200).to(0).during(30.seconds)
    )
  ).protocols(httpProtocol)
}