package devops

import scala.concurrent.duration._
import io.gatling.core.Predef._
import io.gatling.http.Predef._

class DevOpsSimulationStress extends Simulation {

  private val httpProtocol = http
    .baseUrl("https://devops-project-kvjm.onrender.com")

  private val scn = scenario("DevOps Stress Test")
    .exec(
      http("POST Home")
        .post("/")
        .formParam("username", "Shalev")
    )
	.pause(1.seconds)


  setUp(
    scn.inject(
      rampConcurrentUsers(200).to(900).during(3.minutes)
    )
  ).protocols(httpProtocol)
}
